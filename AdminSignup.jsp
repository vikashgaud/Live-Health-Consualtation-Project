<%-- 
    Document   : work
    Created on : 30-Dec-2022, 7:00:19 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Sign Up Page</title>
        <link href="CSS/AdminSignup.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <div class="box2">
            <div class="page">
                <h1>Admin Sign Up Id</h1><br>
                <label>Admin Name :</label>
                <input type="text" placeholder="Enter Admin Name" id="name"><br><br>
                <label>Admin identity proof :</label>
                <input type="text" placeholder="Enter Admin identity proof" id="identity"><br><br>
                <label>Admin Mobile Number :</label>
                <input type="Mobile Number" placeholder="Enter Admin Mobile Number" id="mobile"><br><br>
                <label>Admin Email :</label>
                <input type="Email" placeholder="Enter Admin Email Id" id="email"><br><br>                
                <label>Admin company Id :</label>
                <input type="id number" placeholder="Enter Admin company Id" id="cid"><br><br>                
                <label>Admin Password  :</label>
                <input type="Password" placeholder="Enter Admin  Password" id="password"><br><br>
                <label>Conform Password  :</label>
                <input type="Password" placeholder="Enter Admin Conform Password" id="cpassword"><br><br>                
                <button onclick="savedata()" id="btn">Submit</button>   
            </div>
        </div>
        <script type="text/javascript">
            function savedata(){
                var name = document.getElementById("name").value;
                var identityproof = document.getElementById("identity").value;
                var mobile = document.getElementById("mobile").value;
                var email = document.getElementById("email").value;
                var companyid = document.getElementById("cid").value;
                var password = document.getElementById("password").value;
                var cpassword = document.getElementById("cpassword").value;
                var re1=/^\d{10}$/;
                var re2=/^[a-zA-Z0-9._]+[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$/;
                if(name===""){
                    alert("Please Enter Name");
                    document.getElementById("name").focus();
                }
                else if(identityproof===""){
                    alert("Please Enter Identity Proof");
                    document.getElementById("identity").focus();
                }
                else if(mobile===""){
                    alert("Please Enter Mobile Number");
                    document.getElementById("mobile").focus();
                }
                else if(!mobile.match(re1)){
                    alert("Please Enter Valid Mobile Number");
                    document.getElementById("mobile").focus();
                }
                else if(email===""){
                    alert("Please Enter Email Id");
                    document.getElementById("email").focus();
                }
                else if(!email.match(re2)){
                    alert("Please Enter Valid Email Id");
                    document.getElementById("email").focus();
                }
                else if(companyid===""){
                    alert("Please Enter Company Id ");
                    document.getElementById("cid").focus();
                }
                else if(password===""){
                    alert("Please Enter Password ");
                    document.getElementById("password").focus();
                }
                else if(cpassword===""){
                    alert("Please Enter Conform Password ");
                    document.getElementById("cpassword").focus();
                }
                else if(password!==cpassword){
                    alert("Please Enter Valid Password ");
                    document.getElementById("cpassword").focus();
                }
                else{
                    var r=new XMLHttpRequest();
                    r.onreadystatechange=function()
                    {
                        if(r.readyState===4){
                            alert(r.responseText);
                        }
                    };
                    r.open("post","ajaxapi/AdminSignupApi.jsp?name="+name+"&identityproof="+identityproof+"&mobile="+mobile+"&email="+email+"&companyid="+companyid+"&password="+password);
                    r.send();
                }
                
            }
        </script>
    </body>
</html>
