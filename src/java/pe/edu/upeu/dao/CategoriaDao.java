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
import pe.edu.upeu.model.CategoriaDTO;
import pe.edu.upeu.util.Conexion;

/**
 *
 * @author Brandukosky
 */
public class CategoriaDao implements Operaciones<CategoriaDTO>{

    private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
        private final static String SQL_CREATE = "INSERT INTO Categoria (nombre  ) VALUES ( ? )";

    private final static String SQL_DELETE = "DELETE FROM Categoria WHERE idCategoria = ?";
    private final static String SQL_SEARCH = "SELECT *FROM Categoria WHERE nombre = ?";
    private final static String SQL_READALL = "SELECT *FROM Categoria";
    private final static String SQL_BUSCAR = "SELECT *FROM Categoria  WHERE idCategoria =?";

    @Override
    public int create(CategoriaDTO o) {

        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_CREATE);
            ps.setString(1, o.getNombre());
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
    public int update(CategoriaDTO o) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<CategoriaDTO> buscar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<CategoriaDTO> listar() {
        List<CategoriaDTO> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                CategoriaDTO x = new CategoriaDTO();
                x.setIdCategoria(rs.getInt("idCategoria"));
                x.setNombre(rs.getString("nombre"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
    
}
