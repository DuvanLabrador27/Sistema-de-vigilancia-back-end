/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Interfaces.CRUDEMPLEADO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author duvan
 */
public class EmpleadoDAO extends conexion implements CRUDEMPLEADO {

   

   
    
    @Override
    public List listar() {
        System.out.println("Listar // EmpleadoDAO: INICIO ");
        ArrayList<Empleado> list = new ArrayList<>();
        
        String sql = "select * from empleado";
        conexion cn = new conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
System.out.println("Listar // EmpleadoDAO: SENTENCIA_PREPARADA " + sql);
       
   

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            Empleado e = new Empleado();
             e.setNombre("ll");
             
             while(rs.next()){
                 
                
            Empleado emp = new Empleado();
           
                 System.out.println(rs.getInt("IDEMPLEADO"));
                 System.out.println(rs.getString("NOMBRE"));
                 System.out.println(rs.getString("APELLIDOS"));
                 
            emp.setId(rs.getInt("IDEMPLEADO"));
            emp.setNombre(rs.getString("NOMBRE"));
            emp.setApellido(rs.getString("APELLIDOS"));
            emp.setTelefono(rs.getString("TELEFONO"));
            emp.setFechaNacimiento(rs.getDate("FECHANACIMIENTO"));
            emp.setTipoDocumento(rs.getString("TIPODOCUMENTO"));
            emp.setNumeroDocumento(rs.getString("NUMERODOCUMENTO"));
             System.out.println("Listar // EmpleadoDAO: CONSULTA_EXITOSA " + emp.toString());
            list.add(emp);
            
             }
        }catch (Exception e) {
            System.out.println("Listar // EmpleadoDAO: ERROR "+ e.getMessage());
        }
        
         System.out.println("Listar // EmpleadoDAO: FIN " + list.size());
        return list;
    }

    @Override
    public Empleado list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
