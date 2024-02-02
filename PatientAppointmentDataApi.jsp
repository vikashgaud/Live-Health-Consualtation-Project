<%-- 
    Document   : PatientAppointmentData
    Created on : 27-Apr-2023, 9:56:35 am
    Author     : HP
--%>

<%@page import="java.sql.*" %>
<%
    String name=request.getParameter("name");
    String mobile=request.getParameter("mobile");
    String email=request.getParameter("email");
    String age=request.getParameter("age");
    String date=request.getParameter("date");
    String gender=request.getParameter("gender");
    String state=request.getParameter("state");
    String city=request.getParameter("city");
    String dr_appoint=request.getParameter("dr_appoint");
    
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("insert into patientappointmentdata(email,name,mobile,age,date,gender,state,city,dr_appoint)value(?,?,?,?,?,?,?,?,?)");   
    ps.setString(1,email);
    ps.setString(2,name);
    ps.setString(3,mobile);
    ps.setString(4,age);
    ps.setString(5,date);
    ps.setString(6,gender);
    ps.setString(7,state);
    ps.setString(8,city);
    ps.setString(9,dr_appoint);
    
    
    int res=ps.executeUpdate();
        if(res>=1){
        out.print("Record Saved");
    }
    
    else{
    out.print("Error");
    }
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }
%>