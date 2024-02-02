 <%@page import="java.sql.*" %>
<%!
String dr_pic="";
%>
<%    
              try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps1=con1.prepareStatement("Select * from doctorsignup ");
//   ps1.setString(1,session.getAttribute("em")+"");
    ResultSet rs1=ps1.executeQuery();
        if(rs1.next()){
        
        dr_pic=rs1.getString("dr_pic");
    }
    
    
    rs1.close();
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }

  %>
  
 
                