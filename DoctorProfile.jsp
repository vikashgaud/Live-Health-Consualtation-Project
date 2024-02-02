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
               font-size:40px;
               float:left;
           }
           .userpic4{
               width:280px;
               height:270px;
               margin-top:-270px;
               margin-left:10px;
               background-color:pink;
               text-align:center;
               color:red;
               float:left;
           }
       </style>
    </head>
    <body onload="loadappointmentdata()">
        
         <%@include file="DoctorSameData.jsp" %>
       
         <div class="container-fluid bg-danger userpic">
            <div class="userpic1">
                
            <div class="userpic2">
                <form method="post" action="ajaxapi/doctorsavepicApi.jsp" enctype="multipart/form-data">
                <center><p><a href="#" data-bs-toggle="modal" data-bs-target="#myModal">
                            <img style="width:240px;height:220px;border-radius: 120px;"src="doctorpic/<%=dr_pic%>"></a>
                <div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content"style="width:282px;right: 563px;top: 63px;">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Upload Image</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <!-- Modal body -->
      <div class="modal-body">
          
          <div class="form-group">
              
              <input type="file" name="f1" />
              <button type="submit">Change PIC</button>
          </div>
      </div>
         
    </div>
  </div>
</div>       

                        <div style="font-size:30px;" ><%=name%></div>
                
                <div style="color:black;"><%=specialist%></div>
                <br>
                <div style="color:black;">License No.: <%=license%></div>
                <br>
                <div style="color:black;">Contact No.: <%=mobile%></div>
                <br>
                <div style="color:black;">Email Id: <%=email%></div>
                <br>
          
       
              </form>    
            
          
          </div>
                <div class="userpic3">
                    
                    <center><h1>Patient Appointment Data</h1></center>
    
          <div id="loaddata"></div>
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
                r.open("post","ajaxapi/DeletePAppoApi.jsp?m1="+x);
                r.send();
            }
        }
        
         </script>    
                
        

    </body>
</html>
