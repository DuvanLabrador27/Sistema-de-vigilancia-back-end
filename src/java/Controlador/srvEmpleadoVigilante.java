/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import Modelo.UsuarioDAO;
import Modelo.usuario;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author duvan
 */
@WebServlet(name = "srvEmpleadoVigilante", urlPatterns = {"/srvEmpleadoVigilante"})
public class srvEmpleadoVigilante extends HttpServlet {
   String formularioE="Vistas/formulario_empleado.jsp";
 
String volverVigilante = "Vistas/vigilante.jsp";
String volverAdmin = "Vistas/admin.jsp";
    Empleado  emp =new Empleado();
   EmpleadoDAO e=new  EmpleadoDAO();

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
        String  acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("formularioE")){
            acceso=formularioE;
        }else if(action.equalsIgnoreCase("formularioA")){
        
            
        }else if(action.equalsIgnoreCase("volver")){
        
            acceso=volverVigilante;
        }else if(action.equalsIgnoreCase("volverAdmin")){
        
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
