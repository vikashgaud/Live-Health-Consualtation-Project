<%-- 
    Document   : VideoAppointment
    Created on : 21-Mar-2023, 10:00:17 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Video Appointment</title>
        <link href="CSS/VideoAppointment.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/FootarData.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script type="text/javascript">
            function patientappointmentdata(){
                var name=document.getElementById("name").value;
                var mobile=document.getElementById("mobile").value;
                var email=document.getElementById("email").value;
                var age=document.getElementById("age").value;
                var date=document.getElementById("date").value;
                var gender=document.getElementById("gender").value;
                var state=document.getElementById("state").value;
                var city=document.getElementById("city").value;
                var dr_appoint=document.getElementById("dr_appoint").value;
                 var re1=/^\d{10}$/;
              var re2=/^[a-zA-Z0-9._]+[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$/;
               if(name===""){
                   alert("Please Enter Name");
                   document.getElementById("name").focus();
               }
               else if(mobile===""){
                   alert("Please Enter Mobile");
                   document.getElementById("mobile").focus();
               }
               else if(!mobile.match(re1)){
                   alert("Please Enter Correct Mobile Number");
                   document.getElementById("mobile").focus();
               }
               else if(email===""){
                   alert("Please Enter Email");
                   document.getElementById("email").focus();
               }
               else if(!email.match(re2)){
                   alert("Please Enter valid Email");
                   document.getElementById("email").focus();
               }
               else if(age===""){
                   alert("Please Enter Age");
                   document.getElementById("age").focus();
               }
               else if(date===""){
                   alert("Please Enter Date");
                   document.getElementById("date").focus();
               }
             
               else if(gender===""){
                   alert("Please Enter Gender");
                   document.getElementById("gender").focus();
               }
               else if(state===""){
                   alert("Please Enter State");
                   document.getElementById("state").focus();
               }
               else if(city===""){
                   alert("Please Enter City");
                   document.getElementById("city").focus();
               }
               else{
                     var r=new XMLHttpRequest();
             r.onreadystatechange=function()
             {
                 if(r.readyState===4)
                 {
                         alert(r.responseText);
                         
                 }
             };
             r.open("post","ajaxapi/PatientAppointmentDataApi.jsp?name="+name+"&mobile="+mobile+"&email="+email+"&age="+age+"&date="+date+"&gender="+gender+"&state="+state+"&city="+city+"&dr_appoint="+dr_appoint);
             r.send();             

              }   
               } 

        </script>
    </head>
    <body>
  <header><%@include file="navbar.jsp" %></header><br>
          <%@include file="ValueData.jsp" %>
    <center><h1><b>Patient Appointment </b></h1></center><br>
    <div class="P-R">
        <label style="font-size: 22px;">
            <h3>Basic Information</h3></label>
        
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Name :</label><br>
                <input class="inp" type="text" placeholder="Enter  Name" id="name">
            </div> 
            <div class="P-R-I2">
                <label>Mobile Number :</label><br>
                <input class="inp" type="text" placeholder="Enter Mobile Number"id="mobile">
            </div> 
        </div><br><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Email Address :</label><br>
                <input class="inp" type="text" placeholder="Enter Email Address"id="email">
            </div> 
            <div class="P-R-I2">
                <label>Age :</label><br>
                <input class="inp" type="text" placeholder="Enter Age "id="age">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Date :</label><br>
                <input class="inp" type="date" placeholder="Enter Date"id="date">
            </div> 
            <div class="P-R-I2">
                <label>Gender</label><br>
                <select class="inp" type="Select"id="gender">
                    <option>Select Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                </select>
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>State :</label><br>
                <input class="inp" type="text" placeholder="Enter State"id="state">
            </div> 
            <div class="P-R-I2">
                <label>City :</label>
                <br>
                <input class="inp" type="text" placeholder="Enter City"id="city">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Dr. Email :</label><br>
                <input class="inp" type="text" placeholder="Enter Doctor Email"id="dr_appoint" value="<%out.print(request.getParameter("em"));%>">
            </div>
            </div><br><br><br>
        <input type="checkbox"><label class="labe">By using the Website, availing our services and/ or by providing your information, you give your express consent to the acceptance of the Terms and Conditions and the Privacy policy of this website.</label>
        <br><br>
        <button class="reg" onclick="patientappointmentdata()">REGISTER</button>
    </div><br>
        <%@include file="FootarData.jsp" %>
    </body>

</html>