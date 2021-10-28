/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;


import Modelo.usuario;
import java.util.List;

/**
 *
 * @author duvan
 */
public interface CRUD {
    
    public List listar();
    public usuario list(int id);
    public List listarCargo();
   
    public boolean add(usuario usu);
    public boolean edit(usuario usu);
    public boolean eliminar(int id);
        
}
