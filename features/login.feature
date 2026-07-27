
Feature: Login de usuario 

    Scenario: Login exitoso con credenciales válidas
        Given el usuario está en la página de login 
        And el usuario tiene una cuenta activa valida
        when el usuario ingresa correo y contraseña
        And hace clic en el botón de "Iniciar sesión"
        Then el usuario es redirigido a la página de inicio
        And Su nombre se muestra en el encabezado de la página
