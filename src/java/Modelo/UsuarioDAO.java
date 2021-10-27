/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Interfaces.CRUD;
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
public class UsuarioDAO extends conexion implements CRUD {

    public usuario identificar(usuario user) throws Exception {
        usuario usu = null;
        conexion con;
        Connection cn = null;
        Statement st = null;
        ResultSet rs = null;
        String sql = "SELECT U.IDUSUARIO, C.NOMBRECARGO FROM USUARIO U "
                + "INNER JOIN CARGO C ON U.IDCARGO = C.IDCARGO "
                + "WHERE U.ESTADO = 1 AND U.NOMBREUSUARIO = '" + user.getNombreUsuario() + "' "
                + "AND U.CLAVE = '" + user.getClave() + "'";
        con = new conexion();
        try {
            cn = con.conectar();
            st = cn.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next() == true) {
                usu = new usuario();
                usu.setId_usuario(rs.getInt("IDUSUARIO"));
                usu.setNombreUsuario(user.getNombreUsuario());
                usu.setCargo(new cargo());
                usu.getCargo().setNombreCargo(rs.getString("NOMBRECARGO"));
                usu.setEstado(true);
            }
        } catch (Exception e) {
            System.out.println("Error" + e.getMessage());
        } finally {
            if (rs != null && rs.isClosed() == false) {
                rs.close();
            }
            rs = null;
            if (st != null && st.isClosed() == false) {
                st.close();

            }
            st = null;
            if (cn != null & cn.isClosed() == false) {
                cn.close();

            }
            cn = null;
        }
        return usu;
    }

    @Override
    public List listar() {
        ArrayList<usuario> list = new ArrayList<>();
        ArrayList<cargo> lista = new ArrayList<>();
        String sql = "select * from usuario";
       
        conexion cn = new conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        usuario u = new usuario();
        cargo c=new cargo();
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
           rs= ps.executeQuery();
           
           while(rs.next()){
           usuario usu = new usuario();
             cargo ca=new cargo();
           
           usu.setId_usuario(rs.getInt("IDUSUARIO"));
           usu.setNombreUsuario(rs.getString("NOMBREUSUARIO"));
        
           
          
           list.add(usu);
         
        
           
           
           }

        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Modelo.usuario list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Modelo.usuario usu) {

        conexion cn = new conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        usuario u = new usuario();
        String sql = "insert into usuario(NOMBREUSUARIO)values('" + usu.getNombreUsuario() + "')";
       
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {

        }
        return false;
    }

    @Override
    public boolean edit(Modelo.usuario usu) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}