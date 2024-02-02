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
  <header><%@include file="navbar1.jsp" %></header><br>
  
    <center><h1><b>Doctor Verification Registration Details</b></h1></center><br>
        <form method="post" action="ajaxapi/UploadDocumentApi.jsp" enctype="multipart/form-data">
    <div class="P-R">
        <label style="font-size: 22px;">
            <h3>Important Information</h3></label>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Name :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter  Name" id="name" name="name" value="<% out.print(name);%>">
            </div> 
            <div class="P-R-I2">
                <label>Mobile Number :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Mobile Number"id="mobile"name="mobile" value="<% out.print(mobile);%>">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Email Address :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Email Address"id="email"name="email" value="<% out.print(email);%>">
            </div> 
            <div class="P-R-I2">
                <label>Age :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Age "id="age"name="age">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label> Joining Date :</label><br>
                <input class="form-group inp" type="date" placeholder="Enter Joining Date"id="joining_date"name="joining_date">
            </div> 
            <div class="P-R-I2">
                <label>Gender</label><br>
                <select class="form-group inp" type="Select"id="gender"name="gender">
                    <option>Select Gender</option>
                    <option>Male</option>
                    <option>Female</option>
                </select>
            </div> 
        </div><br><br>
        
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Specialist :</label><br>
                <input class="form-group inp" type="Select" id="specialist"name="specialist" value="<% out.print(specialist);%>">

            </div>
            <div class="P-R-I2">
                <label>Experience :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter Experience"id="experience"name="experience">
            </div> 
        </div><br><br>
        
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Qualification 1 :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Qualification 1"id="qualification1"name="qualification1">
            </div> 
            <div class="P-R-I2">
                <label>Qualification 2 :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Qualification 2"id="qualification2"name="qualification2">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>License Number :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter License Number" id="license_number" name="license_number" value="<% out.print(license);%>">
            </div> 
            <div class="P-R-I2">
                <label>Speak Language :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter Speak Language"id="speak_language"name="speak_language">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Video Fee :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Video Fee"id="video_fee"name="video_fee">
            </div> 
            <div class="P-R-I2">
                <label>Clinic Fee :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter Clinic Fee"id="clinic_fee"name="clinic_fee">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Home Fee :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Home Fee"id="home_fee"name="home_fee">
            </div> 
            <div class="P-R-I2">
                <label>Available Time :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter Available Time"id="time"name="abailable_time">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Aadhar Number :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Aadhar Number"id="aadhar_number"name="aadhar_number" value="<% out.print(aadhar);%>">
            </div> 
            <div class="P-R-I2">
            <label>Village :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter Village"id="village"name="village" value="<% out.print(address);%>">
            </div> 
        </div><br><br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>State :</label><br>
                <input class="form-group inp" type="text" placeholder="Enter State"id="state"name="state">
            </div> 
            <div class="P-R-I2">
                <label>City :</label>
                <br>
                <input class="form-group inp" type="text" placeholder="Enter City"id="city"name="city">
            </div> 
        </div><br><br>
<!--        <form method="post" action="ajaxapi/UploadDocumentApi.jsp" enctype="multipart/form-data">-->
        <div class="P-R1">
            <div class="from-group P-R-I1">
                <label>Aadhar IMG PDF Upload :</label>
                <br>
                <input class="form control inp" type="file"name="f1" placeholder="Aadhar IMG PDF Upload"id="aadhar_img">
            </div> 
            <div class="form-group P-R-I2">
                <label>Upload Certificate :</label>
                <br>
                <input class="form control inp" type="file"name="f2" placeholder="Enter Upload Certificate"id="certificate_img">
            </div> 
        </div><br><br><br>
   
        <input type="checkbox"><label class="labe">By using the Website, availing our services and/ or by providing your information, you give your express consent to the acceptance of the Terms and Conditions and the Privacy policy of this website.</label>
        <br><br>
        <button type="submit" class="btn btn-success reg" >REGISTER</button>
    </div><br>
        </form>
        <%@include file="FootarData.jsp" %>
    </body>

</html>