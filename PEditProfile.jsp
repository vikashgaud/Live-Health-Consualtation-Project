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
               width:78%;
               height:600px;
               background-color:red;
               box-shadow:0px -1px 8px 6px yellow;
               position:absolute;
               top:81px;
               left:150px;
           }
           .userpic2{
               width:359px;
               height:580px;
               margin-top:10px;
               margin-left:10px;
               background-color:pink;
               text-align:center;
               color:red;
               float:left;
           }
           .userpic3{
               width:67%;
               height:580px;
               margin-top:10px;
               margin-left:10px;
               background-color:lightskyblue;
               padding-left: 192px;
               float:left;
           }
           
       </style>
    </head>
    <body>
        
       <%@include file="PatientSameData.jsp" %>
       
         <div class="container-fluid bg-danger userpic">
            <div class="userpic1">
                
            <div class="userpic2">
                <img style="width:240px;height:220px;border-radius: 120px;"src="PatientPic/<%=patientpic%>"><br><br>
<!--                    <p>Select Picture</p>-->
<!--                    <input type="file"name="f1">-->

                        <div style="font-size:30px;" ><%=name%></div>
                <br>
                <div style="color:black;">Contact No.: <%=mobile%></div>
                <br>
                <div style="color:black;">Email Id: <%=email%></div>
                <br>
                <div style="color:black;">Address: <%=address%></div>
                <br>
               
           
                  </div>
                <div class="userpic3"><br>
                    <h1><b>Patient Registration Details</b></h1><br>
    <div class="P-R">
        <label style="font-size: 22px;">
            <h3>Basic Information</h3></center></label>
        <br>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Name :</label><br>
                <input class="inp" type="text" placeholder="Enter  Name" id="name" value="<% out.print(name);%>">
            </div> <br>
            <div class="P-R-I2">
                <label>Mobile Number :</label><br>
                <input class="inp" type="text" placeholder="Enter Mobile Number"id="mobile" value="<% out.print(mobile);%>">
            </div> <br>
        </div>
        <div class="P-R1">
            <div class="P-R-I1">
                <label>Email Address :</label><br>
                <input disabled="email" class="inp" type="text" placeholder="Enter Email "id="email" value="<% out.print(email);%>">
            </div> <br>
            <div class="P-R-I2">
                <label>Address :</label><br>
                <input class="inp" type="text" placeholder="Enter Address "id="address" value="<% out.print(address);%>">
            </div> 
        </div><br><br>
                   
                <button class="reg" onclick="update()">Update Profile</button> 
                </div>
                </div>
            <script type="text/javascript">
                function update(){
                    var name=document.getElementById("name").value;
                    var mobile=document.getElementById("mobile").value;
                    var email=document.getElementById("email").value;
                    var address=document.getElementById("address").value;
                    var r=new XMLHttpRequest();
                   r.onreadystatechange=function()
                   {
                     if(r.readyState===4){
                         
                        if(r.responseText.trim()==="update"){
                             window.location="PatientProfile.jsp";
                         }
                         else{
                         alert(r.responseText);
                        }  
                    }
                   };
                   r.open("post","ajaxapi/PEditProfileApi.jsp?Name="+name+"&MobileNumber="+mobile+"&Email="+email+"&Address="+address);
                   r.send();
                   
               }
                

            </script>
    </body>
</html>
