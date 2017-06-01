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
public class VentaDTO {
    private int idVenta;
    private String fecha_v;
    private int idCliente;

    public VentaDTO() {
    }

    public VentaDTO(int idVenta, String fecha_v, int idCliente) {
        this.idVenta = idVenta;
        this.fecha_v = fecha_v;
        this.idCliente = idCliente;
    }

    public VentaDTO(String fecha_v, int idCliente) {
        this.fecha_v = fecha_v;
        this.idCliente = idCliente;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public String getFecha_v() {
        return fecha_v;
    }

    public void setFecha_v(String fecha_v) {
        this.fecha_v = fecha_v;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }
    
}
