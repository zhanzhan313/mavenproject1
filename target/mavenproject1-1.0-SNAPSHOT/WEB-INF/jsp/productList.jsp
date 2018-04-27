<%-- 
    Document   : ProDuctList
    Created on : Apr 24, 2018, 2:30:00 AM
    Author     : ruoran
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .layout-container {

                max-width: 1140px;
                padding-right: 30px;
                padding-left: 30px;
                margin-right: auto;
                margin-left: auto;
            }
            .product-grid {
                padding-top: 5%;
                padding-bottom: 5%;
                margin-right: 0%;
            }
            .product-image {
                width: 100%;
                height: 0;
                padding-bottom: 66.66667%;
                background-position: 50% 50%;
                background-repeat: no-repeat;
                background-size: cover;
            }
            .image-container {
                position: relative;
            }
            .image-container:hover .product-image{
                opacity: 0.3;
                background-size:120%;
            }
            .image-container:hover .overlay{
                opacity: 1;
            }
            .overlay {
                transition: .5s ease;
                opacity: 0;
                position: absolute;
                top: 50%;
                left: 50%;
                text-align: center;
                transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%)
            }
            .overlay .button {
                width: 160px;
                line-height: 38px;
            }
            .overlay .button:first-child {
                margin-bottom: 5px;
            }
            .product-details {
                padding-top: 15px;
                text-align: center;
                margin-bottom: 40px;
            }
            .product-brand {
                display: block;
                margin: .5em 0;
                color: #7d7d7d;
            }
            .product-title {
                text-transform: uppercase;
                letter-spacing: .05em;
                margin-top: 0;
                margin-bottom: .5em;
                font-size: 1em;
                line-height: 1.2;
                font-weight: 400;
                font-family: Roboto;
            }
            .product-price {
                font-size: 1.14286em;
                color: #9f9f9f;
                font-family: Playfair Display;
            }
            .product-price {
                font-size: 1.14286em;
                color: #6e7e94;
                font-family: Playfair Display;
            }
            .btn-success{
                background-color: #7d7d7d;
                border: 0ch;
            }
            .background-image{
                margin-right: auto;
                margin-left: 17%;
                margin-bottom: 25%;
                border:1px solid #000;
                width:65%; 
                height:200px;
            }
            .buttoncontainer{
                margin-left: 45%;
                margin-top: 5%;
                margin-buttom: 5%;
            }
            .Contentcontainer{
                margin-left: 28%;
                margin-top: 5%;
            }
            .background-image-detail{
                margin-right: auto;
                margin-left: auto;
                margin-bottom: 25%;
                border:1px solid #000;
                width:60%; 

            }
            .but{
                margin-left: 28%;
                margin-top: 5%;
            }
            .product-image-detail{
                width: 90%;
                height: 0;
                margin-right: auto;
                margin-left: auto;
                padding-left: 30%;
                padding-bottom: 55%;
                background-position: 50% 50%;
                background-repeat: no-repeat;
                background-size: cover;
            }
            .height-380{
                height: 380px;
            }


        </style>

        <link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!--<script src="./js/jquery.min.js"></script>-->
        <!-- Custom Theme files -->
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
        <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
    </head>


    <body>
