<%-- 
    Document   : orderhistory
    Created on : Apr 26, 2018, 9:52:49 PM
    Author     : ruoran
--%>
<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="./js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
 <style>  
.col-center-block {  
     
    margin-left: 30%;  
    margin-right: auto;  
}  
</style> 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="menu.jsp" %> 
 <c:set var="orders" scope="session" value="${existUserOrder}"/>
               
                <c:forEach var="order" items="${orders}">
                    <div class="col-center-block">
                    <div class="cart-gd">
                        <div class="cart-header">
                            
                            <div class="cart-sec simpleCart_shelfItem">
                                 <div class="cart-item cyc">
                                
                                </div>
                                <div class="cart-item-info">
                                    <h3> <c:out value="${order.oid}"/></h3>
                                    <ul class="qty">
                                        <li><p>Quantity:</p></li>
                                        <li><p><c:out value="${order.total}"/></p></li>
                                    </ul>
                                    <div class="delivery">
                                        <p>Single Price :<c:out value="${order.ordertime}"/></p>
                                        <div class="clearfix"></div>
                                    </div>	
                                   <a href="${contextPath}/mavenproject1/ViewSingleorder.htm?Ordernumber=<c:out value='${order.oid}'/>">view Order Detail</a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            </div>
                        </div>
                    </div>
                
                </c:forEach>
<%@include file="footer.jsp" %> 