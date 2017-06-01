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
import pe.edu.upeu.model.DetalleDTO;
import pe.edu.upeu.util.Conexion;

/**
 *
 * @author Brandukosky
 */
public class DetallaeDAO implements Operaciones<DetalleDTO>{
    
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
    private final static String SQL_CREATE = "INSERT INTO Detalle (idVenta , idProducto ) VALUES (? , ? )";
    private final static String SQL_DELETE = "DELETE FROM Detalle WHERE idDetalle = ?";
    private final static String SQL_READALL = "SELECT *FROM Detalle";
    
    @Override
    public int create(DetalleDTO o) {
    
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_CREATE);
            ps.setInt(1, o.getIdDetalle());
            ps.setInt(2, o.getIdVenta());
            ps.setInt(3, o.getIdProducto());
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
    public int update(DetalleDTO o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<DetalleDTO> buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<DetalleDTO> listar() {
        List<DetalleDTO> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                DetalleDTO x = new DetalleDTO();
                x.setIdDetalle(rs.getInt("idDetalle"));
                x.setIdVenta(rs.getInt("idVenta"));
                x.setIdProducto(rs.getInt("idProducto"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;    
    
    }
    
}
