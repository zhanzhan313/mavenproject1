<!DOCTYPE html>
<html>
<head>
<title>Eshop a Flat E-Commerce Bootstrap Responsive Website Template | Contact :: 小贝壳网站模板</title>
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
	<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
</head>
<body>
	<!-- header-section-starts -->
		
		<%@include file="menu.jsp" %> 
		
<!-- contact-page -->
<div class="contact">
	<div class="container">
	<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="${contextPath}/WEBToolFinal/index.htm" title="Go to Home Page">Home</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="women">
                       Contact
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="${contextPath}/WEBToolFinal/index.htm">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
		<div class="contact-info">
			<h2>FIND US HERE</h2>
		</div>
		<div class="contact-map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2949.1274194639473!2d-71.09136038410577!3d42.33980667918823!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e37a1999cf5ce1%3A0xc97b00e66522b98c!2z5Lic5YyX5aSn5a2m!5e0!3m2!1szh-CN!2sin!4v1524517757812" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
		<div class="contact-form">
			<div class="contact-info">
				<h3>CONTACT FORM</h3>
			</div>
			<form>
				<div class="contact-left">
					<input type="text" placeholder="Name" required>
					<input type="text" placeholder="E-mail" required>
					<input type="text" placeholder="Subject" required>
				</div>
				<div class="contact-right">
					<textarea placeholder="Message" required></textarea>
				</div>
				<div class="clearfix"></div>
				<input type="submit" value="SUBMIT">
			</form>
		</div>
	</div>
</div>
<!-- //contact-page -->
	
		<%@include file="footer.jsp" %> 
</body>
</html>