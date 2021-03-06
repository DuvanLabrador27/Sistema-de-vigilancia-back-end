<%-- 
    Document   : vigilante.jsp
    Created on : 17/10/2021, 06:54:48 PM
    Author     : duvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("vigilante") != null) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Vigilante</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="./css/style_vilgila.css">
        <link rel="stylesheet" href="./css/carrusel.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row justify-content-center align-content-center">
                <div class="col-8 barra">
                    <img  class="avatar" src="./imagenes/logoS.png" alt="">
                    <h4 class="text-light">Conjunto La Macarena</h4>
                </div>
                <div class="col-4 text-right barra z-100">
                    <ul class="navbar-nav mr-auto">
                        <li>
                            <a href="#" class="px-3 text-light perfil dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user-circle user"></i></a>

                            <div class="dropdown-menu" aria-labelledby="navbar-dropdown">
                                <a class="dropdown-item menuperfil cerrar" href="./srvUsuario?accion=cerrar"><i class="fas fa-sign-out-alt m-1"></i>Salir
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="barra-lateral col-12 col-sm-auto">
                    <nav class="menu d-flex d-sm-block justify-content-center flex-wrap">
                       
                        <a href="./srvPerfil?accion=perfil" id="admin-tabla"><ion-icon name="contact"></ion-icon> Perfil</a>
                     <!--  <a href="./srvEmpleadoVigilante?accion=formularioE" ><ion-icon name="document"></ion-icon>Formulario Perfil</a>-->
                        <a href="formulario_Puesto.html"><ion-icon name="add-circle"></ion-icon> Agregar observaci??n de puesto</a>

                        <a href="formulario_visitante.html" id="visitante"><ion-icon name="add-circle"></ion-icon> Agregar observaci??n de visitante</a>
                        <a href="formulario_Administracion.html"><ion-icon name="add-circle"></ion-icon> Agregar observaci??n de administraci??n</a>
                        <a href="consulta_Vigilante.html"><ion-icon name="search"></ion-icon> Consultar minuta de puesto</a>
                        <a href="tabla_visitante.html"><ion-icon name="search"></ion-icon> Consultar minuta de visitante</a>

                        <a href="tabla_Administracion.html"><ion-icon name="search"></ion-icon> Consultar minuta de administraci??n</a>
                        
                    </nav>
                </div>
                <main class="main col">
                    <div class="row justify-content-center align-content-center text-center">
                        <div class="columna col-lg-12">
                            <div id="contenido-2">
                                <div class="mx-auto mt-2">
                                    <h2>Bienvenido </h2>
                                    <div class="row">
                                        <div class="col">
                                            <div id="carouselExampleDark" class="carousel carousel-dark slide w-100" data-bs-ride="carousel">
                                                <div class="carousel-indicators">
                                                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                                    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>

                                                </div>
                                                <div class="carousel-inner">
                                                    <div class="carousel-item active" data-bs-interval="1000">
                                                        <img src="./imagenes/presentacion.jpg" alt="" class="d-block w-400px mx-auto">
                                                    </div>
                                                    <div class="carousel-item" data-bs-interval="2000">
                                                        <img src="./imagenes/presentacion1.jpg" alt="" class="d-block w-400px mx-auto">
                                                    </div>
                                                    <div class="carousel-item">
                                                        <img src="./imagenes/presentacion2.jpg" alt="" class="d-block w-400px mx-auto">
                                                    </div>

                                                    <div class="carousel-item">
                                                        <img src="./imagenes/fon1.jpg" alt="" class="d-block w-400px mx-auto">
                                                    </div>

                                                </div>
                                                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                    <span >Previous</span>
                                                </button>
                                                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                    <span >Next</span>
                                                </button>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                </main>
            </div>
        </div>





        <script
            src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/646c794df3.js"></script>
        <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
        <script src="./js/mostrarActualizacion.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

    </body>
</html>
<%        
    } else {
        response.sendRedirect("index.jsp");
    }
%>
