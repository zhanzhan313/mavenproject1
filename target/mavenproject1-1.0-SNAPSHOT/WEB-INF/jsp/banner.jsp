<%-- 
    Document   : banner
    Created on : Apr 26, 2018, 9:24:57 PM
    Author     : ruoran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="banner">
		<div class="container">
<div class="banner-bottom">
	<div class="banner-bottom-left">
		
	</div>
	<div class="banner-bottom-right">
		<div  class="callbacks_container">
					<ul class="rslides" id="slider4">
					<li>
								<div class="banner-info">
									<h3>Shop your favorite book!</h3>
									<p>Start your shopping here...</p>
								</div>
							</li>
							<li>
								<div class="banner-info">
								   <h3>Shop Online</h3>
									<p>Start your shopping here...</p>
								</div>
							</li>
							<li>
								<div class="banner-info">
								  <h3>Quick Delivery!</h3>
									<p>Start your shopping here...</p>
								</div>								
							</li>
						</ul>
					</div>
					<!--banner-->
	  			<script src="js/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager:true,
			        nav:false,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
	</div>
<div class="clearfix"> </div>
</div>
	<div class="shop">
		<a href="${contextPath}/mavenproject1/sortbook.htm?type=science">SHOP  NOW</a>
	</div>
	</div>
		</div>