
Feature: Registro de usuarios

  Scenario: Registro exitoso con datos válidos
    Given que el usuario se encuentra en la página de registro
    When ingresa un nombre válido "Jesus Cortes"
      And ingresa un correo electrónico que no existe "jesuscortes@.com"
      And ingresa una contraseña válida "123456"
      And hace clic en el botón "Registrarse"
    Then el sistema crea la cuenta correctamente
      And muestra el mensaje "Registro exitoso"




 Scenario: Registro fallido por correo electrónico existente
    Given que el usuario se encuentra en la página de registro
    When ingresa un nombre válido "Jesus Cortes"
      And ingresa un correo electrónico ya registrado "jesuscortes@.com"
      And ingresa una contraseña válida "123456"
      And hace clic en el botón "Registrarse"
    Then el sistema rechaza el registro
      And muestra el mensaje "El correo electrónico ya está registrado"


Scenario: Registro fallido por campos obligatorios vacíos
    Given que el usuario se encuentra en la página de registro
    When deja vacíos los campos obligatorios
      And hace clic en el botón "Registrarse"
    Then el sistema no permite el registro
      And muestra mensajes indicando que los campos son obligatorios