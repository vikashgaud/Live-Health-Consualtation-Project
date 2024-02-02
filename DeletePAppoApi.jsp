<%@page import="java.sql.*" %>
<%
    
String sr_no=request.getParameter("m1");
try{
     Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
     PreparedStatement ps=con.prepareStatement("delete from patientappointmentdata where sr_no=?");
     ps.setString(1,sr_no);
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