<%-- 
    Document   : PatientAppointmentData
    Created on : 27-Apr-2023, 9:56:35 am
    Author     : HP
--%>

<%@page import="java.sql.*" %>
<%
    String license_number=request.getParameter("license_number");
    String name=request.getParameter("name");
    String mobile=request.getParameter("mobile");
    String email=request.getParameter("email");
    String age=request.getParameter("age");
    String joining_date=request.getParameter("joining_date");
    String gender=request.getParameter("gender");
    String specialist=request.getParameter("specialist");
    String experience=request.getParameter("experience");
    String qualification1=request.getParameter("qualification1");
    String qualification2=request.getParameter("qualification2");
    String speak_language=request.getParameter("speak_language");
    String video_fee=request.getParameter("video_fee");
    String clinic_fee=request.getParameter("clinic_fee");
    String home_fee=request.getParameter("home_fee");
    String abailable_time=request.getParameter("abailable_time");
    String aadhar_number=request.getParameter("aadhar_number");
    String state=request.getParameter("state");
    String city=request.getParameter("city");
    String village=request.getParameter("village");
    
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("insert into doctorverificationdata(license_number,name,mobile,email,age,joining_date,gender,specialist,experience,qualification1,qualification2,speak_language,video_fee,clinic_fee,home_fee,abailable_time,aadhar_number,state,city,village)value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");   
    ps.setString(1,license_number);
    ps.setString(2,name);
    ps.setString(3,mobile);
    ps.setString(4,email);
    ps.setString(5,age);
    ps.setString(6,joining_date);
    ps.setString(7,gender);
    ps.setString(8,specialist);
    ps.setString(9,experience);
    ps.setString(10,qualification1);
    ps.setString(11,qualification2);
    ps.setString(12,speak_language);
    ps.setString(13,video_fee);
    ps.setString(14,clinic_fee);
    ps.setString(15,home_fee);
    ps.setString(16,abailable_time);
    ps.setString(17,aadhar_number);
    ps.setString(18,state);
    ps.setString(19,city);
    ps.setString(20,village);
    
    
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