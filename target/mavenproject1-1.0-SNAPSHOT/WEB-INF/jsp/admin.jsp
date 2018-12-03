<%-- 
    Document   : admin
    Created on : Apr 26, 2018, 10:37:12 PM
    Author     : ruoran
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!DOCTYPE html>

<div class="header">
		<div class="header-top-strip">
			<div class="container">
				<div class="header-top-left">
					<ul>
                                     
                                            <li><a href='#'><span class='glyphicon glyphicon-user'> </span> WelCome Admin!</a></li><li><a href=logout.htm><span class='glyphicon glyphicon-lock'> </span>Logout</a></li>
   
                                            </ul>
				</div>
				<div class="header-right">
						<div class="cart box_1">
							<a href="checkout.htm">
								<h3> <span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)<img src="images/bag.png" alt=""></h3>
							</a>	
							<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
							<div class="clearfix"> </div>
						</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>

<table class="table">
    <thead>
        <tr>

            <th scope="col">Id</th>
            <th scope="col">First name</th>
            <th scope="col">Last name</th>
            <th scope="col">email</th>
            <th scope="col">Phone</th>
            <th scope="col">Address</th>
            <th scope="col">Detail</th>
        </tr>
    </thead>

    <tbody>
        <c:set var="allusers" scope="session" value="${allusers}"/>
        <c:forEach var="user" items="${allusers}">

            <tr>
                <th scope="row"><c:out value="${user.uid}"/></th>
                <td><c:out value="${user.fname}"/></td>
                <td><c:out value="${user.lname}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.phone}"/></td>
                <td><c:out value="${user.addr}"/></td>
                <td><a href="/userorderhistory.htm?userid=<c:out value='${user.uid}'/>">view User Order List</a></td>
       
    </tr>
</c:forEach>


</tbody>
</table>