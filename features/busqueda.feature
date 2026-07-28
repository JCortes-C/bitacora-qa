
Feature: Búsqueda de productos en Amazon

    Scenario Outline: Búsqueda de productos
        Given que el usuario se encuentra en la página principal de Amazon
            And el buscador de productos está disponible
        When el usuario escribe '<producto>' en el buscador
            And hace clic en el botón de búsqueda
       Then el sistema <resultado>

        Examples:
           | producto               | resultado                                                        |
           | Audífonos Bluetooth    | muestra una lista de productos relacionados                     |
           | Laptop Lenovo          | muestra una lista de productos relacionados                     |
           |  " "                   | informa que debe ingresar un término de búsqueda                |
           | @#$%&*                 | informa que no se encontraron resultados o que la búsqueda no es válida |

    
    Scenario: Búsqueda de un producto inexistente
        Given que el usuario se encuentra en la página principal de Amazon
        When el usuario busca "Camioneta GTRx"
        Then el sistema informa que no se encontraron resultados
            And sugiere realizar otra búsqueda o revisar la ortografía