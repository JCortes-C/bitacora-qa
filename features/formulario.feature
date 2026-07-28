Feature: Validación de formulario de registro

    Scenario Outline: Validación del formulario de registro
        Given que el usuario se encuentra en la página de registro
        When ingresa el nombre "<nombre>"
            And ingresa el correo "<email>"
            And ingresa la contraseña "<contrasena>"
            And hace clic en el botón "Registrarse"
        Then el sistema <resultado>

    Examples:
        | nombre | email                      | contrasena | resultado                                                |
        |        |                            |            | muestra mensajes indicando que los campos son obligatorios |
        | Juan   | jesuscortes@gmail.com      | 12345678   | informa que el correo electrónico no es válido            |
        | Juan   | juan@email.com             | 12345678   | registra al usuario correctamente                         |