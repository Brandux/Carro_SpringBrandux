<%-- 
    Document   : Admin
    Created on : 28/05/2017, 04:55:10 PM
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
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>.:ADMIN BRANDUX:.</title>
        
        <%@include file="../../jspf/head_Admin.jspf" %>
        
    </head>
    <body>
        <%@include file="../../jspf/navbar.jspf" %>
        <%@include file="../../jspf/AdminPerfil.jspf" %>
        <!--main-container-part-->
        <div id="content">
            <!--breadcrumbs-->
            <div id="content-header">
                <div id="breadcrumb"> <a href="listar" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
            </div>
            <!--End-breadcrumbs-->
           
            
            <div class="container-fluid" >
                                                      
                <hr>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <button type="submit" data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block">Agragar Uno Nuevo</button>
                            
                            <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>

                                <h5>PRODUCTOS EN STOCK</h5>
                                <%@include file="../../jspf/CrearProducto.jspf" %>

                            </div>
                            <div class="widget-content nopadding">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Producto</th>
                                            <th>Precio</th>
                                            <th>Stock</th>
                                            <th>Imagen </th>
                                            <th>Categoria</th>
                                            <th colspan="2">Operaciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="datos" begin="0" items="${producto}">                

                                            <tr class="odd gradeX">
                                                <td><c:out value="${datos.nombre}"></c:out></td>
                                                <td>S/.  <c:out value="${datos.precio}"></c:out></td>
                                                <td><c:out value="${datos.stock}"></c:out></td>
                                                <td><c:out value="${datos.img}"></c:out></td>
                                                <td><c:out value="${datos.idCategoria}"></c:out></td>
                                                <td><a href="up?id=<c:out value="${datos.idProducto}"></c:out>" class="btn btn-success">Edit</a></td>
                                                <td><a href="ddP?id=<c:out value="${datos.idProducto}"></c:out>" class="btn btn-danger">Delete</a></td>

                                                </tr>

                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>



                    </div>
                </div>


                <hr>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <button type="submit" data-toggle="modal" data-target="#" class="btn btn-primary center-block">Agragar Uno Nuevo</button>

                            <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>

                                <h5>CLIENTES AFILIADOS </h5>

                            </div>
                            <div class="widget-content nopadding">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Cliente </th>
                                            <th>Direccion</th>
                                            <th>Fecha Nacimiento</th>
                                            <th>Email </th>
                                            <th>Celular</th>
                                            <th>Usuario</th>
                                            <th>Clave</th>
                                            <th>Imagen</th>
                                            <th>Rol</th>
                                            <th colspan="2">Operaciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="c" begin="0" items="${cliente}">                

                                            <tr class="odd gradeX">
                                                <td><c:out value="${c.nombre}"></c:out> <c:out value="${c.apellido}"></c:out></td>
                                                <td><c:out value="${c.direccion}"></c:out></td>
                                                <td><c:out value="${c.fecha_n}"></c:out></td>
                                                <td><c:out value="${c.email}"></c:out></td>
                                                <td><c:out value="${c.celular}"></c:out></td>
                                                <td><c:out value="${c.user}"></c:out></td>
                                                <td><c:out value="${c.pass}"></c:out></td>
                                                <td><c:out value="${c.img}"></c:out></td>
                                                <td><c:out value="${c.idRol}"></c:out></td>
                                                <td><a href="up?id=<c:out value="${c.idCliente}"></c:out>" class="btn btn-success">Edit</a></td>
                                                <td><a href="dd?id=<c:out value="${c.idCliente}"></c:out>" class="btn btn-danger">Delete</a></td>

                                                </tr>

                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <hr>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>

                                <h5>VENTAS REALIZADAS  </h5>
                                
                            </div>
                            <div class="widget-content nopadding">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Fecha de Compra </th>
                                            <th>Cliente</th>
                                            <th colspan="2">Operaciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="v" begin="0" items="${Venta}">                

                                            <tr class="odd gradeX">
                                                <td><c:out value="${v.fecha_v}"></c:out></td>
                                                <td><c:out value="${v.idCliente}"></c:out></td>
                                                <td><a href="up?id=<c:out value="${v.idVenta}"></c:out>" class="btn btn-success">Edit</a></td>
                                                <td><a href="ddV?id=<c:out value="${v.idVenta}"></c:out>" class="btn btn-danger">Delete</a></td>
                                                </tr>

                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <button type="submit" data-toggle="modal" data-target="#modal_cate" class="btn btn-primary center-block">Agragar Uno Nuevo</button>

                            <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>

                                <h5>CATEGORIAS EN LA TIENDA </h5>
                                <%@include file="../../jspf/CrearCate.jspf" %>
                            </div>
                            <div class="widget-content nopadding">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Categorias </th>
                                            <th colspan="2">Operaciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="c" begin="0" items="${Cate}">                

                                            <tr class="odd gradeX">
                                                <td><c:out value="${c.nombre}"></c:out></td>
                                                <td><a href="up?id=<c:out value="${c.idCategoria}"></c:out>" class="btn btn-success">Edit</a></td>
                                                <td><a href="dd?id=<c:out value="${c.idCategoria}"></c:out>" class="btn btn-danger">Delete</a></td>
                                                </tr>

                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        

        <%@include file="../../jspf/footer_admin.jspf" %>
       
    </body>
</html>
