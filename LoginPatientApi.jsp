<%-- 
    Document   : LoginPatientApi
    Created on : 22-Mar-2023, 10:42:50 pm
    Author     : HP
--%>

<%@page import="java.sql.*"%>
<%
    String mobile=request.getParameter("mobile");
    String password=request.getParameter("password");
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("Select * from patientsignup where mobile=? and password=?");
    ps.setString(1,mobile);
    ps.setString(2,password);
    
    ResultSet rs=ps.executeQuery();
        if(rs.next()){
        session.setAttribute("mo", mobile);
        out.print("Valid");
    }
    
    else{
    out.print("Invalid");
    }
    rs.close();
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }

  %>
