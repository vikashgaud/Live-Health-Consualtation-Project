<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/LoginDoctor.css" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <div class="B1">
            <div class="Part1">
            <img class="logo" src="Images/logo.png" alt=""/>
            <img class="img1" src="Images/health.png" alt=""/>
            </div>
            <div class="Part2">
            <div class="box2">
                <h1><b>Doctor Login</b> </h1><hr><br>
                
<!--                <label style="color: white;"><b>Email :</b></label>-->
                <input class="size" type="text" placeholder="Enter Email" id="lemail"><br><br>
<!--                <label style="color: white;"> <b>Password  :</b></label>-->
                <input class="size" type="Password" placeholder="Enter  Password" id="lpassword"><br><br>
                              
                <button  id="btn" onclick="DoctorLogin()">Login</button> <br><br>
                
<!--                <div class="container mt-3" >-->
              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">Create Account</button>
<!--                 </div>-->
<!-- The Modal -->
                 <div class="modal" id="myModal">
                <div class="modal-dialog"style="left: 910px;top: 10px;height: 206px;width: 487px;">
                 <div class="modal-content">
<!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" style="text-align: center;">Create Account</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

<!-- Modal body -->
                <div class="modal-body"style="background-color: rgba(9, 8, 8, 0.96);">
                        <label>Name :</label>
                <input  class="size" type="text" placeholder="Enter Name" id="name">
                <br><br>
                Mobile Number :
                <input class="size" type="email" placeholder="Enter Mobile number" id="mobile">
                <br><br>
                Specialist :
                <!--<input  class="size" type="value" placeholder="Enter Mobile number" id="specialist">-->
                
                <select class="inp" type="Select" id="specialist">
                    <option>Select Specialist</option>
                    <option>General Physician</option>
                    <option>Psychology/Therapy</option>
                    <option>Homeopathy</option>
                    <option>Neurology</option>
                    <option>General Surgery</option>
                    <option>Oncology</option>
                    <option>Dentistry</option>
                    <option>Gastroentology</option>
                    <option>Psychiatry</option>
                    <option>Cardiology</option>
                    <option>Orthopedics</option>
                    <option>Urology</option>
                    <option>Infectious Diseases</option>
                    <option>Nephrology</option>
                    <option>Physiotherapy</option>
                    <option>Ophthalmology</option>
                    <option>Pain Management</option>
                </select>
                <br><br>
                License Number :
                <input  class="size" type="email" placeholder="Enter Mobile number" id="license">
                <br><br>
                Password :
                <input  class="size" type="text" placeholder="Enter Password" id="password">
                <br><br>
                Conform Password :
                <input  class="size" type="text" placeholder="Enter Conform Password" id="cpassword">
                <br><br>
                Email :
                <input  class="size" type="text" placeholder="Enter Email" id="email">
                <br><br>
                Aadhar Number :
                <input  class="size" type="text" placeholder="Enter AAdhar Number" id="aadhar">
                <br><br>
<!--                 Upload Aadhar Front :
                <input  class="size" type="File" placeholder="Upload File" id="aadhar">
                <br><br>
                 Upload Aadhar Back :
                <input  class="size" type="File" placeholder="Upload File" id="aadhar">
                <br><br>-->
                Address :
                <input  class="size" type="text" placeholder="Enter Address" id="address">
                <br><br>
                
                <button  class="btn1" onclick="doctorsignupdata()">Save</button>
      </div>
    </div>
  </div>
</div>
<!--                <div class="container mt-3" >-->
               <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal1">Forget Password</button>
<!--                 </div>-->
<!-- The Modal -->
                 <div class="modal" id="myModal1">
                <div class="modal-dialog"style="left: 910px;top: 117px;height: 206px;width: 487px;">
                 <div class="modal-content">
<!-- Modal Header -->
                <div class="modal-header">
                <h4 class="modal-title">Forget Password</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

