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
public class usuario {
    
    private int id_usuario;
    private String nombreUsuario;
    private String clave;
    private boolean estado;
    private cargo cargo;
    private cargoEnum cargoEnum;

    public usuario() {
        
    }

    public usuario(int id_usuario, String nombreUsuario, String clave, boolean estado, cargo cargo, cargoEnum cargoEnum) {
        this.id_usuario = id_usuario;
        this.nombreUsuario = nombreUsuario;
        this.clave = clave;
        this.estado = estado;
        this.cargo = cargo;
        this.cargoEnum = cargoEnum;
    }
    
    
    
    
    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public cargo getCargo() {
        return cargo;
    }

    public void setCargo(cargo cargo) {
        this.cargo = cargo;
    }

    public cargoEnum getCargoEnum() {
        return cargoEnum;
    }

    public void setCargoEnum(cargoEnum cargoEnum) {
        this.cargoEnum = cargoEnum;
    }
    
    
    
    
    
    
}
