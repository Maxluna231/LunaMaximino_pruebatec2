
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="./css/styles.css"/>
     
    </head>
    <body>
        <div class="login">
            <div class="login-screen">
                <div class="app-title">
                    <h1>Bienvenido</h1>
                </div>

                <div class="login-form">
                    <div class="control-group">
                        <input type="text" class="login-field" value="" placeholder="Correo" id="login-name">
                        <label class="login-field-icon fui-user" for="login-name"></label>
                    </div>

                    <div class="control-group">
                        <input type="password" class="login-field" value="" placeholder="Contraseña" id="login-pass">
                        <label class="login-field-icon fui-lock" for="login-pass"></label>
                    </div>

                    <a class="btn btn-primary btn-large btn-block" href="#">Iniciar Sesión</a>
                    
                </div>
            </div>
        </div>
        <!-- Scripts de Bootstrap -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </body>
</html>
