<%-- 
    Document   : admin
    Created on : Apr 26, 2018, 10:37:12 PM
    Author     : ruoran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!DOCTYPE html>

<%@include file="menu.jsp" %> 

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
                <td><a href="${contextPath}/mavenproject1/userorderhistory.htm?userid=<c:out value='${user.uid}'/>">view User Order List</a></td>
       
    </tr>
</c:forEach>


</tbody>
</table>