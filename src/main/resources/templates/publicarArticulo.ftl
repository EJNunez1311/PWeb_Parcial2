<!DOCTYPE html>
<html lang="es">


<head>
    <!-- bootstrap core css -->
    <link href="/vendor/bootstrap/css/bootstrap.css" rel="stylesheet"/>

    <!-- custom styles for this template -->
    <link href="/css/blog-home.css" rel="stylesheet"/>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${titulo}</title>

    <style>
        .editorcontainer{
            border-radius: 5px;
            background-color: aliceblue;
            padding: 20px;
            width: 100%;
        }
        button {
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            width: 20%;
        }
        input[type=text]{
            width: 50%;
            border: 1px solid lightgray;
            border-radius: 4px;
            font-style: italic;
            padding: 2px;
        }
        textarea {
            width: 70%;
            border: 1px solid lightgray;
            border-radius: 4px;
        }
        .element {
            float: left;
            width: 75%;
            margin-top: 6px;
        }
        .tags{
            width: 50%;
        }

    </style>

</head>

<body>
<br>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/">Blog de Articulos</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Inicio
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <#if logUser??>
                    <#if logUser.administrador || logUser.autor>
                        <li class="nav-item">
                            <a class="nav-link" href="/publicarArticulo">Articulos</a>
                        </li>
                    </#if>
                </#if>

                <#if logUser??>
                    <#if logUser.administrador>
                        <li class="nav-item">
                            <a class="nav-link" href="/listaUsuarios">Gestionar Usuarios</a>
                        </li>
                    </#if>
                </#if>
                <#if logUser??>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Cerrar sesion</a>
                    </li>
                <#else>
                    <li class="nav-item">
                        <a class="nav-link" href="/iniciarSesion">Iniciar sesion</a>
                    </li>
                </#if>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <div class="row">
        <!-- Blog Entries Column -->
        <div class="col-md-8">
            <h1 class="my-4">Publicar Articulo</h1>
        </div>
        <div class="editorContainer">
            <form method="post" action="/procesarArticulo">
                <div>
                    <div class="element">
                        <label><b>Titulo</b></label>
                    </div>
                    <div class="element">
                        <input type="text" name="title">
                    </div>
                </div>
                <div>
                    <div class="element">
                        <textarea name="cuerpo"  type="text" placeholder="Escribe aqui..." style="height:200px"></textarea>
                    </div>
                </div>
                <div class="element">
                    <label><b>Tags</b></label>
                </div>
                <div class="tags">
                    <input type="text" name="etiquetas">
                </div>
                <br>
                <div class="element">
                    <button type="submit">Publicar</button>
                </div>
            </form>
        </div>
    </div>
</div>
<br>
<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Edgar Website 2019</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>