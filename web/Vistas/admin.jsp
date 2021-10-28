<%-- 
    Document   : admin.jsp
    Created on : 17/10/2021, 09:27:54 PM
    Author     : duvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("usuario") != null) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Administrador</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="./css/style_vilgila.css">
        <link rel="stylesheet" href="./css/carrusel.css">
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"
            />
        <link
            rel="stylesheet"
            href=" https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css"
            />

    </head>
    <body>
        <div class="container-fluid">
            <div class="row justify-content-center align-content-center">
                <div class="col-8 barra">
                    <img  class="avatar" src="./imagenes/logoS.png" alt="">
                    <h4 class="text-light">Conjunto La Macarena</h4>
                </div>
                <div class="col-4 text-right barra">
                    <ul class="navbar-nav mr-auto">
                        <li>
                            <a href="#" class="px-3 text-light perfil dropdown-toggle z-100" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user-circle user"></i></a>

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
                <div class="barra-lateral col-12 col-sm-auto ">
                    <nav class="menu d-flex d-sm-block justify-content-center flex-wrap">
                        <a href="./srvPerfil?accion=perfilAdmin" id="admin-tabla"><ion-icon name="contact"></ion-icon> Perfil</a>
                        <a href="./srvPersonal?accion=add"><ion-icon name="add-circle"></ion-icon> Agregar Personal</a>
                        <a href="./srvPersonal?accion=listar"><ion-icon name="contact"></ion-icon> Consultar personal</a>

                        <a href="adminPuesto.html"><ion-icon name="search"></ion-icon> Consultar minuta de puesto</a>

                        <a href="adminVisitante.html"><ion-icon name="search"></ion-icon> Consultar minuta de visitante</a>

                        <a href="admin_consulta.html"><ion-icon name="search"></ion-icon> Consultar minuta de administración</a>
                       
                    </nav>
                </div>
                <main class="main col">
                    <div class="row justify-content-center align-content-center text-center">
                        <div class="columna col-lg-12">

                            <div id="contenido">


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
        <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

        <script>
            $(document).ready(function () {
                $("#tabla").DataTable();
            });
        </script>

    </body>
</html>
<%        
    } else {
        response.sendRedirect("index.jsp");
    }
%>
