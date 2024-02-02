<%-- 
    Document   : Index
    Created on : 24-Feb-2023, 2:45:49 pm
    Author     : HP
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/index.css" rel="stylesheet" type="text/css"/>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <script>
        function myFunction() {
  var x = document.getElementById("container1");
  if (x.className === "nav1") {
    x.className += " responsive";
  } else {
    x.className = "nav1";
  }
}
        
     </script>
    </head>
    <body>
        <div class="backp">
        <div class="container1" id="container1">
            <img class="logo" src="Images/logo.png" alt=""/>
            <img class="img1" src="Images/health.png" alt=""/>
            <ul class="nav1">
                <li class="nav-items1">
                    <a href="LoginPatient.jsp"><i class="fa fa-home" style="font-size:36px"></i></a>  
                </li>
               
                <li class=" dropdown">
          <a class="nav-items1 dropdown-toggle" href="LoginPatient.jsp" role="button" data-bs-toggle="dropdown"> Services
</a>
                    <ul class="dropdown-menu" style="width: 515px;background: #5c8a8a;">
              <li><a class="dropdown-item" href="LoginPatient.jsp">
                      <img src="Images/doctor.jpg" class="rounded-circle" alt="Cinque Terre" width="160" height="96">
                      <br><p style="margin-left: -15px;font-size: 20px;color: white;">Doctor Consulation</p>
                      </a></li>
               <li><a class="dropdown-item" href="LoginPatient.jsp">
                          <img src="Images/labtest.jpg" class="rounded-circle" alt="Cinque Terre" width="160" height="96"/>
                          <br><p style="margin-left: 47px;font-size: 20px;color: white;">Lab Test</p>
                   </a></li>
                   <li><a class="dropdown-item" href="LoginPatient.jsp">
                           <img src="Images/medicine.jpg" class="rounded-circle" alt="Cinque Terre" width="160" height="96"/>
                        <br><p style="margin-left: 15px;font-size: 20px;color: white;">Medicine Order</p>
                       </a></li>
                   <li><a class="dropdown-item" href="LoginPatient.jsp">
                           <img src="Images/Health care1.jpg" class="rounded-circle" alt="Cinque Terre" width="160" height="96"/>
                        <br><p style="margin-left: 33px;font-size: 20px;color: white;">Health Care</p>
                       </a></li>
          </ul>
        </li>
                 <li class="nav-items1">
                    <a href="LoginPatient.jsp">About us</a>  
                </li>
                <li class="nav-items1">
                    <a href="LoginPatient.jsp">Blog</a>  
                </li>
                <li class="nav-items1">
                    <a href="LoginPatient.jsp">Contact us</a>  
                </li>
            </ul>
        
        
                     <div class="L">
                         
                          <div class="dropdown boot">
    <button class="btn dropdown,boot" data-bs-toggle="dropdown">
      <img class="L1" src="Images/login.png" alt=""/>
    </button>
    <ul class="dropdown-menu"style="background-color: #00a3ca;">
        <li><a class="dropdown-item" href="LoginDoctor.jsp"><button style="height: 34px;width: 128px;border-radius: 31px;border-style: none;background-color: #e74b68;color: white;"> <b>Doctor Login</b></button></a></li>
        <li><a class="dropdown-item" href="LoginPatient.jsp"><button style="height: 34px;width: 128px;border-radius: 31px;border-style: none;background-color: #e74b68;color: white;"> <b>Patient Login</b></button></a></li>
    </ul>
                              <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
              </a>
</div>
  </div>                       
<!--                        <img class="L1" src="Images/login.png" alt=""/>-->
                         </div>  
        <h3 class="t1"><p>Your health is the biggest asset of your life...</p>
            <p>Good health means soundness physically, mentally and socially...</p>
        </h3>
        
        </div>
    </body>
</html>
