<%-- 
    Document   : DoctorProfile
    Created on : 26-Apr-2023, 2:46:58 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/FootarData.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
       <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
        <style>
           .userpic{
             
           }
           .userpic1{
              
           }
           .userpic2{
               width:100%;
              
               margin-top:10px;
               
               background-color:pink;
               text-align:center;
               color:red;
              
           }
           .userpic3{
               width:100%;
               background-color:lightskyblue;
               color:red;
               font-size:40px;
              
           }
          
           .posi{
             position: relative;
left: 1437px;
top: 5px;
width: 64px;
           }
       </style>
    </head>
    <body onload="loadDSdata()">
        
         <%@include file="AdminSameData.jsp" %>
       
         <div class="container-fluid bg-danger userpic">
            <div class="userpic1">
                                                     
                   <div class="dropdown posi">
                  <button type="button" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown">
                   <i class='fas fa-align-justify'></i>
                  </button>
                       <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="AdminHomePage.jsp">Patient Details</a></li>
                    <li><a class="dropdown-item" href="AdminDVData.jsp">Doctor Verification</a></li>
                    <li><a class="dropdown-item" href="AdminDSData.jsp">Doctor Signup Data</a></li>
                    
                    <li><a class="dropdown-item" href="DoctorLogout.jsp">Logout <i class='fas fa-sign-out-alt'></i></a></li>
                 </ul>
                </div>
            
            <div class="userpic2">
                <img style="width:310px;height:224px;border-radius: 120px;"src="Images/logo1.png"><br><br>
<!--                    <p>Select Picture</p>-->
<!--                    <input type="file"name="f1">-->

                        <div style="font-size:20px;" >Admin</div>
                
                <div style="color:black;font-size:30px;"><%=name%></div>
                <br>
                <div style="color:black;">Company Id : <%=companyid%></div>
                <br>
                <div style="color:black;">Identity Proof: <%=identityproof%></div>
                <br>
                <div style="color:black;">Mobile No. : <%=mobile%> </div>
                <br>
                <div style="color:black;">Email Id: <%=email%> </div>
                <br>
                    
            
          
                  </div>
                <div class="userpic3">
                    <div class="modal-body">
                        <center><h1>Doctor Signup Details</h1></center>
          <div id="loaddata1"></div>
      </div>
                </div>


            </div>
        <script type="text/javascript">
            
         function loadDSdata(){
        var r=new XMLHttpRequest();
             r.onreadystatechange=function()
             {
                 if(r.readyState===4)
                 {
                         document.getElementById("loaddata1").innerHTML=r.responseText;
                         
                 }
             };
             r.open("post","ajaxapi/loadDSdataApi.jsp");
             r.send();             
         }
          </script>      
                
        

    </body>
</html>
