<%-- 
    Document   : formulario_personal.jsp
    Created on : 22/10/2021, 12:26:55 PM
    Author     : duvan
--%>

<%@page import="Modelo.cargo"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.usuario"%>
<%@page import="Modelo.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("usuario") != null) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Personal</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="./css/style_vilgila.css">
        <link rel="stylesheet" href="./css/formvisitante.css">

        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            />

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
                            <a href="#" class="px-3 text-light perfil dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user-circle user"></i></a>

                            <div class="dropdown-menu" aria-labelledby="navbar-dropdown">
                                <a class="dropdown-item menuperfil cerrar" href="./srvPersonal?accion=cerrar"><i class="fas fa-sign-out-alt m-1"></i>Salir
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
                        <a  href="./srvPersonal?accion=volver"
                            ><ion-icon name="arrow-round-back"></ion-icon> Volver a
                            administrador</a>


                    </nav>
                </div>
                <main class="main col">
                    <div class="row justify-content-center align-content-center text-left">
                        <div class="col-md-9">
                            <div class="table-responsive">
                                <div class="container">
                                    <main>
                                        <div>
                                            <h2 class="tituloV mb-3">Agregar Personal</h2>
                                        </div>
                                        <form action="./srvPersonal" method="POST" id="form2">

                                            <label for="nombre" class="label1">Nombre</label>   
                                            <input type="text" name="txt_nombre" class="form-control mb-3" placeholder="Nombre" />

                                            <label for="CLAVE" class="label1">Clave</label>   
                                            <input type="text" name="txt_clave" class="form-control mb-3" placeholder="******" />

                                            <!---  <label for="estado" class="label1">Estado</label>   
                                             <input type="text" name="estado" class="form-control mb-3" placeholder="Activo" />--->

                                            <label for="nombre" class="label1 ">Cargo</label>
                                            <select class="form-control label1 mb-3" name="cargo" >

                                                <%
                                                    UsuarioDAO dao = new UsuarioDAO();
                                                    List<cargo> list = dao.listarCargo();
                                                    Iterator<cargo> iter = list.iterator();
                                                    cargo ca = null;

                                                    while (iter.hasNext()) {
                                                        ca = iter.next();

                                                        if (ca.getIdCargo() == 2   | ca.getIdCargo() == 3) {

                                                %>
                                                <option value="<%= ca.getIdCargo()%>"><%= ca.getNombreCargo()%></option>

                                                <%}
                                                    }%>


                                            </select>

                                            <input type="submit" name="accion" value="Agregar" class="btn btn-danger btn-block"/>
                                        </form>


                                    </main>
                                </div>
                            </div>        
                        </div>        
                    </div>

            </div>

        </main>
    </div>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
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
