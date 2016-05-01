<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Decolux a Interior & Furniture Category Flat Bootstarp responsive Website Template | Gallery :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <link rel="stylesheet" href="dist/css/lightbox.min.css">

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
                        <h1><a href="index.html">BeTna</a></h1>
                    </div>
                 
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--header-top-->
    
        <!--//search-scripts-->
        <!--navigation-starts-->
        <div class="navigation">
            <span class="menu"></span> 
            <ul class="navig cl-effect-16">
                	        <li><a href="index.jsp">Home</a></li>
				<li><a href="Display_images_inPages_twokinds?type1=Door-Interior&type2=Door-Exterior&page=gallery_doors.jsp">Doors</a></li>
				<li><a href="Display_images_inPages_twokinds?type1=Kitchens-Modern&type2=Kitchens-Classic&page=gallery_kitchens.jsp">Kitchens</a></li>
				<li><a href="Display_images_inPages_fourkinds?type1=LivingRooms-Corners&type2=LivingRooms-Living&type3=LivingRooms-Sofa&type4=LivingRooms-CornerChairs&page=gallery_livingrooms.jsp">Living Rooms</a></li>
				<li><a href="Display_images_inPages?type=Decorating-Units&page=gallery_Decorations.jsp">Decorating Units</a></li>
			        <li><a href="Display_images_inPages_threekinds?type1=TV-Tables&type2=Corner-Tables&type3=Middle-Tables&page=gallery_tables.jsp">Tables</a></li>
				<li><a href="Display_images_inPages?type=Dressing-Rooms&page=gallery_dressing.jsp">Dressing Rooms</a></li>
				<li><a href="Display_images_inPages?type=Living-Shelves&page=gallery_livingshelves.jsp">Living Shelves</a></li>
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
        <div class="breadcrumbs">
            <div class="container">
                <div class="breadcrumbs-main">
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li class="active">Gallery</li>
                    </ol>
                </div>
            </div>
        </div>
        <!--end-breadcrumbs-->
        <!--gallery-starts-->
        <div class="gallery">
            <div class="container">
                <div class="gallery-top heading">
                    <h2>Decorating Units</h2>
                </div>
                <div class="gallery-bottom">
                    <div class="gallery-grids">
                            <div  class="g-1">
                                <c:forEach items="${images}" var="image">                                    
<a class="example-image-link" href="Get_image?id=${image.id}" data-lightbox="example-set" data-title=${image.hints}>
<img class="example-image" src="Get_image?id=${image.id}" alt="" style="height: 250px ;width: 250px; margin-top:2%;margin-bottom: 2%"/></a> 
                                </c:forEach>
                           
                        </div>

                        <div class="clearfix"> </div>					
                    </div>
                </div>
            </div>
        </div>
        <!--gallery-end-->
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
                            <input type="text" value="Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Your Email';}">
                            <input type="submit" value="Subscribe">
                        </form>
                        <p>© 2015 Decolux. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
           
            <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        </div>
        <!--footer-end-->
          <script src="dist/js/lightbox-plus-jquery.min.js"></script>

    </body>
</html>