<%@include file="menu.jsp" %> 
        <div class="layout-container">
            <div id="formItem_wrap" class="product-grid row">

            </div>
        </div>
     
        <%  
            String booktype =(String) session.getAttribute("booktype");
             String urll = "https://www.googleapis.com/books/v1/volumes?q="+booktype+"&filter=paid-ebooks&printType=books&orderBy=newest&projection=full&maxResults=40";
   
            %>

        <script type="text/javascript">
     
           var url='<%=urll%>';
           console.log(url);
           

            function getBooks(url, callback) {
                var xHttp = new XMLHttpRequest();
                xHttp.open('GET', url, true);
                xHttp.responseType = 'text';
                xHttp.onload = function (e) {
                    if (this.status == 200) {
                        callback(JSON.parse(this.responseText));
                    }
                };
                xHttp.send();
            }
            getBooks(url, function (data) {
                var mydiv = document.getElementById("formItem_wrap");
                for (var i = 0; i < data.items.length; i++)
                {
                    if (data.items[i].saleInfo.saleability !== 'NOT_FOR_SALE') {
                        var div3 = document.createElement("div");
                        var divIC = document.createElement("div");
                        var divPi = document.createElement("div");
                        var divOL = document.createElement("div");
                        var divView = document.createElement("div");
                        var divADD = document.createElement("div");
                        var aa = document.createElement("a");
                        var aa2 = document.createElement("a");
                        var div121 = document.createElement("div");
                        var div122 = document.createElement("div");
                        var divrow = document.createElement("div");

                        divADD.setAttribute("class", "btn btn-success");
//                                divADD.setAttribute("(click)","addToCart(product)");
                        divADD.innerHTML = "ADD";
                        divView.setAttribute("class", "btn btn-success");
                        aa.appendChild(divView);
                        aa.setAttribute("href", data.items[i].volumeInfo.infoLink);
                        aa2.appendChild(divADD);
                        var bigImg = document.createElement("img");
                        bigImg.setAttribute("class", "background-image");
                        if (data.items[i].volumeInfo && data.items[i].volumeInfo.imageLinks && data.items[i].volumeInfo.imageLinks.thumbnail) {
                            bigImg.src = data.items[i].volumeInfo.imageLinks.thumbnail;
                            var dest = data.items[i].volumeInfo.imageLinks.thumbnail;
                            var name = data.items[i].volumeInfo.title;
                            dest = dest.replace(/\&/g, "%26");
                            name = name.replace(/\'/g, "%27");
                            aa2.setAttribute("href", "addtocartt.htm?bookname=" + name + "&bookimg=" + dest + "&bookprice=" + data.items[i].saleInfo.retailPrice.amount + "&bookid=" + data.items[i].id);
                        } else {
                            bigImg.src = "https://cdn.browshot.com/static/images/not-found.png";
                            aa2.setAttribute("href", "addtocartt.htm?bookname=" + data.items[i].volumeInfo.title + "&bookimg=https://cdn.browshot.com/static/images/not-found.png" + "&bookprice=" + data.items[i].saleInfo.retailPrice.amount + "&bookid=" + data.items[i].id);
                        }
                        div121.setAttribute("class", "col-12");
                        div122.setAttribute("class", "col-12");
                        divrow.setAttribute("class", "row");




                        divView.innerHTML = "View Detail";
                        divOL.appendChild(aa);
                        divOL.appendChild(aa2);

                        div3.setAttribute("class", "col-md-4 col-sm-12 col-lg-3 center-align height-380");
                        divOL.setAttribute("class", "overlay");
                        divIC.setAttribute("class", "image-container");

                        divPi.appendChild(bigImg);
                        divIC.appendChild(divPi);
                        divIC.appendChild(divOL);
                        div121.appendChild(divIC);

                        var divPd = document.createElement("div");
                        divPd.setAttribute("class", "product-details");
                        var divpt = document.createElement("div");
                        divpt.setAttribute("class", "product-title");
                        divpt.innerHTML = data.items[i].volumeInfo.title;
                        var divpp = document.createElement("div");
                        if (data.items[i].saleInfo.saleability !== 'NOT_FOR_SALE') {
                            divpp.innerHTML = "\$" + data.items[i].saleInfo.retailPrice.amount + "";
                        } else
                            divpp.innerHTML = "Not for sale";
                        divpp.setAttribute("class", "product-price");
                        divPd.appendChild(divpt);
                        divPd.appendChild(divpp);
                        div122.appendChild(divPd);

                        divrow.appendChild(div121);
                        divrow.appendChild(div122);
                        div3.appendChild(divrow);
                        mydiv.appendChild(div3);
                    }

                }
            }
            //            data.items.forEach(element => {
            //             
            //            });
            );



        </script>
	<%@include file="footer.jsp" %> 

    </body>

</html>