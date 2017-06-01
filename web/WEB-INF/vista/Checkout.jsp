<%-- 
    Document   : Checkout
    Created on : 28/05/2017, 03:43:19 PM
    Author     : Brandukosky
--%>

<%@page import="pe.edu.upeu.model.ClienteDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ClienteDTO cli = (ClienteDTO) session.getAttribute("Cliente");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>.:CARRITO:. || BRANDUX</title>
        <%@include file="../../jspf/head.jspf" %>
        <link href="<c:url value="recursos/css/style.css"/>" rel="stylesheet" type="text/css" media="all" />
    </head> 
    <body>
        <%@include file="../../jspf/header.jspf" %>
        
        <!-- aqui ira codigo -->
        

        <div class="checkout">
            <div class="container">
                <h3>Lista De Compra</h3>
                <div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
                    
                    <table class="timetable_sub">
                        <thead>
                            <tr>
                                <th>Remove</th>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Product Name</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                    <c:forEach var="datos" begin="0" items="${Po}">                

                        <tr class="rem1">
                            <td class="invert-closeb">
                                <div class="rem">
                                    <div class="close1"> </div>
                                </div>
                                <script>$(document).ready(function(c) {
                                        $('.close1').on('click', function(c){
                                                $('.rem1').fadeOut('slow', function(c){
                                                        $('.rem1').remove();
                                                });
                                                });	  
                                        });
                                </script>
                            </td>
                            <td class="invert-image"><a href="single.html"><img src="<c:url value="recursos/images/w4.png"/>" alt=" " class="img-responsive" /></a></td>
                            <td class="invert">
                                <div class="quantity"> 
                                    <div class="quantity-select">                           
                                        <div class="entry value-minus">&nbsp;</div>
                                        <div class="entry value" id="val"  ><span>1</span></div>
                                        <div class="entry value-plus active">&nbsp;</div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert"><c:out value="${datos.nombre}"></c:out></td>
                            <td class="invert"> <c:out value="${datos.precio}"></c:out>
                               
                            </td>
                        </tr>
                    </c:forEach>
                        

                        <!--quantity-->
                        <script>
                            $('.value-plus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                                divUpd.text(newVal);
                            });

                            $('.value-minus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                                if (newVal >= 1)
                                    divUpd.text(newVal);
                            });
                        </script>
                        <!--quantity-->
                    </table>
                </div>
                <div class="checkout-left">	

                    <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                        <a href="compra?idProd=<c:out value="${datos.idProducto}"></c:out>&&idVenta=<c:out value="${datos.idVenta}"></c:out>" <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Confirmar Compra</a>
                    </div>
                    <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                        <h4>Shopping basket</h4>
                        <ul>
                            <c:forEach var="datos" begin="0" items="${Po}">                
                            <li>Precio <i>-</i> <span> S/ <c:out value="${datos.precio}"></c:out></span></li>
                            <li>Total <i>-</i> <span> S/ <c:out value="${datos.precio}"></c:out></span></li>
                            </c:forEach>
                            </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>	


        
        <!-- fin de codigo-->
        <%@include file="../../jspf/footer.jspf" %>
    </body>
</html>
