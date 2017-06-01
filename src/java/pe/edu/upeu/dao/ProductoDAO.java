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
import pe.edu.upeu.model.ClienteDTO;
import pe.edu.upeu.model.ProductoDTO;
import pe.edu.upeu.util.Conexion;

/**
 *
 * @author Brandukosky
 */
public class ProductoDAO implements Operaciones<ProductoDTO>{

    private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
    private final static String SQL_CREATE = "INSERT INTO Producto (nombre,  precio ,  stock , img , idCategoria) VALUES (?, ?,?,?,?)";
    private final static String SQL_UPDATE = "UPDATE Producto SET nombre =? , precio = ? , stock =? ,  img  = ? , idCategoria =? WHERE idProducto=? ";
    private final static String SQL_DELETE = "DELETE FROM Producto WHERE idProducto = ?";
    private final static String SQL_SEARCH = "SELECT *FROM Producto WHERE nombre = ?";
    private final static String SQL_READALL = "SELECT *FROM Producto";
    private final static String SQL_BUSCAR = "SELECT *FROM Producto WHERE idProducto=?";

    
    
    @Override
    public int create(ProductoDTO o) {
        
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_CREATE);
            ps.setString(1, o.getNombre());
            ps.setString(2, o.getPrecio());
            ps.setString(3, o.getStock());
            ps.setBlob(4, o.getImg());
            ps.setInt(5, o.getIdCategoria());
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
    public int update(ProductoDTO o) {
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_UPDATE);
            ps.setString(1, o.getNombre());
            ps.setString(2, o.getPrecio());
            ps.setString(3, o.getStock());
            ps.setBlob(4, o.getImg());
            ps.setInt(5, o.getIdCategoria());
            ps.setInt(6, o.getIdProducto());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    
    }

    @Override
    public List<ProductoDTO> buscar(int id) {
         List<ProductoDTO> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductoDTO x = new ProductoDTO();
                x.setIdProducto(rs.getInt("idProducto"));
                x.setNombre(rs.getString("nombre"));
                x.setPrecio(rs.getString("precio"));
                x.setStock(rs.getString("stock"));
                x.setImg(rs.getBlob("img"));
                x.setIdCategoria(rs.getInt("idCategoria"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    
    }

    @Override
    public List<ProductoDTO> listar() {
        List<ProductoDTO> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductoDTO x = new ProductoDTO();
                x.setIdProducto(rs.getInt("idProducto"));
                x.setNombre(rs.getString("nombre"));
                x.setPrecio(rs.getString("precio"));
                x.setStock(rs.getString("stock"));
                x.setImg(rs.getBlob("img"));
                x.setIdCategoria(rs.getInt("idCategoria"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
}
