 <%@page import="java.sql.*" %>
<%!
String patientpic="";
%>
<%    
              try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("Select * from patientsignup where mobile=?");
    ps.setString(1,session.getAttribute("mo")+"");
    ResultSet rs=ps.executeQuery();
        if(rs.next()){
        
        patientpic=rs.getString("patientpic");
    }
    
    
    rs.close();
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }

  %>
  
 
                