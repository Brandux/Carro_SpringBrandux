/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.model;

import java.sql.Blob;

/**
 *
 * @author Brandukosky
 */
public class ClienteDTO {
     private int idCliente;
     private String nombre , apellido , direccion;
     private String fecha_n , email , celular , user, pass ;
     private Blob img ;
     private int idRol;

    public ClienteDTO() {
    }

    public ClienteDTO(int idCliente, String nombre, String apellido, String direccion, String fecha_n, String email, String celular, String user, String pass, Blob img, int idRol) {
        this.idCliente = idCliente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.direccion = direccion;
        this.fecha_n = fecha_n;
        this.email = email;
        this.celular = celular;
        this.user = user;
        this.pass = pass;
        this.img = img;
        this.idRol = idRol;
    }

    public ClienteDTO(String nombre, String apellido, String direccion, String fecha_n, String email, String celular, String user, String pass, Blob img, int idRol) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.direccion = direccion;
        this.fecha_n = fecha_n;
        this.email = email;
        this.celular = celular;
        this.user = user;
        this.pass = pass;
        this.img = img;
        this.idRol = idRol;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
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

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getFecha_n() {
        return fecha_n;
    }

    public void setFecha_n(String fecha_n) {
        this.fecha_n = fecha_n;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public Blob getImg() {
        return img;
    }

    public void setImg(Blob img) {
        this.img = img;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }
     
     
}
