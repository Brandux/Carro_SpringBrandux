/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.controller;

import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pe.edu.upeu.dao.CategoriaDao;
import pe.edu.upeu.dao.ClienteDAO;
import pe.edu.upeu.dao.DetallaeDAO;
import pe.edu.upeu.dao.ProductoDAO;
import pe.edu.upeu.dao.VentaDAO;
import pe.edu.upeu.model.CategoriaDTO;
import pe.edu.upeu.model.ClienteDTO;
import pe.edu.upeu.model.DetalleDTO;
import pe.edu.upeu.model.ProductoDTO;
import pe.edu.upeu.model.VentaDTO;

/**
 *
 * @author UPEU
 */
@Controller
public class Homecontroller {
    private ProductoDAO pao = new ProductoDAO();
    private ClienteDAO cdao = new ClienteDAO();
    private VentaDAO vao = new VentaDAO();
    private DetallaeDAO dao = new DetallaeDAO();
    private CategoriaDao cao = new CategoriaDao();
    
    @RequestMapping("/home")
    public String Login(){
        return "index";
    }
    
    @RequestMapping("/listar")
    public String listar(Model mo) {
        String url = "Admin";
        try {
            mo.addAttribute("cliente", cdao.listar());
            mo.addAttribute("producto", pao.listar());
            mo.addAttribute("Venta", vao.listar());
            mo.addAttribute("Detalle", dao.listar());
            mo.addAttribute("Cate", cao.listar());
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return url;
    }
    
     @RequestMapping("/mirar")
    public String validar(Model model, int id) {
        
        String url ="single";
         try {
             model.addAttribute("lista", pao.buscar(id));
             
         } catch (Exception e) {
             System.out.println("Error:" +e);
         }
        return url;
    }
    
    @RequestMapping("/compra")
    public String GuardarDeatlle(int idVenta , int idProducto){
        String url="";
        DetalleDTO d = new DetalleDTO(idVenta, idProducto);
        try {
            if(dao.create(d)==1){
                url="Entro";
            }else{
                url="si";
            }
        } catch (Exception e) {
        }
        return url ;
    }
    
    @RequestMapping("/guardarVenta")
    public String GuardaVenta (Model modelo, int idCliente , int idProducto) {
        String url = "Error";
        try {
            //Aquí colocas tu objeto tipo Date
            Date myDate = new Date();

            String aaaa = new SimpleDateFormat("dd-MM-yyyy").format(myDate);
            VentaDTO v =  new VentaDTO(aaaa, idCliente);

            if(vao.create(v)==1){
                modelo.addAttribute("listas", vao.listar());
                modelo.addAttribute("Po", pao.buscar(idProducto));

                url="Checkout";
            }
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
        return url;
    }
    
    
    
    @RequestMapping("/x")
    public String Principal (Model mo, HttpServletRequest resquest , HttpServletResponse response){
        String url ="index";
        String user = resquest.getParameter("user");
        String Pass = resquest.getParameter("pass");
        HttpSession sesion = resquest.getSession();
        ClienteDTO c = new ClienteDTO();
        c = cdao.validar(user, Pass);
        try {
            if(c!=null){
                if( c.getIdRol()==1){
                resquest.getSession().setAttribute("Cliente", c);
                
                
                 url=listar(mo);
                
                    }else{
                        resquest.getSession().setAttribute("Cliente", c);
                        url="Entro";
                    }
            }else{
                url="error";
            }
        } catch (Exception e) {
        }
        return url;
    }
    
    @RequestMapping("/guardar")
    private String save(HttpServletRequest request , HttpServletResponse response) throws SQLException{
        String url="index";
        String nombre = request.getParameter("nombre");
        String apellido= request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String fecha = request.getParameter("fecha");
        String email = request.getParameter("email");
        String celular = request.getParameter("celular");
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        
        //Guardar imagen 
        String img = request.getParameter("img");
        byte[] buff = img.getBytes();
        Blob blob = new SerialBlob(buff);
        
        int idRol = 2;
        ClienteDTO cs = new ClienteDTO(nombre, apellido, direccion, fecha, email, celular,usuario, clave, blob, idRol);
        try {
            if(cdao.create(cs)==1){
                url="index";
            }else{
                url="Error";
            }
        } catch (Exception e) {
        }
        return url;
    }
    
    @RequestMapping("/close")
    public String cerrar(HttpServletRequest request, HttpServletResponse response){
        String action = (request.getPathInfo() != null ? request.getPathInfo() : "");
        HttpSession sesion = request.getSession();
        sesion.invalidate();
    return "index";
    }
    
    //--------------------------------------------------------------------------ADMIN -------------------------------------------------------
    
    @RequestMapping("/guardarProducto")
    public String guardarProducto(Model m ,HttpServletRequest request, HttpServletResponse response) throws SQLException {
        String url = "index";
        String nombrep = request.getParameter("nombre");
        String preciop = request.getParameter("precio");
        String Cantidadp = request.getParameter("stock");
        //Guardar imagen 
        String imgen = request.getParameter("imgPro");
        byte[] buffe = imgen.getBytes();
        Blob blobe = new SerialBlob(buffe);
//         int categoria = Integer.parseInt(request.getParameter("cate"));
        ProductoDTO p = new ProductoDTO(nombrep, preciop, Cantidadp, blobe, 1);
        try {
            if (pao.create(p) == 1) {
                
                url=listar(m);
                
            }else{
                url="Admin";
            }
                
        } catch (Exception e) {
        }
        return url;
    }
    @RequestMapping("/ddP")
    public String deleteP(Model model, HttpServletRequest request, HttpServletResponse response) {
        String url = "error";
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            if (pao.delete(id) > 0) {

                url = listar(model);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return url;
    }
    //--------------------------------------------------------------------------Venta -------------------------------------------------------
    @RequestMapping("/ddV")
    public String deleteV(Model model, HttpServletRequest request, HttpServletResponse response) {
        String url = "error";
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            if (vao.delete(id) > 0) {
                
                url = listar(model);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return url;
    }
    
    //--------------------------------------------------------------------------Venta -------------------------------------------------------
    
    @RequestMapping("/guardarCate")
    public String guardarCate(Model m, HttpServletRequest request, HttpServletResponse response) throws SQLException {
        String url = "index";
        String nombrec = request.getParameter("nombre");
        CategoriaDTO p = new CategoriaDTO(nombrec);
        try {
            if (cao.create(p) == 1) {

                url = listar(m);

            } else {
                url = "Admin";
            }

        } catch (Exception e) {
        }
        return url;
    }
}
