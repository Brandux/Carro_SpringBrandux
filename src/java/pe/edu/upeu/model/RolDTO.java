/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.model;

/**
 *
 * @author Brandukosky
 */
public class RolDTO {
    private int idRol;
    private String nombre;

    public RolDTO() {
    }

    public RolDTO(int idRol, String nombre) {
        this.idRol = idRol;
        this.nombre = nombre;
    }

    public RolDTO(String nombre) {
        this.nombre = nombre;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
