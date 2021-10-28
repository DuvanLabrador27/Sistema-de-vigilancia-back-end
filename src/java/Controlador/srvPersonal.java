/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.UsuarioDAO;
import Modelo.cargo;
import Modelo.usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author duvan
 */
@WebServlet(name = "srvPersonal", urlPatterns = {"/srvPersonal"})
public class srvPersonal extends HttpServlet {
String listar="Vistas/tabla.jsp";
String add="Vistas/formulario_personal.jsp";
String volverAdmin = "Vistas/admin.jsp";
    usuario  usu =new usuario();
   UsuarioDAO u=new UsuarioDAO();

 


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
        acceso=listar;
        }else if(action.equalsIgnoreCase("add")){
        acceso=add;
        }else if(action.equalsIgnoreCase("Agregar")){
            cargo c =new cargo();
         String nombre =  request.getParameter("txt_nombre");
         usu.setNombreUsuario(nombre);
         String clave = request.getParameter("txt_clave");
         usu.setClave(clave);
         String cargo = request.getParameter("cargo");
         c.setIdCargo(Integer.parseInt(cargo));
         
         String estado = request.getParameter("estado");
         usu.setEstado(Boolean.parseBoolean(estado));
         usu.setCargo(c);
         
         u.add(usu);
         acceso=listar;
        }else if(action.equalsIgnoreCase("volver")){
        
            acceso=volverAdmin;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         processRequest(request, response);
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}



    
