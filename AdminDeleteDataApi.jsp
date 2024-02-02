<%@page import="java.sql.*" %>
<%
    
String email=request.getParameter("m1");
try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
     PreparedStatement ps=con.prepareStatement("delete from patientsignup where email=?");
     ps.setString(1,email);
     int rs=ps.executeUpdate();
     if(rs>=1){
         out.print("Deleted");
    }
    else{
         out.print("Error");
    }
    }
    catch(Exception ex){
              out.print(ex.getMessage());
    }
%>