<%@page import="java.sql.*" %>
<%
        String name=request.getParameter("Name");    
          
        String email=request.getParameter("Email");    
            
        String mobile=request.getParameter("MobileNumber");    
        String address=request.getParameter("Address");    
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
        //boolean b=con.isClosed();
        PreparedStatement ps=con.prepareStatement("update patientsignup set name=?,mobile=?,address=? where email=?");
        ps.setString(4,email);
        ps.setString(1,name);
        ps.setString(2,mobile);
        ps.setString(3,address);
        
        int res=ps.executeUpdate();
        if(res>=1){
        out.print("update");
        }
        else{
        out.print("Error");
        }
    }
     catch(Exception ex){
        out.print(ex.getMessage());
    }
%>

