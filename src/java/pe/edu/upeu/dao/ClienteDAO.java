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
import pe.edu.upeu.util.Conexion;

/**
 *
 * @author Brandukosky
 */
public class ClienteDAO implements Operaciones<ClienteDTO>{

    private PreparedStatement ps;
    private ResultSet rs;
    private Connection conex;
    private final static String Sql_ValidaLista = "SELECT * , r.nombre FROM Cliente   e , Rol r WHERE e.idRol =  r.idRol AND user= ?  AND pass= ? ";
    private final static String SQL_CREATE = "INSERT INTO CLIENTE (nombre, apellido,direccion, fecha_n,email,celular,user,pass,img,idRol) VALUES (?, ?,?,?,?,?,?,?,?,?)";
    private final static String SQL_UPDATE = "UPDATE CLIENTE SET pass=? WHERE idCliente=?";
    private final static String SQL_DELETE = "DELETE FROM CLIENTE WHERE idCliente=?";
    private final static String SQL_SEARCH = "SELECT *FROM Cliente WHERE user=?";
    private final static String SQL_READALL = "SELECT *FROM Cliente";
    private final static String SQL_BUSCAR = "SELECT *FROM Cliente WHERE idCliente=?";

    public ClienteDTO validar(String user, String pass) {
        ClienteDTO c = null;
        try {
            conex = Conexion.getConexion();
            String sql = "SELECT * FROM Cliente WHERE user = '" + user + "' AND pass= '" + pass + "'";
            ps = conex.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            while (rs.next()){
                c= new ClienteDTO();
                c.setIdCliente(rs.getInt("idCliente"));
                c.setNombre(rs.getString("nombre"));
                c.setApellido(rs.getString("apellido"));
                c.setDireccion(rs.getString("direccion"));
                c.setFecha_n(rs.getString("fecha_n"));
                c.setEmail(rs.getString("email"));
                c.setCelular(rs.getString("celular"));
                c.setUser(rs.getString("user"));
                c.setPass(rs.getString("pass"));
                c.setImg(rs.getBlob("img"));
                c.setIdRol(rs.getInt("idRol"));   
            }
        } catch (Exception e) {
            System.out.println("Error en validar : " + e);
        }
        return c ;
    }
    
    
    @Override
    public int create(ClienteDTO o) {
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_CREATE);
            ps.setString(1, o.getNombre());
            ps.setString(2, o.getApellido());
            ps.setString(3, o.getDireccion());
            ps.setString(4, o.getFecha_n());
            ps.setString(5, o.getEmail());
            ps.setString(6, o.getCelular());
            ps.setString(7, o.getUser());
            ps.setString(8, o.getPass());
            ps.setBlob(9, o.getImg());
            ps.setInt(10, o.getIdRol());
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
    public int update(ClienteDTO o) {
        
        int op = 0;
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_UPDATE);
            ps.setString(1, o.getPass());
            ps.setInt(2, o.getIdCliente());
            op = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return op;
    }

    @Override
    public List<ClienteDTO> buscar(int id) {
        List<ClienteDTO> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_BUSCAR);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                ClienteDTO x = new ClienteDTO();
                x.setIdCliente(rs.getInt("idCliente"));
                x.setNombre(rs.getString("nombre"));
                x.setApellido(rs.getString("apellido"));
                x.setDireccion(rs.getString("direccion"));
                x.setFecha_n(rs.getString("fecha_n"));
                x.setEmail(rs.getString("email"));
                x.setCelular(rs.getString("celular"));
                x.setUser(rs.getString("user"));
                x.setPass(rs.getString("pass"));
                x.setImg(rs.getBlob("img"));
                x.setIdRol(rs.getInt("idRol"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }

    @Override
    public List<ClienteDTO> listar() {
        List<ClienteDTO> lista = new ArrayList<>();
        try {
            conex = Conexion.getConexion();
            ps = conex.prepareStatement(SQL_READALL);
            rs = ps.executeQuery();
            while (rs.next()) {
                ClienteDTO x = new ClienteDTO();
                x.setIdCliente(rs.getInt("idCliente"));
                x.setNombre(rs.getString("nombre"));
                x.setApellido(rs.getString("apellido"));
                x.setDireccion(rs.getString("direccion"));
                x.setFecha_n(rs.getString("fecha_n"));
                x.setEmail(rs.getString("email"));
                x.setCelular(rs.getString("celular"));
                x.setUser(rs.getString("user"));
                x.setPass(rs.getString("pass"));
                x.setImg(rs.getBlob("img"));
                x.setIdRol(rs.getInt("idRol"));
                lista.add(x);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lista;
    }
    
}
