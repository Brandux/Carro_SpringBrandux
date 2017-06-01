/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.controller;

import pe.edu.upeu.dao.ProductoDAO;
import pe.edu.upeu.model.ProductoDTO;

/**
 *
 * @author Brandukosky
 */
public class ListarProductos {
    public String getProductos() {
        ProductoDAO mp = new ProductoDAO();
        String htmlcode = "";
        for (ProductoDTO p : mp.listar()) {
            htmlcode +="<div class=\"col-md-3 product-men\">\n"
                    + "                                    <div class=\"men-pro-item simpleCart_shelfItem\">\n"
                    + "                                        <div class=\"men-thumb-item\">\n"
                    + "                                            <img src=\"<c:url value=\'recursos/images/a8.png\'/>\" alt=\"\" class=\"pro-image-front\">\n"
                    + "                                            <img src=\"<c:url value=\'recursos/images/a8.png\'/>\" alt=\"\" class=\"pro-image-back\">\n"
                    + "                                            <div class=\"men-cart-pro\">\n"
                    + "                                                <div class=\"inner-men-cart-pro\">\n"
                    + "                                                </div>\n"
                    + "                                            </div>\n"
                    + "\n"
                    + "                                        </div>\n"
                    + "                                        <div class=\"item-info-product \">\n"
                    + "                                            <h4><a href=\"single.html\">"+p.getNombre()+"</a></h4>\n"
                    + "                                            <div class=\"info-product-price\">\n"
                    + "                                                <span class=\"item_price\">"+p.getStock()+"</span>\n"
                    + "                                            </div>\n"
                    + "                                            <a href=\"mirar?id="+p.getIdProducto()+"\" class=\"item_add single-item hvr-outline-out button2\">Add to cart</a>									\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>";
        }
        return htmlcode;

    }

    public ProductoDTO getProducto(int id) {
        return (ProductoDTO) new ProductoDAO().buscar(id);
    }
}
