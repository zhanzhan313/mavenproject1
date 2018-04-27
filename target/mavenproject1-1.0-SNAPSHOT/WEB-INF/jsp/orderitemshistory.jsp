<%-- 
    Document   : orderitemshistory
    Created on : Apr 26, 2018, 10:21:54 PM
    Author     : ruoran
--%>
  <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="menu.jsp" %> 
  <div class="cart-items">
            <div class="container">
 <c:set var="orderitems" scope="session" value="${existUserorderItems}"/>
               
                <c:forEach var="orderitem" items="${orderitems}">
                    <div class="cart-gd">
                        <div class="cart-header">
                          
                            <div class="cart-sec simpleCart_shelfItem">
                                <div class="cart-item cyc">
                                    <img src="${orderitem.productpic}" class="img-responsive" alt="">
                                </div>
                                <div class="cart-item-info">
                                    <h3> <c:out value="${orderitem.productname}"/></h3>
                                    <ul class="qty">
                                        <li><p>Quantity:</p></li>
                                        <li><p><c:out value="${orderitem.count}"/></p></li>
                                    </ul>
                                    <div class="delivery">
                                        <p>Single Price :<c:out value="${orderitem.singlepric}"/></p>
                                        <div class="clearfix"></div>
                                    </div>	
                                    <div class="delivery">
                                        <p>Subtotal :<c:out value="${orderitem.subtotal}"/></p>
                                        <div class="clearfix"></div>
                                    </div>	
                                </div>
                                <div class="clearfix"></div>

                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div></div>
<%@include file="footer.jsp" %> 