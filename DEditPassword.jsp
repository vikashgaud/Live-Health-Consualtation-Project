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
               width:88%;
               height:600px;
               background-color:red;
               box-shadow:0px -1px 8px 6px yellow;
               position:absolute;
               top:81px;
               
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
               width:71%;
               height:580px;
               margin-top:10px;
               margin-left:10px;
               background-color:lightskyblue;
               color:red;
               
               float:left;width: 71%;
                height: 580px;
                   margin-top: 10px;
                 margin-left: 10px;
                background-color: lightskyblue;
                color: #282727;
                float: left;
                text-align: -moz-center;
           }
           
       </style>
    </head>
    <body onload="loadappointmentdata()">
        
         <%@include file="DoctorSameData.jsp" %>
       
         <div class="container-fluid bg-danger userpic">
            <div class="userpic1">
                
            <div class="userpic2">
                
                
                            <img style="width:240px;height:220px;border-radius: 120px;"src="doctorpic/<%=dr_pic%>"></a>
                
                        <div style="font-size:30px;" ><%=name%></div>
                
                <div style="color:black;"><%=specialist%></div>
                <br>
                <div style="color:black;">License No.: <%=license%></div>
                <br>
                <div style="color:black;">Contact No.: <%=mobile%></div>
                <br>
                <div style="color:black;">Email Id: <%=email%></div>
                <br>
          
       
            
          <a href="DoctorVerification.jsp"><button >Profile Verification </button></a>
              </form>    
          </div>
                <div class="userpic3">
                    <br><br><br><br>
                   <h1>Change Password</h1><br>
                <label class="d1">Current Password :</label>
                <input id="password" type="text" placeholder="Password" class="d1">
                <br><br>
                <label class="d1">New Password :</label>
                <input id="Newpassword" type="text" placeholder="Password" class="d1">
                <br><br>
                <label class="d1">Conform Password :</label>
                <input id="cpassword" type="text" placeholder="Password" class="d1">
                <br><br>
                <button class="d1" onclick="changepass()">Update</button>
      </div>
                </div>
<!--                <div class="form-group userpic4">
                </div>-->
            </div>
        
            <script type="text/javascript">
            
         function loadappointmentdata(){
        var r=new XMLHttpRequest();
             r.onreadystatechange=function()
             {
                 if(r.readyState===4)
                 {
                         document.getElementById("loaddata").innerHTML=r.responseText;
                         
                 }
             };
             r.open("post","ajaxapi/LoadAppointmentApi.jsp");
             r.send();             
         }
        function deleteemprecord(x)
            {
                if(confirm("want to delete")){
                var r=new XMLHttpRequest();
                r.onreadystatechange=function()
                {
                    if(r.readyState===4){
                        alert(r.responseText);
                        loaddata();
                    }
                };
                r.open("post","ajaxapi/DeleteDAppoApi.jsp?m1="+x);
                r.send();
            }
        }
                        function changepass(){
                        var password = document.getElementById("password").value;
                        var Newpassword = document.getElementById("Newpassword").value;
                        var cpassword = document.getElementById("cpassword").value;
                        
                         if(password==="")
                         {
                            alert("Please Enter password");
                            document.getElementById("password").focus();
                         }
                         else if(Newpassword==="")
                         {
                            alert("Please Enter confirm password");
                            document.getElementById("cpassword").focus();
                         }
                         else if(cpassword==="")
                         {
                            alert("Please Enter confirm password");
                            document.getElementById("cpassword").focus();
                         }
                         else if(Newpassword!==cpassword)
                         {
                            alert("Both password must be same");
                            document.getElementById("cpassword").focus();
                         }
                         else{
                             var r=new XMLHttpRequest();
                             r.onreadystatechange=function()
                             {
                              if(r.readyState===4)
                               {
                                if(r.responseText.trim()==="same")
                                 {
                                      window.location="Index.jsp";
                                 }
                             else{
                                   alert(r.responseText);
                                 }
                               }
                             };
                             r.open("post","ajaxapi/DEditPasswordApi.jsp?Newpassword="+Newpassword+"&password="+password);
                             r.send(); 
                         }
                    }
                    
         </script>    
                
        

    </body>
</html>
