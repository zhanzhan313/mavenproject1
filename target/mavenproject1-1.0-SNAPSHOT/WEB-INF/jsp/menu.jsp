<%@page import="com.ruoran.pojo.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%  User user = new User();
    boolean ifexist = false;
    try {
        user = (User) session.getAttribute("existUser");
        ifexist = (user.getEmail() == null) ? false : true;
    } catch (Exception e) {

    }
%>
<style>
    a.clear {
        color: white;
    }
</style>
<div class="header">
    <div class="header-top-strip">
        <div class="container">
            <div class="header-top-left">
                <ul>


                    <%
                        if (!ifexist) {
                            out.print("<li><a href=account.htm><span class='glyphicon glyphicon-user'> </span>Login</a></li><li><a href=register.htm><span class='glyphicon glyphicon-lock'> </span>Create an Account</a></li>");
                        }
                        if (ifexist) {
                            out.print("<li><a href='#'><span class='glyphicon glyphicon-user'> </span> WelCome " + user.getFname() + " !</a></li><li><a href=logout.htm><span class='glyphicon glyphicon-lock'> </span>Logout</a></li>");
                        }
                    %>
                </ul>
            </div>

            <div class="header-right">
                <div class="cart box_1">
                    <a href="checkout.htm">
                        <h3> <span class=""> <c:set var="cart" scope="session" value="${mycart}"/>$ <c:out value="${cart.total}"/> </span> <img src="images/bag.png" alt=""></h3>
                    </a>	
                    <p><a class="clear" href="emptymycart.htm" >Empty cart</a></p>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- header-section-ends -->
<div class="inner-banner">
    <div class="container">
        <div class="banner-top inner-head">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo">
                        <h1><a href="${contextPath}/mavenproject1/index.htm"><span>E</span> -Shop</a></h1>
                    </div>
                </div>
                <!--/.navbar-header-->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="${contextPath}/mavenproject1/index.htm">Home</a></li>
                        <li><a href="${contextPath}/mavenproject1/sortbook.htm?type=children">children</a></li>
                        <li><a href="${contextPath}/mavenproject1/sortbook.htm?type=Programming">Programming</a></li>
                        <li><a href="${contextPath}/mavenproject1/sortbook.htm?type=Romantic">Romantic</a></li>
                        <li><a href="${contextPath}/mavenproject1/sortbook.htm?type=Cartoon">Cartoon</a></li>

                        <li><a >CONTACT</a></li>

                        <form class="form-inline" action="sortbook.htm">
                            <input class="form-control mr-sm-2" type="search" name="type" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </ul>
                </div>
                <!--/.navbar-collapse-->
            </nav>
            <!--/.navbar-->
        </div>
    </div>
</div>
                        
                        
                        