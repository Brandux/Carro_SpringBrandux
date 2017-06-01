/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import pe.edu.upeu.interfaces.Operaciones;
import pe.edu.upeu.model.VentaDTO;
import pe.edu.upeu.util.Conexion;

/**
 *
 * @author Brandukosky
 */
public class VentaDAO implements Operaciones<VentaDTO>{

     private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
    private final static String SQL_CREATE = "INSERT INTO Venta (fecha_v , idCliente) VALUES (? , ? )";
    private final static String SQL_DELETE = "DELETE FROM Venta  WHERE idVenta = ?";
    private final static String SQL_SEARCH = "SELECT *FROM Venta WHERE idCliente = ?";
    private final static String SQL_READALL = "SELECT *FROM Venta";
    private final static String SQL_BUSCAR = "SELECT *FROM Venta WHERE idVenta=?";

    
    @Override
    public int create(VentaDTO o) {
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_CREATE);
            ps.setString(1, o.getFecha_v());
            ps.setInt(2, o.getIdCliente());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    
    }

    @Override
    public int delete(int id) {
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_DELETE);
            ps.setInt(1, id);
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;   
    }

    @Override
    public int update(VentaDTO o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<VentaDTO> buscar(int id) {
    
        List<VentaDTO> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                VentaDTO x = new VentaDTO();
                x.setIdVenta(rs.getInt("idVenta"));
                x.setFecha_v(rs.getString("fecha_v"));
                x.setIdCliente(rs.getInt("idCliente"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
    

    @Override
    public List<VentaDTO> listar() {
        List<VentaDTO> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                VentaDTO x = new VentaDTO();
                x.setIdVenta(rs.getInt("idVenta"));
                x.setFecha_v(rs.getString("fecha_v"));
                x.setIdCliente(rs.getInt("idCliente"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    
    }
    
}
