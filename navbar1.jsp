<%-- 
    Document   : navbar
    Created on : 02-Mar-2023, 5:10:48 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Consultation</title>
        <link href="CSS/navbar.css" rel="stylesheet" type="text/css"/>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
      </head
    <body>
        <%@include file="ValueData.jsp" %>
         <div class="container1">
            <img class="logo" src="Images/logo.png" alt=""/>
            <img class="img1" src="Images/health.png" alt=""/>
            <ul class="nav1">
                <li class="nav-items1">
                    <a href="DoctorHomePage.jsp"><i class="fa fa-home" style="font-size:36px"></i></a>  
                </li>
                <li style="color: white;font-weight: bold;"><%=name%></li>
            </ul>
        </div>
                     <div class="L"><a href="DoctorProfile.jsp">
                        <img class="L1" src="doctorpic/<%=dr_pic%>" alt=""/>
                         </a></div> 
        
    </body>
</html>