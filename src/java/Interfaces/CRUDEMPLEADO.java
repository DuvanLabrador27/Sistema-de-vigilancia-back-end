/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.Empleado;
import java.util.List;
import Modelo.usuario;
import Modelo.UsuarioDAO;
/**
 *
 * @author duvan
 */
public interface CRUDEMPLEADO {
       public List listar();
       public Empleado list(int id );
}
