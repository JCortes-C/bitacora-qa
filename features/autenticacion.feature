Feature: Autenticación de usuario

    Scenario: Login exitoso 
        Given el usuario está en la página de login 
        And el usuario tiene una cuenta activa valida
        when el usuario ingresa correo
        And el usuario ingresa contraseña
        And hace clic en el botón de "Iniciar sesión"
        Then el usuario es redirigido a la página de inicio
        And El usuario ve un mensaje de bienvenida con su nombre

    
    Scenario: Login fallido con contraseña incorrecta
        Given el usuario está en la página de login 
        when ingresa email "jesuscortes@.com"
        And ingresa contraseña "incorrecta"
        And hace clic en el botón de "Iniciar sesión"
        Then el usuario ve un mensaje de error indicando que la contraseña es incorrecta
        And el usuario permanece en la página de login
        
        
