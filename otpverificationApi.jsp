<%-- 
    Document   : otpverificationApi
    Created on : 05-Apr-2023, 5:49:05 pm
    Author     : HP
--%>
<%@page import="java.sql.*" %>

<%
    String otp =request.getParameter("otp");
    String email =request.getParameter("email");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    PreparedStatement ps=con.prepareStatement("update doctorsignup set status=? where email=? and otp=?");
    ps.setString(2, email);
    ps.setString(3, otp);
    ps.setString(1, "Verify");
    if(ps.executeUpdate()>0)
    {
        out.print("Valid");
    }   
    else{
         out.print("Invalid OTP");
    }
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }
    %>

