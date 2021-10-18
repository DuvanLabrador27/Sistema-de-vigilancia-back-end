<%-- 
    Document   : supervisor.jsp
    Created on : 17/10/2021, 09:38:58 PM
    Author     : duvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("supervisor") != null) {
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supervisor Perfil</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style_vilgila.css">

    </head>
    <body>
         <div class="container-fluid">
        <div class="row justify-content-center align-content-center">
            <div class="col-8 barra">
              <img  class="avatar" src="../imagenes/logoS.png" alt="">
                <h4 class="text-light">Conjunto La Macarena</h4>
            </div>
            <div class="col-4 text-right barra">
                <ul class="navbar-nav mr-auto">
                    <li>
                        <a href="#" class="px-3 text-light perfil dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user-circle user"></i></a>

                        <div class="dropdown-menu" aria-labelledby="navbar-dropdown">
                            <a class="dropdown-item menuperfil cerrar" href="UsuarioSrv?accion=cerrar"><i class="fas fa-sign-out-alt m-1"></i>Salir
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
                  <a href="supervisor.html"><ion-icon name="contact"></ion-icon> Perfil</a>
                 
                  <a href="puestoSupervisor.html"><ion-icon name="search"></ion-icon> Consultar minuta de puesto</a>
                    
                    <a href="supervisor_administracion.html"><ion-icon name="search"></ion-icon> Consultar minuta de administración</a>
                    
                    

                </nav>
            </div>
            <main class="main col">
                <div class="row justify-content-center align-content-center text-center">
                    <div class="col-md-9">
                        <div class="table-responsive">
                            <table  class="table table-hover table-striped table-condensed table-bordered">                        
                                <tbody>
                                     <tr>
                                        <th>Cargo</th>
                                        <td>${supervisor.cargo.nombreCargo}</td>
                                    </tr>
                                     <tr>
                                         <th>Tipo documento</th>
                                         <td>CC</td>
                                     </tr>
                                     <tr>
                                         <th>Documento</th>
                                         <td>1090513933</td>
                                     </tr>
                                    <tr>
                                        <th>Nombre</th>
                                        <td>${supervisor.nombreUsuario}</td>
                                    </tr>
                                     <tr>
                                         <th>Apellido</th>
                                         <td>CELIS BLANCO</td>
                                     </tr>
                                    <tr>
                                        <th>Celular</th>
                                        <td>3134257570</td>
                                    </tr>
                                    <tr>
                                        <th>Dirección</th>
                                        <td>Calle 12 # 17 a 81 Aniversario 2</td>
                                    </tr>
                                    <tr>
                                        <th>Correo Electrónico</th>
                                        <td>juandiego1303@hotmail.com</td>
                                    </tr>
                                    <tr>
                                        <th>Fecha de Ingreso</th>
                                        <td>31/07/2018</td>
                                    </tr>   
                                    <tr>
                                        <th>Estado</th>
                                        <td>Activo<br> </td>
                                    </tr>
                                   
                                </tbody>
                            </table>
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
    </body>
</html>
<%        
    } else {
        response.sendRedirect("index.jsp");
    }
%>