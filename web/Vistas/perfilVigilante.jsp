<%-- 
    Document   : perfilVigilante.jsp
    Created on : 17/10/2021, 07:01:34 PM
    Author     : duvan
--%>

<%@page import="Modelo.usuario"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Empleado"%>
<%@page import="Modelo.EmpleadoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("vigilante") != null) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="./css/style_vilgila.css">

        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"
            />
        <link rel="stylesheet" href="./css/tabla-personal.css">
        <link
            rel="stylesheet"
            href=" https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap4.min.css"
            />
        <title>Perfil Vigilante</title>
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
                        <a  href="./srvPerfil?accion=volver"
                            ><ion-icon name="arrow-round-back"></ion-icon> Volver a
                            vigilante</a>


                    </nav>
                </div>
                <main class="main col">
                    <h1 style="text-align: center;" class="mt-1 mb-3">Perfil usuario ${vigilante.nombreUsuario} </h1>


                    <div class="row justify-content-center align-content-center text-center">
                        <div class="columna col-lg-12">
                            <table
                                id="tabla"
                                class="table table-striped table-bordered"
                                style="width: 100%"
                                >
                                <thead>
                                    <tr>
                                        <th>Id de usuario</th>
                                        <th>Nombre de usuario</th>
                                      
                                        <th>Estado del usuario</th>
                                        <th>Cargo del usuario</th>


                                    </tr>
                                </thead>
                             
                             
                                <tbody>

                                    <tr>
                                        <td>${vigilante.id_usuario} </td>
                                        <td>${vigilante.nombreUsuario} </td>
                                        
                                       <td>${vigilante.estado}</td>
                                        <td>${vigilante.cargo.nombreCargo}</td>

                                      

                                    </tr>
                                 
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <script
            src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
        <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/646c794df3.js"></script>
        <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
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