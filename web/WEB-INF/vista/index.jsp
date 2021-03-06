<%-- 
    Document   : index
    Created on : 27/05/2017, 08:03:28 PM
    Author     : UPEU
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        
        <%@include file="../../jspf/header_temp.jspf" %> 
        
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
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="<c:url value="recursos/images/a1.png"/>" alt="" class="pro-image-front">
                                            <img src="<c:url value="recursos/images/a1.png"/>" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Air Tshirt Black</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$45.99</span>
                                                <del>$69.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                            
                                            
                                <div class="col-md-3 product-men">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item">
                                            <img src="<c:url value="recursos/images/a8.png"/>" alt="" class="pro-image-front">
                                            <img src="<c:url value="recursos/images/a8.png"/>" alt="" class="pro-image-back">
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="single.html" class="link-product-add-cart">Quick View</a>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="item-info-product ">
                                            <h4><a href="single.html">Next Blue Blazer</a></h4>
                                            <div class="info-product-price">
                                                <span class="item_price">$99.99</span>
                                                <del>$109.71</del>
                                            </div>
                                            <a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
                                        </div>
                                    </div>
                                </div>
                                
                                
                                
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
                        <div class="login-grids">
                            <div class="login">
                                <div class="login-bottom">
                                    <h3>Sign up for free</h3>
                                    <form method="post" action="guardar">
                                        <div class="sign-up">
                                            <h4>Nombre :</h4>
                                            <input type="text" id="nombre" name="nombre"  value="Ingresa Nombre" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Type here';
                                            }" required="">	
                                        </div>
                                        <div class="sign-up">
                                            <h4>Apellido :</h4>
                                            <input type="text" value="Ingresa Apellido" id="apellido" name="apellido" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Password';
                                            }" required="">

                                        </div>
                                        <div class="sign-up">
                                            <h4>Dirección :</h4>
                                            <input type="text" value="Direccion * " id="direccion" name="direccion" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Password';
                                            }" required="">

                                        </div>
                                        <div class="sign-up">
                                            <h4>Fecha De nacimiento :</h4>
                                            <div class="input-group">
                                                <input type="date" name="fecha" placeholder="Fecha de Nacimiento" class="form-control"/>
                                                <span class="input-group-addon" id="basic-addon1"><i class="fa fa-calendar"></i></span>
                                            </div>

                                        </div>
                                        <div class="sign-up">
                                            <h4>Email :</h4>
                                            <input type="text" value="Email*" id="email" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'email';
                                            }" required="">

                                        </div>
                                        <div class="sign-up">
                                            <h4>Celular :</h4>
                                            <input type="text" value="Celular*" id="celular" name="celular" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Password';
                                            }" required="">

                                        </div>
                                         <div class="sign-up">
                                            <h4>Usuario :</h4>
                                            <input type="text" value="Usuario" id="usuario" name="usuario" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Password';
                                            }" required="">

                                        </div>
                                        <div class="sign-up">
                                            <h4>Clave :</h4>
                                            <input type="password" value="Password" id="clave" name="clave" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Password';
                                            }" required="">

                                        </div>
                                        <div class="sign-up">
                                            <h4>Imagen De Perfil :</h4>
                                            <input type="file" class="form-group" name="img" id="img" >
                                        </div>
                                       
                                        <div class="sign-up">
                                            <input type="submit" value="REGISTER NOW" >
                                        </div>

                                    </form>
                                </div>
                                
                                
                                <div class="login-right">
                                    <h3>Tengo mi Cuenta..!!</h3>
                                    <form method="post" action="x">
                                        <div class="sign-in">
                                            <h4>Usuario :</h4>
                                            <input type="text" id="user" name="user" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Type here';
                                            }" required="">	
                                        </div>
                                        <div class="sign-in">
                                            <h4>Password :</h4>
                                            <input type="password" name="pass" id="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Password';
                                            }" required="">
                                            <a href="#">Quieres Recordar tu password?</a>
                                        </div>
                                        <div class="single-bottom">
                                            <input type="checkbox"  id="brand" value="">
                                            <label for="brand"><span></span>Remember Me.</label>
                                        </div>
                                        <div class="sign-in">
                                            <input type="submit" id="boton" value="Entrar" >
                                        </div>
                                    </form>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>
