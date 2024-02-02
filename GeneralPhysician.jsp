
<%@page import="java.sql.*" %>
<%!
String name="",license_number="",email="",joining_date="",specialist="",experience="",qualification1="",qualification2="",speak_language="",video_fee="",clinic_fee="",home_fee="",abailable_time="",dr_pic="";
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>General Physician </title>
        <link href="CSS/GeneralPhysician.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/FootarData.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript">
            
         function doctorverificationdata(){
        var r=new XMLHttpRequest();
             r.onreadystatechange=function()
             {
                 if(r.readyState===4)
                 {
                         document.getElementById("loaddata1").innerHTML=r.responseText;
                         
                 }
             };
             r.open("post","ajaxapi/UploadDocumentApi.jsp");
             r.send();             
         }
         </script>
    </head>
    <body>
        
        <div class="D1"><%@include file="navbar.jsp" %></div><br> 
        
        
            <%   
               
              try{
              String sp=request.getParameter("sp");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("Select s.dr_pic,db.* from doctorverificationdata db,doctorsignup s where s.mobile=db.mobile and  db.specialist=? and db.status='verify'");
    ps.setString(1,sp);
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
                name=rs.getString("name");
                license_number=rs.getString("license_number");
                joining_date=rs.getString("joining_date");
                specialist=rs.getString("specialist");
                experience=rs.getString("experience");
                qualification1=rs.getString("qualification1");
                qualification2=rs.getString("qualification2");
                speak_language=rs.getString("speak_language");
                video_fee=rs.getString("video_fee");
                clinic_fee=rs.getString("clinic_fee");
                home_fee=rs.getString("home_fee");
                abailable_time=rs.getString("abailable_time");
                email=rs.getString("email");
                dr_pic=rs.getString("dr_pic");
                
    %>
    
    <div class="D2"id="loaddata1">
        <div class="D3">
            <div class="I1">
                <img src="doctorpic/<%=dr_pic%>" alt="<%=dr_pic%>"style="border-radius: 21px; height: 281px;"/>
            </div>
            <div class="RowDetail1">
                <div class="col1">
                    <h1><%=name%></h1>
                    <h2><%=specialist%></h2>
                                <p style="margin-top: 4%;">
                                    <%=qualification1%>
                                    <br>
                                    <%=qualification2%>
                                    <br>
                                    Joining Date : <%=joining_date%>
                                    
                                </p>
                </div>
                <div class="col2">
                    <h3><b>Available Now</b></h3>                    
                      <%=abailable_time%>
                </div>
            </div> 
            
            <div class="RowDetail2">
                <div class="col1">
                    <p class="dr-exp">
                        <span class="dr-cr">
                            <%=experience%> Year Experience 
                            
                        </span>
                        <b>Speak : <%=speak_language%></b>
                    </p>
                    <p><b>License Number :</b>
                    <%=license_number%></p>
                </div>
                <div class="col2-1">
                    <p>Video-Consultation : <b> Rs. <%=video_fee%> </b></p>
                    <p>In-Clinic Visit : <b> Rs. <%=clinic_fee%> </b></p>
                    <p>Home Consultation : <b> Rs. <%=home_fee%> </b></p>
                </div>
            </div>
            
            <div class="RowDetail3">
                <button class="btn-profile">Profile</button>
                <a href="VideoAppointment.jsp?em=<%=email%>"><button class="op-btn">Book a Video Appointment</button></a>
                <a href="VideoAppointment.jsp?em=<%=email%>"><button class="op-btn">Book an In-Clinic Appointment</button></a>
            </div>
        </div>    
    </div>    
    <%
    }
    
    rs.close();
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }

  %>
                

    </body>
      <%@include file="FootarData.jsp" %>  
</html>
