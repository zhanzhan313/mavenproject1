<!DOCTYPE html>
<html>
  
    <head> 
        <title>Online CD shop</title>
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
  <script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>
    </head>
    <body>
        <%@include file="menu.jsp" %>  

        <div class="registration-form">
            <div class="container">
                <div class="dreamcrub">
                    <ul class="breadcrumbs">
                        <li class="home">
                            <a href="${contextPath}/mavenproject1/index.htm" title="Go to Home Page">Home</a>&nbsp;
                            <span>&gt;</span>
                        </li>
                        <li class="women">
                            Registration
                        </li>
                    </ul>
                    <ul class="previous">
                        <li><a href="${contextPath}/mavenproject1/index.htm">Back to Previous Page</a></li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <h2>Registration</h2>
                <div class="registration-grids">
                    <div class="reg-form">
                        <div class="reg">
                            <p>Welcome, please enter the following details to continue.</p>
                            <p>If you have previously registered with us, <a href="${contextPath}/mavenproject1/account.htm">click here</a></p>
                            <form ng-app="myApp"  ng-controller="validateCtrl"
                                  name="myForm" novalidate action="registerValid.htm">
                                <ul>
                                    <li class="text-info">First Name: </li>
                                    <li><input id="fname" ng-model="fname" name="fname" type="text" required >
                                        <span style="color:red" ng-show="myForm.fname.$dirty && myForm.fname.$invalid">
                                            <span ng-show="myForm.fname.$error.required">You Must Input a name</span>
                                        </span></li>
                                </ul>
                                <ul>
                                    <li class="text-info">Last Name: </li>
                                    <li><input name="lname" type="text" ></li>
                                </ul>				 
                                <ul>
                                    <li class="text-info">Email: </li>
                                    <li><input name="email" id="email" ng-model="email" required type="text" onblur="checkEmailIfused()" ><span id="demo"></span></li>
                                    <span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
                                        <span ng-show="myForm.email.$error.required">An email must be put</span>
                                        <span ng-show="myForm.email.$error.email">Illegal email address!</span>
                                    </span>
                                </ul>
                                <ul>
                                    <li class="text-info">Password: </li>
                                    <li><input name="pass" type="password" ></li>
                                </ul>
                                <ul>
                                    <li class="text-info">Re-enter Password:</li>
                                    <li><input name="repass"  type="password" ></li>
                                </ul>
                                <ul>
                                    <li class="text-info">Mobile Number:</li>
                                    <li><input name="mobilenumber" type="text" ></li>
                                </ul>						
                                <ul>
                                    <li class="text-info">Address:</li>
                                    <li><input name="address" type="text" ></li>
                                </ul>						
                                <input type="submit" value="REGISTER NOW" onclick="checkForm()">
                                <p class="click">By clicking this button, you are agree to my  <a href="#">Policy Terms and Conditions.</a></p> 
                            </form>
                        </div>
                    </div>
                    <div class="reg-right">
                        <h3>Completely Free Account</h3>
                        <div class="strip"></div>
                        <p>Pellentesque neque leo, dictum sit amet accumsan non, dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus aliquam, odio 
                            libero tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
                        <h3 class="lorem">Lorem ipsum dolor.</h3>
                        <div class="strip"></div>
                        <p>Tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- registration-form -->

        <div class="news-letter">
            <div class="container">
                <div class="join">
                    <h6>JOIN OUR MAILING LIST</h6>
                    <div class="sub-left-right">
                        <form>
                            <input type="text" value="Enter Your Email Here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Enter Your Email Here';
                                    }" />
                            <input type="submit" value="SUBSCRIBE" />
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %> 
    </body>
</html>
<script>
var app = angular.module('myApp', []);
app.controller('validateCtrl', function($scope) {
    $scope.fname = 'Example';
    $scope.email = 'example@gmail.com';
});
</script>
<script type="text/javascript">
    function checkForm() {
        var username = document.getElementById("fname").value;
        if (username == "" || username == null) {
            var uspan = document.getElementById("uspan");
            uspan.innerHTML = "!!!!";
//            alert("!");
            return false;
        }

    }

    function checkEmailIfused() {
        var xhttp;
        if (window.XMLHttpRequest) {
            // code for modern browsers
            xhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("demo").innerHTML = this.responseText;
            }
        };
        var email = document.getElementById("email").value;
        xhttp.open("POST", "${contextPath}/mavenproject1/findbyEmail.htm?time=" + new Date().getTime() + "&useremail=" + email, true);
        xhttp.send();
    }
</script>