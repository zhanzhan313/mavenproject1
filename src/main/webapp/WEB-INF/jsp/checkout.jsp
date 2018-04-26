<!DOCTYPE html>
<html>
    <head>
        <title>Checkout Page</title>
        <style>
            .continue {
                font-size: 2em;
                color: #000;
                display: block;
                font-weight: 600;
                margin-bottom: 1em;
                font-family: 'Lato', sans-serif;
            }
            .price-details h3 {
                color: #000;
                font-size: 1.2em;
                margin-bottom: 1em;
            }
            .price-details span {
                width: 50%;
                float: left;
                font-size: 0.8125em;
                color: #000;
                line-height: 1.8em;
            }
            ul.total_price li.last_price {
                width: 50%;
                float: left;
            }
            ul.total_price {
                padding: 0;
                margin: 1em 0 0 0;
                list-style: none;
            }
            .cart-total a {
                color: #fff;
                background: #FF7000;
                text-decoration: none;
                padding: 0.5em 1em;
                font-size: 1em;
                display: inline-block;
                margin-top: 1em;
            }
            .cart-total a:hover {
                background: #01CFCF;
            }


            .cart-total {
                float: right;
            }
        </style>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Custom Theme files -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Eshop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--webfont-->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    </head>
    <body >

        <%@include file="menu.jsp" %> 

        <div class="cart-items">
            <div class="container">
                <div class="dreamcrub">
                    <ul class="breadcrumbs">
                        <li class="home">
                            <a href="${contextPath}/mavenproject1/index.htm" title="Go to Home Page">Home</a>&nbsp;
                            <span>&gt;</span>
                        </li>
                        <li class="women">
                            Cart
                        </li>
                    </ul>
                    <ul class="previous">
                        <li><a href="${contextPath}/mavenproject1/index.htm">Back to Previous Page</a></li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <h2>MY SHOPPING BAG </h2>
                <c:set var="cart" scope="session" value="${mycart}"/>
                <c:forEach var="cartitem" items="${cart.cartItems}">
                    <div class="cart-gd">
                        <div class="cart-header">
                            <div class="close1"> </div>
                            <div class="cart-sec simpleCart_shelfItem">
                                <div class="cart-item cyc">
                                    <img src="${cartitem.product.image}" class="img-responsive" alt="">
                                </div>
                                <div class="cart-item-info">
                                    <h3> <c:out value="${cartitem.product.pname}"/></h3>
                                    <ul class="qty">
                                        <li><p>Quantity:</p></li>
                                        <li><p><c:out value="${cartitem.count}"/></p></li>
                                    </ul>
                                    <div class="delivery">
                                        <p>Price :<c:out value="${cartitem.product.market_price}"/></p>

                                        <div class="clearfix"></div>
                                    </div>	
                                </div>
                                <div class="clearfix"></div>

                            </div>
                        </div>
                    </div>

                </c:forEach>
                <script>$(document).ready(function (c) {
                        $('.close1').on('click', function (c) {
                            $('.cart-header').fadeOut('slow', function (c) {
                                $('.cart-header').remove();
                            });
                        });
                    });
                </script>
                <div class=" cart-total">
                    <h5 class="continue" >Cart Total</h5>
                    <div class="price-details">
                        <h3>Price Details</h3>
                        <span>Total</span>
                        <span class="total1"><c:out value="${cart.total}"/></span>
                        <span>Discount</span>
                        <span class="total1">---</span>
                        <span>Delivery Charges</span>
                        <span class="total1">0.00</span>
                        <div class="clearfix"></div>				 
                    </div>	
                    <ul class="total_price">
                        <li class="last_price"> <h4>TOTAL</h4></li>	
                        <li class="last_price"><span><c:out value="${cart.total}"/></span></li>
                        <div class="clearfix"> </div>
                    </ul>
                    <a href="placeorder.htm">Produced By Cart</a>
                </div>


            </div>
        </div>

        <!-- //checkout -->	

        <%@include file="footer.jsp" %> 
    </body>
</html>