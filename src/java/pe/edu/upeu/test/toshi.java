/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.test;

import pe.edu.upeu.dao.ClienteDAO;
import pe.edu.upeu.dao.ProductoDAO;
import pe.edu.upeu.model.ClienteDTO;
import pe.edu.upeu.model.ProductoDTO;
import pe.edu.upeu.util.Conexion;

/**
 *
 * @author Brandukosky
 */
public class toshi {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        conex();
        //login();
        //CrearUsu();
        CrearP();
    }
   
    
    public static void conex(){
        if(Conexion.getConexion()!=null){
            System.out.println("si");
        }else{
            System.out.println("no");
        }    
    }

    public static void login (){
        ClienteDAO cd = new ClienteDAO();
        String user = "Brandux";
        String Pass = "123";
        ClienteDTO c = new ClienteDTO();
        c = cd.validar(user, Pass);
//      
//            System.out.println(c.getNombre()+ c.getIdRol());
//     
        if(c != null){
            System.out.println("si");
        }else{
            System.out.println("no");
        }
    }
    public static void CrearUsu(){
        ClienteDAO as = new ClienteDAO();
                ClienteDTO c= new ClienteDTO("Cesar", "malaspina","alameda", "12/01/1998", "@e", "123456789","Cesar", "1234", null, 2);
            if(as.create(c)==1){
                System.out.println("si");
            }else{
                System.out.println("no");
            }
    }
    
    //crear producto
    public static void CrearP(){
        ProductoDAO pa=  new ProductoDAO();
        ProductoDTO p = new ProductoDTO("tabas", "11", "12", null, 1);
        if(pa.create(p)==1){
            System.out.println("si");
        }else{
            System.out.println("no");
        }
            
    }
    
}
