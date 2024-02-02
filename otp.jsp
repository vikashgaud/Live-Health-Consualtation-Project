<%-- 
    Document   : otp
    Created on : 03-Apr-2023, 4:02:39 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OTP Verification</title>
                    <script type="text/javascript">
                function verifyotp(){
                    var otp =document.getElementById("totp").value;
                    var email=document.getElementById("temail").value;
                    var re2=/^[a-zA-Z0-9._]+[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$/;
       
                    if(otp===""){
                        alert("Please Enter Valid OTP");
                        document.getElementById("totp").focus();
                    }
                    else if(email===""){
                   alert("Please Enter Email");
                   document.getElementById("email").focus();
               }
               else if(!email.match(re2)){
                   alert("Please Enter valid Email");
                   document.getElementById("email").focus();
               }
                    else{
                        var r=new XMLHttpRequest();
                        r.onreadystatechange=function()
                        {
                         if(r.readyState===4)
                     {
                     if(r.responseText.trim()==="Valid"){
                         window.location="LoginDoctor.jsp";
                       
                     }
                     else{
                         alert(r.responseText);
                       }
                      }   
                        };
                       r.open("post","ajaxapi/otpverificationApi.jsp?otp="+otp+"&email="+email);
                       r.send();
                    }
                }
                
            </script>
    </head>
    <link href="CSS/otp.css" rel="stylesheet" type="text/css"/>
    <body>
        <div class="otp"><br>
            <h1> OTP Verification </h1>
            <br>
            <input type="text" value="<%=request.getParameter("em")%>" id="temail" />
            <br>
            <br>
            <input class="Iotp" id="totp" type="otp" placeholder="Enter Verification OTP">
            <br>
            <br>
            <button type="submit" onclick="verifyotp()" class="Botp">Verify OTP</button>
        </div>

    </body>
</html>
