/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;
import java.util.Objects;

/**
 *
 * @author duvan
 */
public class Empleado {
    
    private int id;
    private String nombre;
    private String apellido;
    private String tipoDocumento;
    private String numeroDocumento;
    private String telefono;
    private Date fechaNacimiento;
    private usuario idUsuario;
    private cargo nombreCargo;

    public Empleado() {
        
    }

    public Empleado(int id, String nombre, String apellido, String tipoDocumento, String numeroDocumento, String telefono, Date fechaNacimiento, usuario idUsuario, cargo nombreCargo) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.tipoDocumento = tipoDocumento;
        this.numeroDocumento = numeroDocumento;
        this.telefono = telefono;
        this.fechaNacimiento = fechaNacimiento;
        this.idUsuario = idUsuario;
        this.nombreCargo = nombreCargo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }

    public String getNumeroDocumento() {
        return numeroDocumento;
    }

    public void setNumeroDocumento(String numeroDocumento) {
        this.numeroDocumento = numeroDocumento;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public usuario getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(usuario idUsuario) {
        this.idUsuario = idUsuario;
    }

    public cargo getNombreCargo() {
        return nombreCargo;
    }

    public void setNombreCargo(cargo nombreCargo) {
        this.nombreCargo = nombreCargo;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 31 * hash + this.id;
        hash = 31 * hash + Objects.hashCode(this.idUsuario);
        hash = 31 * hash + Objects.hashCode(this.nombreCargo);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Empleado other = (Empleado) obj;
        if (this.id != other.id) {
            return false;
        }
        if (!Objects.equals(this.nombreCargo, other.nombreCargo)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Empleado{" + "id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", tipoDocumento=" + tipoDocumento + ", numeroDocumento=" + numeroDocumento + ", telefono=" + telefono + ", fechaNacimiento=" + fechaNacimiento + ", idUsuario=" + idUsuario + ", nombreCargo=" + nombreCargo + '}';
    }

    
    
    
    
    
    
}
