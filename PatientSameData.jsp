 <%@page import="java.sql.*" %>
<%!
String name="",mobile="",email="",address="",patientpic="";
%>
<%    
              try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps1=con.prepareStatement("Select * from doctorsignup where mobile=?");
    ps1.setString(1,session.getAttribute("mo")+"");
        ResultSet rs=ps1.executeQuery();
        if(rs.next()){
        name=rs.getString("name");
        mobile=rs.getString("mobile");
        email=rs.getString("email");
        address=rs.getString("address");
        
    }
   rs.close();
    PreparedStatement ps=con.prepareStatement("Select * from patientsignup where mobile=?");
    ps.setString(1,session.getAttribute("mo")+"");
    ResultSet rs1=ps.executeQuery();
        if(rs1.next()){
        name=rs1.getString("name");
        mobile=rs1.getString("mobile");
        email=rs1.getString("email");
        address=rs1.getString("address");
        patientpic=rs1.getString("patientpic");
    }
    
    
    rs1.close();
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }

  %>
  
 
                 <div style="width:100%;height:760px;background-color: #05060e;color: aqua;font-size: 24px;opacity: 0.6;float: left;padding-left:190px;padding-top: 30px;">
                <div class="container mt-3">                                       
                   <div class="dropdown">
                  <button type="button"style="color: red;position: relative;top:-20px;left:1250px;" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown">
                   <i class='fas fa-align-justify'></i>
                  </button>
                       <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="HomePage.jsp">Home</a></li>
                    <li><a class="dropdown-item" href="PEditProfile.jsp">Edit profile</a></li>
                    <li><a class="dropdown-item" href="PEditPassword.jsp">change Password</a></li>
                    <li><a class="dropdown-item" href="DoctorLogout.jsp">Logout <i class='fas fa-sign-out-alt'></i></a></li>
                 </ul>
                </div>
            </div>
            </div>
        
