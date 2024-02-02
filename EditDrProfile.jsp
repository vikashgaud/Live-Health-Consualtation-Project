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
        <title>Doctor Verification</title>
        <link href="CSS/DoctorVerification.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/FootarData.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
  
      <%@include file="ValueData1.jsp" %>
    <center><h1><b>Doctor Verification Registration Update</b></h1></center><br>
        
    <div class="P-R"style="height: 661px;">
        <label style="font-size: 22px;">
            <h3>Important Information</h3></label>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Name :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter  Name" id="name" disabled="name"  value="<% out.print(name);%>">
            </div> 
            <div class="P-R-I2">
                <label>Mobile Number :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Mobile Number"id="mobile" value="<% out.print(mobile);%>">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Email Address :</label><br>
                <input class="form-group inp" type="text" disabled="email" placeholder="Enter Email Address"id="email" value="<% out.print(email);%>">
            </div> 
            <div class="P-R-I2">
                <label>Age :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Age "id="age" value="<% out.print(age);%>">
            </div> 
        </div><br><br>
        
        
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Specialist :</label><br>
                <input class="form-group inp" type="Select" id="specialist" disabled="specialist"  value="<% out.print(specialist);%>">
               
            </div>
            <div class="P-R-I2">
                <label>Experience :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter Experience"id="experience" value="<% out.print(experience);%>">
            </div> 
        </div><br><br>
        
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Qualification 1 :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Qualification 1"id="qualification1" disabled="qualification1"  value="<% out.print(qualification1);%>">
            </div> 
            <div class="P-R-I2">
                <label>Qualification 2 :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Qualification 2"id="qualification2" disabled="qualification2"  value="<% out.print(qualification2);%>">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>License Number :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter License Number" id="license_number" disabled="license_number"  value="<% out.print(license_number);%>">
            </div> 
            <div class="P-R-I2">
                <label>Speak Language :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter Speak Language"id="speak_language" value="<% out.print(speak_language);%>">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Video Fee :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Video Fee"id="video_fee" value="<% out.print(video_fee);%>">
            </div> 
            <div class="P-R-I2">
                <label>Clinic Fee :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter Clinic Fee"id="clinic_fee" value="<% out.print(clinic_fee);%>">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Home Fee :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Home Fee"id="home_fee" value="<% out.print(home_fee);%>">
            </div> 
            <div class="P-R-I2">
                <label>Available Time :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter Available Time"id="time" value="<% out.print(abailable_time);%>">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Aadhar Number :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Aadhar Number"id="aadhar_number" disabled="aadhar_number"  value="<% out.print(aadhar);%>">
            </div> 
            <div class="P-R-I2">
            <label>Village :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Village"id="village" value="<% out.print(village);%>">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>State :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter State"id="state" value="<% out.print(state);%>">
            </div> 
            <div class="P-R-I2">
                <label>City :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter City"id="city" value="<% out.print(city);%>">
            </div>
        </div>
           
        <button onclick="update1()" class="btn btn-success reg">Update</button>
    </div><br>
        
        <%--<%@include file="FootarData.jsp" %>--%>
    <script type="text/javascript">
                function update1(){
                    
                    var email=document.getElementById("email").value;
                    var mobile=document.getElementById("mobile").value;
                    var age=document.getElementById("age").value;
                    var experience=document.getElementById("experience").value;
                    var video_fee=document.getElementById("video_fee").value;
                    var clinic_fee=document.getElementById("clinic_fee").value;
                    var home_fee=document.getElementById("home_fee").value;
                    var abailable_time=document.getElementById("time").value;
                    var village=document.getElementById("village").value;
                    var state=document.getElementById("state").value;
                    var city=document.getElementById("city").value;
                    var r=new XMLHttpRequest();
                   r.onreadystatechange=function()
                   {
                     if(r.readyState===4){
                         
                        if(r.responseText.trim()==="update"){
                             window.location="DoctorProfile.jsp";
                         }
                         else{
                         alert(r.responseText);
                        }  
                    }
                   };
                   r.open("post","ajaxapi/DrEditProfileApi.jsp?age="+age+"&mobile="+mobile+"&experience="+experience+"&villahe="+village+"&video_fee="+video_fee+"&clinic="+clinic_fee+"&home_fee="+home_fee+"&abailable_time="+abailable_time+"&village="+village+"&state="+state+"&city="+city+"&email="+email);
                   r.send();
                   
               }
                

            </script>
    </body>

</html>