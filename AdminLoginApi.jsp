<%-- 
    Document   : LoginDoctorApi
    Created on : 31-Mar-2023, 4:53:56 pm
    Author     : HP
--%>
<%@page import="java.sql.*"%>
<%
    String email=request.getParameter("email");
    String companyid=request.getParameter("companyid");
    String password=request.getParameter("password");
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("Select * from adminsignup where email=? and password=? and companyid=?");
    ps.setString(1,email);
    ps.setString(2,password);
    ps.setString(3,companyid);
    
    ResultSet rs=ps.executeQuery();
        if(rs.next()){
        session.setAttribute("em", email);
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

