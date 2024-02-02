<%-- 
    Document   : HomePage
    Created on : 24-Mar-2023, 12:38:46 pm
    Author     : HP
--%>
<%
if(session.getAttribute("mo")==null)
{
response.sendRedirect("Index.jsp");
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" media="mediatype and|not|only (expressions)" href="print.css">

        <link href="CSS/HomePage.css" rel="stylesheet" type="text/css"/>
      <link href="CSS/FootarData.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <!--        Next Step  Slider-->
        <!-- Carousel -->
                <div id="demo" class="carousel slide" data-bs-ride="carousel">
  <!-- The slideshow/carousel -->
                   <div class="carousel-inner">
               <div class="carousel-item active">
                       <img src="Images/SlideImage0.jpg" alt="Los Angeles" class="d-block" style=width:100%;height:393px;>
                 </div>
    <div class="carousel-item">
      <img src="Images/SlideImage2.jpg" alt="Chicago" class="d-block" style=width:100%;height:393px;>
      
    </div>
    <div class="carousel-item">
      <img src="Images/SlideImage1.jpg" alt="New York" class="d-block" style=width:100%;height:393px;>
    </div>
    <div class="carousel-item">
      <img src="Images/SlideImage3.jpg" alt="New York" class="d-block" style=width:100%;height:393px;>
    </div>
  </div>
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
                </div><br>
    <center><h2>OUR SERVICES</h2></center>
    <br>
    <div class="containerbox">
        <div class="box1">
            <a href="DoctorConsulation.jsp"><img class="box-Img" src="Images/online Home.jpeg" alt=""/>
            <br>
            <br>
            <p class="PG"><b>Online Doctor Consultation for your health issues</b></p>
        </div></a>
        <div class="box2">
            
            <img class="box-Img" src="Images/HomeLab.png" alt=""/>
            <br>
            <br>
            <p class="PG"><b>Lab Test <br>comfort of your home</b></p>
        </div>
        <div class="box3">
            <img class="box-Img" src="Images/Home medicine.jpg" alt=""/>
        <br>
            <br>
            <p class="PG"><b>Medicine<br>Easily Order</b></p>
        </div>
        <div class="box4">
            <img class="box-Img" src="Images/Home Health.jpg" alt=""/>
        <br>
            <br>
            <p class="PG"><b>Medical<br>Health Care</b></p>
        </div>
    </div>
    <img src="Images/Home work1.PNG" alt="" class="f-img"/><br><br>
    <center><h1><b>Why Consult Online on Live Health Consultation</b></h1></center>
    <br><br>
    <img src="Images/HomeConsult.PNG" alt="" style="width: 100%;"/>
    <img src="Images/HomeSpecialities.PNG" alt="" style="width: 100%;"/>
    
    <%@include file="FootarData.jsp" %>
</body>
</html>
