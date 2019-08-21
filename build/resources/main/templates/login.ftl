<!DOCTYPE html>
<html lang="es">
<meta charset="UTF-8">
<head>
    <title>${titulo}</title>
    <style>
        html{
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
        }
        /*Títulos de la página de login*/
        .titulo{
            background-color: #495057;
            text-align: center;
            padding: 10px;
            height: 50%;
            width: 40%;
            margin: auto;
            color:#fff;
        }
        /*Contenido del formulario de login*/
        .loginContainer {
            padding: 50px;
            height: 30%;
            width: 30%;
            margin: auto;
        }
        /*Campos del formulario*/
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 10px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        /*Botón de registrar*/
        button {
            background-color: #007bff;
            color: #fff;
            padding: 12px 20px;
            margin: 10px 0 ;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            opacity: 0.8;
            color: whitesmoke;
        }
    </style>
</head>
<body>
<div class="titulo">
    <h1>Blog </h1>
    <h3> Log In</h3>
</div>
<form action="/procesarUsuario" method="post">
    <div class="loginContainer">
        <label><b>Username</b></label>
        <input type="text" name="username" placeholder="Your username" required>

        <label><b>Password</b></label>
        <input type="password" name="password" placeholder="Your password"  required>

        <button type="submit">Entrar</button>
        <label>
            <input type="checkbox" name="recordar"> Remember me
        </label>
    </div>
</form>
</body>
</html>