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
public class cargo {
    
    private int idCargo;
    private String nombreCargo;
    private boolean estado;

    public cargo() {
    }

    public cargo(int idCargo, String nombreCargo, boolean estado) {
        this.idCargo = idCargo;
        this.nombreCargo = nombreCargo;
        this.estado = estado;
    }

    public int getIdCargo() {
        return idCargo;
    }

    public void setIdCargo(int idCargo) {
        this.idCargo = idCargo;
    }

    public String getNombreCargo() {
        return nombreCargo;
    }

    public void setNombreCargo(String nombreCargo) {
        this.nombreCargo = nombreCargo;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
    
    
    
}
