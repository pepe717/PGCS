<%
//Protects the pages
//if (session.getAttribute("username") == null && session.getAttribute("role") != "client") 
//{response.sendRedirect("ClientLogin.jsp");}
%>
<html>
<head>
<title>Home</title>



		<script src="css/5grid/jquery.js"></script>
		<script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>



</head>
<body>





<!-- Header -->
<iframe src="HeaderIFrameProfileAdmin.html" width=100% height=215></iframe>
<!-- End of Header -->





<!-- Session Information -->
<p><%//out.println("Session ID = "+session.getId());%></p>
<p><%//out.println("&nbsp; &nbsp; &nbsp; Logged in as : "+session.getAttribute("username"));%></p>
<p><%//out.println("Role       = "+session.getAttribute("role"));%></p>
<p><%//out.println("&nbsp; &nbsp; &nbsp; Role : "+session.getAttribute("role"));%></p>
<!-- Session Information -->




<!-- Lines Of Separations -->
<br> <br>
<!-- Lines Of Separations -->









<!-- Page Wrapper -->
<div id="wrapper" class="5grid-layout">



<!-- Banner Content -->

		
<div id="banner" class="row">
<div class="12u">
<section> 

			
<table style="width:100%">



      
  <tr>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
  </tr>
  



      
  <tr>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
  </tr>
  


  <tr>
    <td align="center" ><img src=images/blank.png></td>
    <td align="center" ><img src=images/image1.png></td>
    <td align="center" ><img src=images/image9.png></td>
    <td align="center" ><img src=images/blank.png></td>
  </tr>






      
  <tr>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
    <td align="center" >&nbsp;</td>
  </tr>
  


</table> 
</section>
</div>
</div>
<!-- End of Table -->












<!-- Marketing Content -->
<div id="marketing" class="row">
<div class="3u">
<section class="box">
<h2>&nbsp;</h2>
<ul class="style1">

</ul>
</section>
</div>











<div class="3u">
<section class="box">
<h2>Control Center</h2>
<p class="subtitle">&nbsp;</p>
<ul class="style1">
<li><a href="#">About Yourself</a></li>
<li><a href="#">Change Password</a></li>
</ul>
</section>
</div>









<div class="3u">
<section class="box">
<h2>Statistics</h2>
<p class="subtitle">&nbsp;</p>
<ul class="style1">
</ul>
</section>
</div>













</div>
</div>







<!-- Page Content -->
<div id="page" class="row">

				
<!-- Content Area -->
<div id="content" class="8u">
			
</div>
	
<!-- Sidebar Area -->
<div id="sidebar" class="4u">
				
<!-- Sidebar Section 1 -->
<section id="box1">
						
</section>

</div>
</div>
<!-- Page Content -->

<!-- Wrapper Ends Here -->








<!-- Footer -->
<iframe src="FooterConstant.html" width=100% height=150></iframe>
<!-- End of Footer -->













<!-- End of Code -->
</body>
</html>