<!-- Modal body -->
                <div class="modal-body" style="height: 433px;background-color: rgba(9, 8, 8, 0.96);">
               
                Mobile Number :
                <input class="size" type="email" placeholder="Enter Mobile number" id="fmobile">
                <br><br>
                New Password :
                <input class="size" type="text" placeholder="Enter Password" id="fpassword">
                <br><br>
                Conform Password :
                <input class="size" type="text" placeholder="Enter Current Password" id="fcpassword">
                <br><br>
                OTP :
                <input class="size" type="text" placeholder="Enter OTP" id="otp">
                <br><br>
                
                <button  class="btn1" onclick="emprecord()">Save</button>
                  </div>
                </div>
               </div>
              </div>
             </div>   
            </div>
           </div>
        <script type="text/javascript">
            function doctorsignupdata(){
                
              var name=document.getElementById("name").value;  
              var mobile=document.getElementById("mobile").value;  
              var specialist=document.getElementById("specialist").value;  
              var license=document.getElementById("license").value;  
              var password=document.getElementById("password").value;  
              var cpassword=document.getElementById("cpassword").value;  
              var email=document.getElementById("email").value;  
              var aadhar=document.getElementById("aadhar").value;  
              var address=document.getElementById("address").value;
              var re1=/^\d{10}$/;
              var re2=/^[a-zA-Z0-9._]+[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$/;
              var otp=parseInt(Math.random()*10000);
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
               else if(specialist==="option"){
                   alert("Please Enter Specialist");
                   document.getElementById("specialist").focus();
               }
               else if(license===""){
                   alert("Please Enter License");
                   document.getElementById("license").focus();
               }
               else if(password===""){
                   alert("Please Enter Password");
                   document.getElementById("password").focus();
               }
               else if(cpassword===""){
                   alert("Please Enter Conform Password");
                   document.getElementById("cpassword").focus();
               }
               else if(password!==cpassword){
                   alert("Please Enter matching Password");
                   document.getElementById("cpassword").focus();
               }
               else if(email===""){
                   alert("Please Enter Email");
                   document.getElementById("email").focus();
               }
               else if(!email.match(re2)){
                   alert("Please Enter valid Email");
                   document.getElementById("email").focus();
               }
               else if(aadhar===""){
                   alert("Please Enter Email");
                   document.getElementById("aadhar").focus();
               }
               else if(address===""){
                   alert("Please Enter Address");
                   document.getElementById("address").focus();
               }
               else{
                   var r =new XMLHttpRequest();
                   r.onreadystatechange=function()
                       {
                 if(r.readyState===4)
                 {
                     if(r.responseText.trim()==="Record Saved")
                     {
                         window.location="otp.jsp?em="+email;
                     }
                     else{
                         alert(r.responseText);
                     }
                 }
             };
             r.open("post","ajaxapi/SignupDoctorApi.jsp?name="+name+"&mobile="+mobile+"&specialist="+specialist+"&license="+license+"&email="+email+"&aadhar="+ aadhar + "&otp="+otp+"&password="+password+"&address="+address);
             r.send();
              }    
            }
             function DoctorLogin()
            {
          var email=document.getElementById("lemail").value;         
          var password=document.getElementById("lpassword").value;
          var re2=/^[a-zA-Z0-9._]+[@][a-zA-Z0-9]+[.][a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$/;
            if(email===""){
                   alert("Please Enter Email");
                   document.getElementById("lemail").focus();
               }
               else if(!email.match(re2)){
                   alert("Please Enter valid Email");
                   document.getElementById("lemail").focus();
               }
         else if(password===""){
             alert("Please Enter password");
             document.getElementById("lpassword").focus();
         }
         else{
             var r=new XMLHttpRequest();
             r.onreadystatechange=function()
             {
                 if(r.readyState===4)
                 {
                     if(r.responseText.trim()==="Valid"){
                         window.location="DoctorHomePage.jsp";
                       
                     }
                     else{
                         alert(r.responseText);
                     }
                     
                 }
             };
             r.open("post","ajaxapi/LoginDoctorApi.jsp?email="+email+"&password="+password);
             r.send();  
             
         }
      }
               
        </script>
       
    </body>
</html>
