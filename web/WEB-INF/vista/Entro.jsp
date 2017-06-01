<%-- 
    Document   : index
    Created on : 27/05/2017, 08:03:28 PM
    Author     : UPEU
--%>
<%@page import="pe.edu.upeu.controller.ListarProductos"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.awt.Image"%>
<%@page import="javax.swing.ImageIcon"%>
<%@page import="java.sql.Blob"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.InputStream"%>
<%@page import="pe.edu.upeu.model.ClienteDTO"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  ListarProductos mp = new ListarProductos();

    ClienteDTO cli = (ClienteDTO) session.getAttribute("Cliente");
    
        //Blob bytesImagen = cli.getImg();

          //  byte[] bytesLeidos = bytesImagen.getBytes(1, (int) bytesImagen.length());
            
            //ImageIcon imageIcon = new ImageIcon(bytesLeidos);
                
            //imageIcon.getImage();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:Brandukosky:.</title>
        <!--Aqui va estas coasa-->
        <%@include file="../../jspf/head.jspf" %>

    </head>
    <body>
        
        <%@include file="../../jspf/header.jspf" %> 
        
        <!--aqui ira el codigo-->
        

        <div class="banner-grid">
            <div id="visual">
                <div class="slide-visual">
                    <!-- Slide Image Area (1000 x 424) -->
                    <ul class="slide-group">
                        <li><img class="img-responsive" src="<c:url value="recursos/images/ba1.jpg"/>" alt="Dummy Image" /></li>
                        <li><img class="img-responsive" src="<c:url value="recursos/images/ba2.jpg"/>" alt="Dummy Image" /></li>
                        <li><img class="img-responsive" src="<c:url value="recursos/images/ba3.jpg"/>" alt="Dummy Image" /></li>
                    </ul>

                    <!-- Slide Description Image Area (316 x 328) -->
                    <div class="script-wrap">
                        <ul class="script-group">
                            <li><div class="inner-script"><img class="img-responsive" src="<c:url value="recursos/images/baa1.jpg"/>" alt="Dummy Image" /></div></li>
                            <li><div class="inner-script"><img class="img-responsive" src="<c:url value="recursos/images/baa2.jpg"/>" alt="Dummy Image" /></div></li>
                            <li><div class="inner-script"><img class="img-responsive" src="<c:url value="recursos/images/baa3.jpg"/>" alt="Dummy Image" /></div></li>
                        </ul>
                        <div class="slide-controller">
                            <a href="#" class="btn-prev"><img src="<c:url value="recursos/images/btn_prev.png"/>" alt="Prev Slide" /></a>
                            <a href="#" class="btn-play"><img src="<c:url value="recursos/images/btn_play.png"/>" alt="Start Slide" /></a>
                            <a href="#" class="btn-pause"><img src="<c:url value="recursos/images/btn_pause.png"/>" alt="Pause Slide" /></a>
                            <a href="#" class="btn-next"><img src="<c:url value="recursos/images/btn_next.png"/>" alt="Next Slide" /></a>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
            <script type="text/javascript" src="<c:url value="recursos/js/pignose.layerslider.js"/>"></script>
            <script type="text/javascript">
            //<![CDATA[
                    $(window).load(function() {
                            $('#visual').pignoseLayerSlider({
                                    play    : '.btn-play',
                                    pause   : '.btn-pause',
                                    next    : '.btn-next',
                                    prev    : '.btn-prev'
                            });
                    });
            //]]>
            </script>

        </div>
        <!-- //banner -->
        <!-- content -->

        <div class="new_arrivals">
            <div class="container">
                <h3><span>new </span>arrivals</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
                <div class="new_grids">
                    <div class="col-md-4 new-gd-left">
                        <img src="<c:url value="recursos/images/wed1.jpg"/>" alt=" " />
                        <div class="wed-brand simpleCart_shelfItem">
                            <h4>Wedding Collections</h4>
                            <h5>Flat 50% Discount</h5>
                            <p><i>$250</i> <span class="item_price">$500</span><a class="item_add hvr-outline-out button2" href="#">add to cart </a></p>
                        </div>
                    </div>
                    <div class="col-md-4 new-gd-middle">
                        <div class="new-levis">
                            <div class="mid-img">
                                <img src="<c:url value="recursos/images/levis1.png"/>" alt=" " />
                            </div>
                            <div class="mid-text">
                                <h4>up to 40% <span>off</span></h4>
                                <a class="hvr-outline-out button2" href="product.html">Shop now </a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="new-levis">
                            <div class="mid-text">
                                <h4>up to 50% <span>off</span></h4>
                                <a class="hvr-outline-out button2" href="product.html">Shop now </a>
                            </div>
                            <div class="mid-img">
                                <img src="<c:url value="recursos/images/dig.jpg"/>" alt=" " />
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="col-md-4 new-gd-left">
                        <img src="<c:url value="recursos/images/wed2.jpg"/>" alt=" " />
                        <div class="wed-brandtwo simpleCart_shelfItem">
                            <h4>Spring / Summer</h4>
                            <p>Shop Men</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //content -->

        <!-- content-bottom -->

        <div class="content-bottom">
            <div class="col-md-7 content-lgrid">
                <div class="col-sm-6 content-img-left text-center">
                    <div class="content-grid-effect slow-zoom vertical">
                        <div class="img-box"><img src="<c:url value="recursos/images/p1.jpg"/>" alt="image" class="img-responsive zoom-img"></div>
                        <div class="info-box">
                            <div class="info-content simpleCart_shelfItem">
                                <h4>Mobiles</h4>
                                <span class="separator"></span>
                                <p><span class="item_price">$500</span></p>
                                <span class="separator"></span>
                                <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 content-img-right">
                    <h3>Special Offers and 50%<span>Discount On</span> Mobiles</h3>
                </div>

                <div class="col-sm-6 content-img-right">
                    <h3>Buy 1 get 1  free on <span> Branded</span> Watches</h3>
                </div>
                <div class="col-sm-6 content-img-left text-center">
                    <div class="content-grid-effect slow-zoom vertical">
                        <div class="img-box"><img src="<c:url value="recursos/images/p2.jpg"/>" alt="image" class="img-responsive zoom-img"></div>
                        <div class="info-box">
                            <div class="info-content simpleCart_shelfItem">
                                <h4>Watches</h4>
                                <span class="separator"></span>
                                <p><span class="item_price">$250</span></p>
                                <span class="separator"></span>
                                <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
                        
                        
            <div class="col-md-5 content-rgrid text-center">
                <div class="content-grid-effect slow-zoom vertical">
                    <div class="img-box"><img src="<c:url value="recursos/images/p4.jpg"/>" alt="image" class="img-responsive zoom-img"></div>
                    <div class="info-box">
                        <div class="info-content simpleCart_shelfItem">
                            <h4>Shoes</h4>
                            <span class="separator"></span>
                            <p><span class="item_price">$150</span></p>
                            <span class="separator"></span>
                            <a class="item_add hvr-outline-out button2" href="#">add to cart </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
                    
                    
        <!-- //content-bottom -->
        
        <!-- product-nav -->

        <div class="product-easy">
            <div class="container">

                <script src="<c:url value="recursos/js/easyResponsiveTabs.js"/>" type="text/javascript"></script>
                <script type="text/javascript">
                                                        $(document).ready(function () {
                    $('#horizontalTab').easyResponsiveTabs({
                        type: 'default', //Types: default, vertical, accordion           
                        width: 'auto', //auto or any width like 600px
                        fit: true   // 100% fit in a container
                    });
                });

                </script>
                <div class="sap_tabs">
                    <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                        <ul class="resp-tabs-list">
                            <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Latest Designs</span></li> 
                            </ul>				  	 
                        <div class="resp-tabs-container">
                            
                            <!-- Catalogo--> 
                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                
                                            
                                            
                                <%=  mp.getProductos()%>
                                
                                
                                
                                <div class="clearfix"></div>
                            </div>
                          
                        </div>	
                    </div>
                </div>
            </div>
        </div>
                                            
                                            
        <!--aqui termina-->
        <%@include file="../../jspf/footer.jspf" %>
        
        
        <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content modal-info">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <div class="modal-body modal-spa">
                        <div class="row">



                                <div class="panel panel-info">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">INFORMACION PERSONAL</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-3 col-lg-3 " align="center">

                                                <img  src="<%= cli.getImg()%>" class="img-circle img-responsive"  height="100" width="100"/>
                                            
                                            </div>
                                            <div class=" col-md-9 col-lg-9 "> 
                                                <table class="table table-user-information">
                                                    <tbody>
                                                       
                                                        <tr>
                                                            <td>NOMBRE:</td>
                                                            <td><%= cli.getNombre()  %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>APELLIDO: </td>
                                                            <td><%= cli.getApellido()  %></td>
                                                        </tr>
                                                        <tr>
                                                            <td>DIRECCION: </td>
                                                            <td><%= cli.getDireccion()%></td>
                                                        </tr>
                                                        <tr>
                                                            <td>FECHA NACIMIENTO: </td>
                                                            <td><%= cli.getFecha_n()%></td>
                                                        </tr>
                                                        <tr>
                                                            <td>EMAIL:</td>
                                                            <td><a href="<%= cli.getEmail()%>"><%= cli.getEmail()%></a></td>
                                                        </tr>
                                                        <tr>
                                                            <td>CELULAR: </td>
                                                            <td><%= cli.getCelular()%></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-heading">
                                        <h3 class="panel-title">CAMBIO CONTRASEÑA</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class=" col-md-9 col-lg-9 "> 
                                                <table class="table table-user-information">
                                                    <tbody>
                                                        <tr>
                                                            <td>USUARIO: </td>
                                                            <td><%= cli.getUser()%></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Contraseña:</td>
                                                            <td><%= cli.getPass() %></td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                                <a href="#" class="btn btn-primary">Cambiar Contraseña</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div
                        
                    </div>
                </div>
            </div>
        </div>
        
    
    
    </body>
</html>
