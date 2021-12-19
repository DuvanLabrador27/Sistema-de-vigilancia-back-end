<%-- 
    Document   : index.jsp
    Created on : 17/10/2021, 05:04:14 PM
    Author     : duvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>ppppppppppppppppppppppppppppppppppp
<html>ppppppppppppppppp
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sistema De Vigilancia</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/style.css">
    </head>
    <body>

        <div class="login-box">
            <img class="avatar" src="./imagenes/logoS.png" alt="">
            <h1>Conjunto La Macarena</h1>
            <form action="./srvUsuario?accion=verificar" method="POST">
                
               
                
                <label>Nombre usuario</label>
                <input type="text" name="txtUsu" id="txt_user" placeholder="Usuario" required>
                <label>Contraseña</label>
                <input type="password" name="txtPass" id="txt_pass" placeholder="******" required>


                <input type="submit" name="verificar" value="Verificar" class="btn btn-danger btn-block"/>
                <a href="Vistas/recuperarContrasena.jsp">Olvidaste tu contraseña?</a>


            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
