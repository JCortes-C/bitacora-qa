Feature: Búsqueda de productos en Amazon

    # Este archivo valida el comportamiento de la búsqueda de productos
    # para diferentes tipos de consultas realizadas por el usuario.

    Background:
        Given que el usuario se encuentra en la página principal de Amazon
        And el buscador de productos está disponible

    @humo
    Scenario: Búsqueda exitosa de un producto
        When el usuario escribe "Audífonos Bluetooth" en el buscador
        And hace clic en el botón de búsqueda
        Then el sistema muestra una lista de productos relacionados
        And cada resultado muestra el nombre, precio e imagen del producto

    @regresion
    Scenario: Búsqueda de un producto inexistente
        When el usuario escribe "Camioneta GTRx" en el buscador
        And hace clic en el botón de búsqueda
        Then el sistema informa que no se encontraron resultados
        And sugiere realizar otra búsqueda o revisar la ortografía

    @critico
    Scenario Outline: Validación de diferentes búsquedas
        When el usuario escribe "<producto>" en el buscador
        And hace clic en el botón de búsqueda
        Then el sistema <resultado>

    Examples:
        | producto              | resultado                                                        |
        | Audífonos Bluetooth   | muestra una lista de productos relacionados                     |
        | Laptop Lenovo         | muestra una lista de productos relacionados                     |
        |                       | informa que debe ingresar un término de búsqueda                |
        | @#$%&*                | informa que no se encontraron resultados o que la búsqueda no es válida |