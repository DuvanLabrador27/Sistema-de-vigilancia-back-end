<%-- 
    Document   : tablaAdministracion.jsp
    Created on : 17/10/2021, 10:09:00 PM
    Author     : duvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla Administrador</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/style_vilgila.css">

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
        <main class="main col">
        <div class="row justify-content-center align-content-center text-center">
            <div class="columna col-lg-12">
                <div class="table-responsive">
                    <table  class="table table-hover table-striped table-condensed table-bordered">                        
                        <tbody>
                             <tr>
                                <th>Cargo</th>
                                <td>${vigilante.cargo.nombreCargo}</td>
                            </tr>
                             <tr>
                                 <th>Tipo documento</th>
                                 <td>CC</td>
                             </tr>
                             <tr>
                                 <th>Documento</th>
                                 <td>1004998372</td>
                             </tr>
                            <tr>
                                <th>Nombre</th>
                                <td>${supervisor.nombreUsuario}</td>
                            </tr>
                             <tr>
                                 <th>Apellido</th>
                                 <td>Labrador</td>
                             </tr>
                            <tr>
                                <th>Celular</th>
                                <td>3228313345</td>
                            </tr>
                            <tr>
                                <th>Dirección</th>
                                <td>conjunto la macarena</td>
                            </tr>
                            <tr>
                                <th>Correo Electrónico</th>
                                <td>carlosduvanlh@ufps.edu.co</td>
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
    </main>
    </body>
</html>
