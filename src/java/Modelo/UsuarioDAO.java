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
                usuario usu = new usuario();
                cargo ca = new cargo();
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
        System.out.println("Listar // UsuarioDAO: INICIO ");
        ArrayList<usuario> list = new ArrayList<>();
        ArrayList<cargo> lista = new ArrayList<>();
        String sql = "select us.IDUSUARIO AS id, us.NOMBREUSUARIO AS nombre, us.CLAVE AS clave, us.ESTADO AS estado, c.NOMBRECARGO AS cargo from usuario AS us INNER JOIN cargo AS c ON us.IDCARGO = c.IDCARGO";

        conexion cn = new conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        usuario u = new usuario();
        cargo c = new cargo();

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                usuario usu = new usuario();
                cargo ca = new cargo();
                usu.setId_usuario(rs.getInt("id"));
                usu.setNombreUsuario(rs.getString("nombre"));
                usu.setClave(rs.getString("clave"));
                usu.setEstado(rs.getBoolean("estado"));
                ca.setNombreCargo(rs.getString("cargo"));
                usu.setCargo(ca);

                list.add(usu);

            }

        } catch (Exception e) {
            System.out.println("Listar // UsuarioDAO: ERROR " + e.getMessage());
        }
        return list;
    }

    @Override
    public Modelo.usuario list(int id) {
         String sql = "select * from usuario where IDUSUARIO=" + id;
         

        conexion cn = new conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
               
              usu.setId_usuario(rs.getInt("IDUSUARIO"));
              

                

            }

        } catch (Exception e) {
            System.out.println("Listar POR ID // USUARIODAO: ERROR " + e.getMessage());
        }
        return usu;
    }

    @Override
    public boolean add(Modelo.usuario usu) {

        conexion cn = new conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        usuario u = new usuario();
        String sql = "insert into usuario(NOMBREUSUARIO,IDCARGO,CLAVE)values('" + usu.getNombreUsuario() + "', '" + usu.getCargo().getIdCargo() + "', '" + usu.getClave() + "')";

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("AGREGAR // USUARIODAO: ERROR " + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean edit(Modelo.usuario usu)  {
        conexion cn = new conexion();
        Connection con;
        PreparedStatement ps;
      
        String sql = "update usuario set NOMBREUSUARIO = '" + usu.getNombreUsuario() +  "',CLAVE = '" + usu.getClave() +  "',IDCARGO = '" + usu.getCargo().getIdCargo() +  "'where IDUSUARIO = " + usu.getId_usuario();
    try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("Editar // UsuarioDAO: ERROR " + e.getMessage());
        }
    return false;
    }

    @Override
    public boolean eliminar(int id) {
        conexion cn = new conexion();
        Connection con;
        PreparedStatement ps;
       
        String sql = "delete from usuario where IDUSUARIO=" +  id;
        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("Eliminar // UsuarioDAO: ERROR " + e.getMessage());
        }
    return false;
    }

    @Override
    public List listarCargo() {
        System.out.println("Listar CARGO // UsuarioDAO: INICIO ");

        ArrayList<cargo> lista = new ArrayList<>();
        String sql = "select * from cargo";

        conexion cn = new conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;

        try {
            con = cn.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {

                cargo ca = new cargo();
                ca.setIdCargo(Integer.parseInt(rs.getString("IDCARGO")));
                ca.setNombreCargo(rs.getString("NOMBRECARGO"));
                

                lista.add(ca);

            }

        } catch (Exception e) {
            System.out.println("ListarCargo // UsuarioDAO: ERROR " + e.getMessage());
        }
        return lista;
    }

}
