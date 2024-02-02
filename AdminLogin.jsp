<%-- 
    Document   : loginwork
    Created on : 02-Jan-2023, 6:43:15 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="CSS/Admin.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="box2">
            <div class="page">
                <h1>Admin Login </h1><br>
                
                <label>Admin Id :</label>
                <input type="id number" placeholder="Enter Employee company Id" id="cid"><br><br><br>
               
                <label>Admin Email :</label>
                <input type="Email" placeholder="Enter Employee Email Id" id="email"><br><br><br>                
                                
                <label>Admin Password  :</label>
                <input type="Password" placeholder="Enter Employee  Password" id="password"><br><br><br>
                                
                <button onclick="AdminLogin()" id="btn">Login</button>   
                <a href="AdminSignup.jsp"><button  id="btn">Signup</button></a>   
            </div>
        </div>
         
        <script type="text/javascript">
            
             function AdminLogin()
            {
          var companyid=document.getElementById("cid").value;         
          var email=document.getElementById("email").value;         
          var password=document.getElementById("password").value;
          var re2=/^[a-zA-Z0-9._]+[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$/;
            if(email===""){
                   alert("Please Enter Email");
                   document.getElementById("email").focus();
               }
               else if(!email.match(re2)){
                   alert("Please Enter valid Email");
                   document.getElementById("email").focus();
               }
         else if(companyid===""){
             alert("Please Enter companyid");
             document.getElementById("companyid").focus();
         }
         else if(password===""){
             alert("Please Enter password");
             document.getElementById("password").focus();
         }
         else{
             var r=new XMLHttpRequest();
             r.onreadystatechange=function()
             {
                 if(r.readyState===4)
                 {
                     if(r.responseText.trim()==="Valid"){
                         window.location="AdminHomePage.jsp";
                       
                     }
                     else{
                         alert(r.responseText);
                     }
                     
                 }
             };
             r.open("post","ajaxapi/AdminLoginApi.jsp?email="+email+"&password="+password+"&companyid="+companyid);
             r.send();  
             
         }
      }
               
        </script>
    </body>
</html>
