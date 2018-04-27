<%-- 
    Document   : errorPage
    Created on : Apr 23, 2018, 12:59:20 PM
    Author     : ruoran
--%>
<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="./js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <style>
    .col-center-block {  
    margin-left: 30%;  
    margin-right: auto;  
}  
    </style>

    <body>
        	<%@include file="menu.jsp" %> 
        	<%--<%@include file="banner.jsp" %>--%> 
                <div class="col-center-block"> <h2>Please input a valid type!</h2></div>   
        	<%@include file="footer.jsp" %> 
                
    </body>
</html>
