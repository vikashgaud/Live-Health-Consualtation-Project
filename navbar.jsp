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
        <%@include file="ValueData3.jsp" %>
         <div class="container1">
            <img class="logo" src="Images/logo.png" alt=""/>
            <img class="img1" src="Images/health.png" alt=""/>
            <ul class="nav1">
                <li class="nav-items1">
                    <a href="HomePage.jsp"><i class="fa fa-home" style="font-size:36px"></i></a>  
                </li>
               
                <li class=" dropdown">
               <a class="nav-items1 dropdown-toggle" href="DoctorConsulation.jsp" role="button" data-bs-toggle="dropdown"> Services</a>
                    <ul class="dropdown-menu" style="width: 515px;background: #5c8a8a;">
              <li><a class="dropdown-item" href="DoctorConsulation.jsp">
                      <img src="Images/doctor.jpg" class="rounded-circle" alt="Cinque Terre" width="160" height="96">
                      <br><p style="margin-left: -15px;font-size: 20px;color: white;">Doctor Consultation</p>
                      </a></li>
               <li><a class="dropdown-item" href="#">
                          <img src="Images/labtest.jpg" class="rounded-circle" alt="Cinque Terre" width="160" height="96"/>
                          <br><p style="margin-left: 47px;font-size: 20px;color: white;">Lab Test</p>
                   </a></li>
                   <li><a class="dropdown-item" href="#">
                           <img src="Images/medicine.jpg" class="rounded-circle" alt="Cinque Terre" width="160" height="96"/>
                        <br><p style="margin-left: 15px;font-size: 20px;color: white;">Medicine Order</p>
                       </a></li>
                   <li><a class="dropdown-item" href="Blog.jsp">
                           <img src="Images/Health care1.jpg" class="rounded-circle" alt="Cinque Terre" width="160" height="96"/>
                        <br><p style="margin-left: 33px;font-size: 20px;color: white;">Health Care</p>
                       </a></li>
          </ul>
        </li>
                 <li class="nav-items1">
                    <a href="AboutPage.jsp">About us</a>  
                </li>
                <li class="nav-items1">
                    <a href="Blog.jsp">Blog</a>  
                </li>
                <li class="nav-items1">
                    <a href="#">Contact us</a>  
                </li>
            </ul>
        </div>
                     <div class="L"><a href="PatientProfile.jsp">
                        <img class="L1" src="PatientPic/<%=patientpic%>" alt="">
                         </a></div> 
        
    </body>
</html>