<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>

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
        <link rel="stylesheet" type="text/css" href="css/datatables.min.css"/>
        <script src="js/jquery.min.js"></script>
        <!--start-smoth-scrolling-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>


        <script>
            var data;
            $(document).ready(function() {
                var table = $('#example').DataTable( {
                 "scrollY":"200px",
                 "scrollCollapse":true,
                  "paging":false
                } ); 

                var selected;
                $('#selectitem').click(function() {
                    selected = ($('#selectitem').find(":selected").text());
                    console.log(selected);
                    table.ajax.url("Servlet_table?selected=" + selected);
                    table.ajax.reload();
                });
                $('#example tbody').on('click', 'tr', function() {
                    data = table.row(this).data();
                      if ($(this).hasClass('selected')) {
                        $(this).removeClass('selected');
                    }

                    else {
                        table.$('tr.selected').removeClass('selected');
                        $(this).addClass('selected');
                    }

                });
                $(".scroll").click(function(event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
                $(".scroll").click(function(event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
                $("#delete").click(function() {

                    $.ajax({
                        type: "GET",
                        url: "Servlet_delete?id=" + data[0],
                        success: function(result) {
                            alert("Done");
                        }});
                    table.row('.selected').remove().draw(false);
                });
                $("#update").click(function() {
                    var edit = ($('#edit').val());
                    console.log(edit);
                    $.ajax({
                        type: "GET",
                        url: "Servlet_update?id=" + data[0] + "&edit=" + edit,
                        success: function(result) {
                            alert("Done");
                        }});
                });


            });

        </script>

        <!--start-smoth-scrolling-->


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
                            <li><a href="#"><span class="pin"> </span></a></li>
                            <li><a href="#"><span class="rss"> </span></a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 head-middle">
                        <h1><a href="index.html">${message}</a></h1>
                        <form action="Admin_logout" method="Get">
                            <input type="submit" value="logout" name="logout">
                        </form>
                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!--header-top-->
        <!--search-scripts-->


        <!--//search-scripts-->
        <!--navigation-starts-->
        <div class="navigation">
            <span class="menu"></span> 
            <ul class="navig cl-effect-16">
           <li class="active"><a href="index.jsp">Home</a></li>
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
            $("span.menu").click(function() {
                $(" ul.navig").slideToggle("slow", function() {
                });
            });</script>
        <script>
            $("#a").click(function() {
            });
        </script>
        <!--script-for-menu-->
        <!--start-breadcrumbs-->

        <!--end-breadcrumbs-->
        <!--typo-starts-->


        <div class="pages">
            <form action="Servlet_insert" method="post" enctype="multipart/form-data" >
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="imgupload">
                        <h3>File Upload:</h3>
                        <p></p>
                        Please specify a file, or a set of files:<br>
                        <input type="file" name="image" size="30" /> 
                        <br/>
                        <textarea id="edit" name="textarea" rows="10" cols="30"></textarea> 
                        <select id="selectitemforinsert" name="items_insert" style="margin-top:5%;margin-bottom:5%">
                            <option selected disabled hidden value=''></option>
                            <option value="Door-Interior">Door-Interior</option>
                            <option value="Door-Exterior">Door-Exterior</option>
                            <option value="Kitchens-Modern">Kitchens-Modern</option>
                            <option value="Kitchens-Classic">Kitchens-Classic</option>
                            <option value="LivingRooms-Corners">LivingRooms-Corners</option>
                            <option value="LivingRooms-Living">LivingRooms-Living</option>
                            <option value="LivingRooms-Sofa">LivingRooms-Sofa</option>
                            <option value="LivingRooms-CornerChairs">LivingRooms-CornerChairs</option>
                            <option value="Decorating-Units">Decorating-Units</option>
                            <option value="TV-Tables">TV-Tables</option>
                            <option value="Corner-Tables">Corner-Tables</option>
                            <option value="Middle-Tables">Middle-Tables</option>
                            <option value="Dressing-Rooms">Dressing-Rooms</option>
                            <option value="Living-Shelves">Living-Shelves</option>
                        </select>
                        <br>
                        <button class="btn btn-success"/><input type="submit" value="ADD" style="background: none ;border:none" /></button>
                    </div>
                </div>
            </form> 
            <div class="col-lg-6 col-md-6 col-sm-12 edit">
                <div class="tablepostion">
                    <table id="example" class="display" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Type</th>
                                <th>Hints</th>
                                <th>Image</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Type</th>
                                <th>Hints</th>
                                <th>Image</th>
                            </tr>
                        </tfoot>
                        <tbody>
                        </tbody>
                    </table>
                </div>
                <div class="button">
                    <div class="btupdate">
                    <button id="update" type="button" class="btn btn-danger">UPDATE</button>                       
                    </div>
                    <div class="btdelete">
                    <button id="delete" type="button" class="btn btn-danger">DELETE</button>
                    </div>
               </div>
            </div>
            <!-- /form -->

            <div class="col-lg-1 col-md-4 col-sm-6">
                <select id="selectitem" name="items">
                    <option selected disabled hidden value=''></option>
                    <option value="Door-Interior">Door-Interior</option>
                    <option value="Door-Exterior">Door-Exterior</option>
                    <option value="Kitchens-Modern">Kitchens-Modern</option>
                    <option value="Kitchens-Classic">Kitchens-Classic</option>
                    <option value="LivingRooms-Corners">LivingRooms-Corners</option>
                    <option value="LivingRooms-Living">LivingRooms-Living</option>
                    <option value="LivingRooms-Sofa">LivingRooms-Sofa</option>
                    <option value="LivingRooms-CornerChairs">LivingRooms-CornerChairs</option>
                    <option value="Decorating-Units">Decorating-Units</option>
                    <option value="TV-Tables">TV-Tables</option>
                    <option value="Corner-Tables">Corner-Tables</option>
                    <option value="Middle-Tables">Middle-Tables</option>
                    <option value="Dressing-Rooms">Dressing-Rooms</option>
                    <option value="Living-Shelves">Living-Shelves</option>

                </select>
            </div>
        </div>

        <!--typo-ends-->

        <!--footer-starts-->
        <div class="col-lg-12 col-md-12 col-sm-12">

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
                    this.value = 'Your Email';
                }">
                                <input type="submit" value="Subscribe">
                            </form>
                            <p>© 2015 Decolux. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>


                <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
            </div>
        </div>
        <script src="js/jquery-2.1.3.js"></script>



        <script src="js/jquery.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="js/index.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>



    </body>
</html>