<%@page import="Model.AdminClass"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
    if(session != null){
   Object user=session.getAttribute("username");
  if(user != null)response.sendRedirect("admin_page.jsp");
    }else{
     session = request.getSession();
    response.sendRedirect("login.jsp");
}
%>

<html>
<head>
<title>Decolux a Interior & Furniture Category Flat Bootstarp responsive Website Template | Short Codes :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Decolux Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/styles.css">
<script src="js/jquery.min.js"></script>
<!--start-smoth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->
	 <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    

</head>
<body>
	<!--header-top-->
	<div class="header-top" id="home">
		<div class="container">
			<div class="head-main">
				<div class="col-md-4 head-left">
					<ul>
						<li><a href="#"><span class="fb"> </span></a></li>
						<li><a href="#"><span class="twit"> </span></a></li>
						
					</ul>
				</div>
				<div class="col-md-4 head-middle">
					<h1><a href="index.html">Decolux</a></h1>
				</div>
				<div class="col-md-4 head-right">
					<div id="sb-search" class="sb-search">
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--header-top-->
	<!--search-scripts-->
	<script src="js/classie.js"></script>
	<script src="js/uisearch.js"></script>
		<script>
		new UISearch( document.getElementById( 'sb-search' ) );
		</script>
	<!--//search-scripts-->
	<!--navigation-starts-->
	<div class="navigation">
		<span class="menu"></span> 
			<ul class="navig cl-effect-16">
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="gallery.jsp">Doors</a></li>
				<li><a href="gallery.jsp">Kitchens</a></li>
				<li><a href="gallery.jsp">Living Rooms</a></li>
				<li><a href="gallery_Decorations.jsp">Decorating Units</a></li>
			        <li><a href="gallery.jsp">Tables</a></li>
				<li><a href="gallery_dressing.jsp">Dressing Rooms</a></li>
				<li><a href="gallery_livingshelves.jsp">Living Shelves</a></li>
				<li><a href="contact.jsp">Contact</a></li>
		    	<li><a href="login.jsp">Admin</a></li>	
		</ul>
	</div>
	<!--navigation-end-->
	<!--script-for-menu-->
	<script>
		$("span.menu").click(function(){
			$(" ul.navig").slideToggle("slow" , function(){
			});
		});
	</script>
	<!--script-for-menu-->
	<!--start-breadcrumbs-->
	
	<!--end-breadcrumbs-->
	<!--typo-starts-->
	<div class="pages">
			  <div class="form"><div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="Admin_Login" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="text" name="username" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="password" required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block" style="margin: auto"/><input type="submit" value="LOGIN IN" /></button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

	</div>	
	<!--typo-ends-->
	<!--footer-starts-->
	<div class="footer">
		<div class="container">
			<div class="footer-top">
				<div class="col-md-3 footer-left">
					<div class="a-1">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						<p>The company name, Glasglow Dr 40 Fe 72.</p>
					</div>
					<div class="a-2">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						<p><a href="mailto:example@email.com">contact@example.com</a></p>
					</div>
				</div>
				<div class="col-md-3 footer-left">
					<div class="a-1">
						<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
						<p>+755 265 8822</p>
					</div>
					<div class="a-2">
						<span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>
						<p>+955 326 3695</p>
					</div>
				</div>
				<div class="col-md-6 footer-right">
					<form>
						<input type="text" value="Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Email';}">
						<input type="submit" value="Subscribe">
					</form>
					<p>© 2015 Decolux. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--footer-end-->
</body>
</html>