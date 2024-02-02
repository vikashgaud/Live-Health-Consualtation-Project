 <%@page import="java.sql.*" %>
<%!
String name="",identityproof="",mobile="",companyid="",email="";
%>
<%    
              try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("Select * from adminsignup where email=?");
    ps.setString(1,session.getAttribute("em")+"");
    ResultSet rs=ps.executeQuery();
        if(rs.next()){
        name=rs.getString("name");
        mobile=rs.getString("mobile");
        email=rs.getString("email");
        companyid=rs.getString("companyid");
        identityproof=rs.getString("identityproof");
       
    }
    
    
    rs.close();
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }

  %>
  
<!--<div style="width:100%;height:760px;background-color: #05060e;color: aqua;font-size: 24px;opacity: 0.6;float: left;padding-left:190px;padding-top: 30px;">
                <div class="container mt-3">                                       
                   <div class="dropdown">
                  <button type="button"style="color: red;position: relative;top:-20px;left:1250px;" class="btn btn-success dropdown-toggle" data-bs-toggle="dropdown">
                   <i class='fas fa-align-justify'></i>
                  </button>
                       <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Home</a></li>
                    <li><a class="dropdown-item" href="EditDrProfile.jsp">Edit profile</a></li>
                    <li><a class="dropdown-item" href="#">change Password</a></li>
                    <li><a class="dropdown-item" href="DoctorLogout.jsp">Logout <i class='fas fa-sign-out-alt'></i></a></li>
                 </ul>
                </div>
            </div>
            </div>
        -->
        
                  