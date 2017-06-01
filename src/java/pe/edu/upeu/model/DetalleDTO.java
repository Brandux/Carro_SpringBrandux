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
public class DetalleDTO {
    private int idDetalle;
    private int idVenta;
    private int idProducto;

    public DetalleDTO() {
    }

    public DetalleDTO(int idDetalle, int idVenta, int idProducto) {
        this.idDetalle = idDetalle;
        this.idVenta = idVenta;
        this.idProducto = idProducto;
    }

    public DetalleDTO(int idVenta, int idProducto) {
        this.idVenta = idVenta;
        this.idProducto = idProducto;
    }

    public int getIdDetalle() {
        return idDetalle;
    }

    public void setIdDetalle(int idDetalle) {
        this.idDetalle = idDetalle;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }
    
    
}
