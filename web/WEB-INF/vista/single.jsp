<%-- 
    Document   : single
    Created on : 28/05/2017, 03:43:47 PM
    Author     : Brandukosky
--%>

<%@page import="pe.edu.upeu.model.ClienteDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        ClienteDTO cli = (ClienteDTO)session.getAttribute("Cliente") ;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:Single :. || Brandukosky</title>
        <%@include file="../../jspf/head.jspf" %>
        
        <link rel="stylesheet" href="<c:url value="recursos/css/flexslider.css"/>" type="text/css" media="screen" />
        <link href="<c:url value="recursos/css/style.css"/>" rel="stylesheet" type="text/css" media="all" />
        <!-- single -->
        <script src="<c:url value="recursos/js/imagezoom.js"/>"></script>
        
        <script src="<c:url value="recursos/js/jquery.flexslider.js"/>"></script>
        <!-- cart -->
        <script src="<c:url value="recursos/js/simpleCart.min.js"/>"></script>
        <!-- cart -->
    </head>
    <body>
        <%@include file="../../jspf/header.jspf" %>
        
        <!-- Aqui va Codigo-->
        

        <div class="single">
            <div class="container">
                <div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
                    <div class="grid images_3_of_2">
                        <div class="flexslider">
                            <!-- FlexSlider -->
                            <script>
                            // Can also be used with $(document).ready()
                                    $(window).load(function() {
                                            $('.flexslider').flexslider({
                                            animation: "slide",
                                            controlNav: "thumbnails"
                                            });
                                    });
                            </script>
                            <!-- //FlexSlider-->
                            <ul class="slides">
                                
                                <li>
                                    <div class="thumb-image"> <img src="<c:url value="recursos/images/d1.jpg"/>" data-imagezoom="true" class="img-responsive"> </div>
                                </li>	
                                
                            </ul>
                            <div class="clearfix"></div>
                        </div>	
                    </div>
                </div>
                <div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
                    
                    <c:forEach var="datos" begin="0" items="${lista}">                

                    <h3><c:out value="${datos.nombre}"></c:out></h3>
                    <p><span class="item_price"><c:out value="${datos.precio}"></c:out></span></p>
                   
                    <div class="color-quality">
                        <div class="color-quality-right">
                            <h5>Quality :</h5>
                            <select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
                                <%for (int i = 1; i <= 12; i++) {%>
                                <option  value="<%= i%>"> <%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>
                    <div class="occasional">
                        <h5>Types :</h5>
                        <div class="colr ert">
                            <label class="radio"><input type="radio" name="radio" checked=""><i></i>Casual Shoes</label>
                        </div>
                        <div class="colr">
                            <label class="radio"><input type="radio" name="radio"><i></i>Sports Shoes</label>
                        </div>
                        <div class="colr">
                            <label class="radio"><input type="radio" name="radio"><i></i>Formal Shoes</label>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="occasion-cart">
                        <a href="guardarVenta?idCliente=<%= cli.getIdCliente()%>&&idProducto=<c:out value="${datos.idProducto}"></c:out>" class="item_add hvr-outline-out button2">Add to cart</a>
                    </div>

                </div>
                </c:forEach>
                <div class="clearfix"> </div>

                
                <div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
                            </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
                                <h5>Product Brief Description</h5>
                                <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.
                                    <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>
                            </div>
                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //single -->

        
        <!--Aqui termina-->
        <%@include file="../../jspf/footer.jspf" %>
    </body>
</html>
