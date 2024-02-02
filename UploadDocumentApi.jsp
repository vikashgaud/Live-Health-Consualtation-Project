<%@page import="java.sql.*" %>
<%@page import="java.io.File" %>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path=getServletContext().getRealPath("UploadDocument");
    MultipartRequest req=new MultipartRequest(request, path);
    File file1 = new File(path+"/"+req.getOriginalFileName("f1"));
    File file3 = new File(path+"/"+req.getOriginalFileName("f2"));
    String em=session.getAttribute("em")+"";
    String newname=em+"_"+req.getOriginalFileName("f1");
    String newname1=em+"_"+req.getOriginalFileName("f2");
    File file2 = new File(path+"/"+newname);
    File file4 = new File(path+"/"+newname1);
    boolean flag = file1.renameTo(file2);
    boolean flag1 = file3.renameTo(file4);
    
     String license_number=req.getParameter("license_number");
    String name=req.getParameter("name");
    String mobile=req.getParameter("mobile");
    String email=req.getParameter("email");
    String age=req.getParameter("age");
    String joining_date=req.getParameter("joining_date");
    String gender=req.getParameter("gender");
    String specialist=req.getParameter("specialist");
    String experience=req.getParameter("experience");
    String qualification1=req.getParameter("qualification1");
    String qualification2=req.getParameter("qualification2");
    String speak_language=req.getParameter("speak_language");
    String video_fee=req.getParameter("video_fee");
    String clinic_fee=req.getParameter("clinic_fee");
    String home_fee=req.getParameter("home_fee");
    String abailable_time=req.getParameter("abailable_time");
    String aadhar_number=req.getParameter("aadhar_number");
    String state=req.getParameter("state");
    String city=req.getParameter("city");
    String village=req.getParameter("village");
   
//    out.print("Done");
    
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
        //boolean b=con.isClosed();
        PreparedStatement ps1=con.prepareStatement("insert into doctorverificationdata(license_number,name,mobile,email,age,joining_date,gender,specialist,experience,qualification1,qualification2,speak_language,video_fee,clinic_fee,home_fee,abailable_time,aadhar_number,state,city,village,aadhar_img,certificate_img,status)value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        
        ps1.setString(1,license_number);
    ps1.setString(2,name);
    ps1.setString(3,mobile);
    ps1.setString(4,email);
    ps1.setString(5,age);
    ps1.setString(6,joining_date);
    ps1.setString(7,gender);
    ps1.setString(8,specialist);
    ps1.setString(9,experience);
    ps1.setString(10,qualification1);
    ps1.setString(11,qualification2);
    ps1.setString(12,speak_language);
    ps1.setString(13,video_fee);
    ps1.setString(14,clinic_fee);
    ps1.setString(15,home_fee);
    ps1.setString(16,abailable_time);
    ps1.setString(17,aadhar_number);
    ps1.setString(18,state);
    ps1.setString(19,city);
    ps1.setString(20,village);
    ps1.setString(21,newname);
    ps1.setString(22,newname1);
    ps1.setString(23,"Not Verified");
    ps1.executeUpdate();
    out.print("Saved");    
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    } 
        
       
      
%>
