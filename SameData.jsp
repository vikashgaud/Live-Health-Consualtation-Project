<%@page import="java.sql.*" %>
<%!
String name="",license_number="",joining_date="",specialist="",experience="",qualification1="",qualification2="",speak_language="",video_fee="",clinic_fee="",home_fee="",abailable_time="";
%>
<%   
               
              try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("Select * from doctorverificationdata where email=?");
    ps.setString(1,session.getAttribute("em")+"");
    ResultSet rs=ps.executeQuery();
        if(rs.next()){
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
    }
    
    
    rs.close();
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }

  %>

<div class="D2">
        <div class="D3">
            <div class="I1">
                <img src="Images/I1.jpg" alt="alt"style="border-radius: 21px;"/>
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
                            <%=experience%>
                            
                        </span>
                        <b><%=speak_language%></b>
                    </p>
                    <p><b>License Number :</b>
                    <%=license_number%></p>
                </div>
                <div class="col2-1">
                    <p>Video-Consultation : <b> ? <%=video_fee%> </b></p>
                    <p>In-Clinic Visit : <b> ? <%=clinic_fee%> </b></p>
                    <p>Home Consultation : <b> ? <%=home_fee%> </b></p>
                </div>
            </div>
            
            <div class="RowDetail3">
                <button class="btn-profile">Profile</button>
                <a href="VideoAppointment.jsp"><button class="op-btn">Book a Video Appointment</button></a>
                <a href="VideoAppointment.jsp"><button class="op-btn">Book an In-Clinic Appointment</button></a>
            </div>
        </div>    
    </div>    