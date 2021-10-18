/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author duvan
 */
public class comprobar {
    
    public static void main(String[] args) {
        conexion c =new conexion();
        if(c.conectar() !=null){
        
            System.out.println("La conexion es correcta");
        
        }else{
            System.out.println("Conexion incorrecta");
        }
    }
    
}
