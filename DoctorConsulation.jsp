<%-- 
    Document   : DoctorConsulation
    Created on : 01-Mar-2023, 5:19:40 pm
    Author     : HP
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Consultation</title>
        <link href="CSS/DoctorConsulation.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/FootarData.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    </head
    <body>
        <%@include file="navbar.jsp" %>

<!--        Next Step  Slider-->
        <!-- Carousel -->
                <div id="demo" class="carousel slide" data-bs-ride="carousel">
  <!-- The slideshow/carousel -->
                   <div class="carousel-inner">
               <div class="carousel-item active">
                       <img src="Images/SlideImage0.jpg" alt="Los Angeles" class="d-block" style=width:100%;height:393px;>
                 </div>
    <div class="carousel-item">
      <img src="Images/SlideImage1.jpg" alt="Chicago" class="d-block" style=width:100%;height:393px;>
      
    </div>
    <div class="carousel-item">
      <img src="Images/SlideImage2.jpg" alt="New York" class="d-block" style=width:100%;height:393px;>
    </div>
    <div class="carousel-item">
      <img src="Images/SlideImage3.jpg" alt="New York" class="d-block" style=width:100%;height:393px;>
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
        
<!--Next Step Doctor Consultation-->

<main>
    <div class="container" style="max-width: 1401px;">
    <div class="card">
        <h2 class="my-2"><center><h1>Our Specialities Doctors</h1></center></h2>
        <div class="cards">
            <div class="card-item">
                <div class="Name-Set"><h4 class="FS"> General Physician </h4>
                    <img src="Images/General Physician.jpg" alt="" style="height: 196px;padding-top: 5px;"/>
                    <br><br>
                    <a href="GeneralPhysician.jsp?sp=General Physician"><button class="VDbtn">View Details</button></a>
                </div>
                
            </div><div class="card-item">
                <div class="Name-Set"><h4 class="FS"> Psychology/Therapy</h4> 
                <img class="img11" src="Images/Psychology1.jpg" alt=""/>
                <br><br>
                <a href="GeneralPhysician.jsp?sp=Psychology/Therapy"><button class="VDbtn">View Details</button></a>
                </div>
            </div><div class="card-item">
               <div class="Name-Set"><h4 class="FS"> Homeopathy  </h4>
                   <img src="Images/Homeopathy.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
               <br><br>
                    <a href="GeneralPhysician.jsp?sp=Homeopathy"><button class="VDbtn">View Details</button></a>
               </div> 
               
            </div><div class="card-item">
                 <div class="Name-Set"><h4 class="FS"> Neurology  </h4> 
                     <img class="img11" src="Images/Neurology.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
                 <br><br>
                    <a href="GeneralPhysician.jsp?sp=Neurology"><button class="VDbtn">View Details</button></a>
                 </div>
                   
            </div><div class="card-item">
                <div class="Name-Set"><h4 class="FS"> General Surgery  </h4>
                    <img class="img11" src="Images/General Surgery.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
                <br><br>
                    <a href="GeneralPhysician.jsp?sp=General Surgery"><button class="VDbtn">View Details</button></a>
                </div> 
              
            </div><div class="card-item">
                 <div class="Name-Set"><h4 class="FS"> Oncology  </h4> 
                     <img class="img11" src="Images/Oncology.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
                 <br><br>
                    <a href="GeneralPhysician.jsp?sp=Oncology"><button class="VDbtn">View Details</button></a>
                 </div> 
                
            </div><div class="card-item">
                <div class="Name-Set"><h4 class="FS"> Dentistry  </h4>
                    <img class="img11" src="Images/Dentistry.png" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
                <br><br>
                    <a href="GeneralPhysician.jsp?sp=Dentistry"><button class="VDbtn">View Details</button></a>
                </div>
               
            </div><div class="card-item">
               <div class="Name-Set"><h4 class="FS"> Gastroentology  </h4>
                   <img class="img11" src="Images/Gastroentology.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
               <br><br>
                    <a href="GeneralPhysician.jsp?sp=Gastroentology"><button class="VDbtn">View Details</button></a>
               </div> 
              
            </div><div class="card-item">
               <div class="Name-Set"><h4 class="FS"> Psychiatry  </h4>
                   <img class="img11" src="Images/Psychiatry.PNG" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
               <br><br>
                    <a href="GeneralPhysician.jsp?sp=Psychiatry"><button class="VDbtn">View Details</button></a>
               </div>
              
            </div><div class="card-item">
                 <div class="Name-Set"><h4 class="FS"> Cardiology  </h4>
                     <img class="img11" src="Images/Cardiology.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
                 <br><br>
                    <a href="GeneralPhysician.jsp?sp=Cardiology"><button class="VDbtn">View Details</button></a>
                 </div>
               
            </div><div class="card-item">
                 <div class="Name-Set"><h4 class="FS"> Orthopedics  </h4> 
                     <img class="img11" src="Images/Orthopedics.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
                 <br><br>
                    <a href="GeneralPhysician.jsp?sp=Orthopedics"><button class="VDbtn">View Details</button></a>
                 </div>
                
            </div><div class="card-item">
              <div class="Name-Set"><h4 class="FS"> Urology </h4> 
                  <img class="img11" src="Images/Urology.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
              <br><br>
                    <a href="GeneralPhysician.jsp?sp=Urology"><button class="VDbtn">View Details</button></a>
              </div>
             
            </div><div class="card-item">
              <div class="Name-Set"><h4 class="FS"> Infectious Diseases </h4>
                  <img class="img11" src="Images/Infectious Diseases.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
              <br><br>
                    <a href="GeneralPhysician.jsp?sp=Infectious Diseases"><button class="VDbtn">View Details</button></a>
              </div>
             
            </div><div class="card-item">
                 <div class="Name-Set"><h4 class="FS"> Nephrology  </h4> 
                     <img class="img11" src="Images/Nephrology.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
                 <br><br>
                    <a href="GeneralPhysician.jsp?sp=Nephrology"><button class="VDbtn">View Details</button></a>
                 </div>
              
            </div><div class="card-item">
             <div class="Name-Set"><h4 class="FS"> Physiotherapy   </h4>
                 <img class="img11" src="Images/Physiotherapy.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
             <br><br>
                    <a href="GeneralPhysician.jsp?sp=Physiotherapy"><button class="VDbtn">View Details</button></a>
             </div>
             
            </div><div class="card-item">
              <div class="Name-Set"><h4 class="FS"> Ophthalmology </h4>
                  <img class="img11" src="Images/Ophthalmology.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
              <br><br>
                    <a href="GeneralPhysician.jsp?sp=Ophthalmology"><button class="VDbtn">View Details</button></a>
              </div>
              
            </div><div class="card-item">
                <div class="Name-Set"><h4 class="FS"> Pain Management  </h4> 
                    <img class="img11" src="Images/Pain Management.jpg" alt=""style="height: 193px;margin-top: 5px;width: 321px;"/>
                <br><br>
                    <a href="GeneralPhysician.jsp?sp=Pain Management"><button class="VDbtn">View Details</button></a>
                </div>
              
            </div>
        
        </div>
    </div>
</div>
<%@include file="FootarData.jsp" %>
   
    </body>
</html>
