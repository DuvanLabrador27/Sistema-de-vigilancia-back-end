<%-- 
    Document   : tabla.jsp
    Created on : 17/10/2021, 06:57:23 PM
    Author     : duvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla-Personal</title>
   
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/tabla-personal.css">
    <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
  />
  <link rel="stylesheet" href="../css/style_vilgila.css" />
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
       <table
                id="tabla"
                class="table table-striped table-bordered"
                style="width: 100%"
              >
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Cargo</th>
                       
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody>

                    <tr>
                        <td> ${usuario.nombreUsuario} </td>
                        <td>{usuario.cargo.nombreCargo}</td>

                       <td><a href="#"><img src="https://img.icons8.com/material-outlined/24/000000/edit--v1.png"></a></td>
                        <td><a href="#"><img src="https://img.icons8.com/material-outlined/24/000000/delete-forever.png"></a></td>
                        
                    </tr>
                    <tr>
                       <td>Sebastian Ovallos</td>
                       <td>Vigilante</td>
                   
                       <td><a href="#"><img src="https://img.icons8.com/material-outlined/24/000000/edit--v1.png"></a></td>
                        <td><a href="#"><img src="https://img.icons8.com/material-outlined/24/000000/delete-forever.png"></a></td>
                   </tr>
                   <tr>
                       <td>Juan Celis</td>
                       <td>Vigilante</td>
                     
                       <td><a href="#"><img src="https://img.icons8.com/material-outlined/24/000000/edit--v1.png"></a></td>
                        <td><a href="#"><img src="https://img.icons8.com/material-outlined/24/000000/delete-forever.png"></a></td>
                   </tr>
                </tbody>
              </table>
              
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
