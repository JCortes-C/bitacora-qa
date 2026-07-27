
Feature: Búsqueda de productos en Amazon

    Scenario: Búsqueda exitosa de un producto
        Given que el usuario se encuentra en la página principal de Amazon
            And el buscador de productos está disponible
        When el usuario escribe "Audífonos Bluetooth" en el buscador
            And hace clic en el botón de búsqueda
        Then el sistema muestra una lista de productos relacionados
            And cada resultado muestra el nombre, precio e imagen del producto

    
    Scenario: Búsqueda de un producto inexistente
        Given que el usuario se encuentra en la página principal de Amazon
        When el usuario busca "Camioneta GTRx"
        Then el sistema informa que no se encontraron resultados
            And sugiere realizar otra búsqueda o revisar la ortografía