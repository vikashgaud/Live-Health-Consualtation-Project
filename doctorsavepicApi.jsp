<%@page import="java.sql.*" %>
<%@page import="java.io.File" %>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String path=getServletContext().getRealPath("doctorpic");
    MultipartRequest req=new MultipartRequest(request, path);
    File file1 = new File(path+"/"+req.getOriginalFileName("f1"));
    String em=session.getAttribute("em")+"";
    String newname=em+"_"+req.getOriginalFileName("f1");
    File file2 = new File(path+"/"+newname);
    boolean flag = file1.renameTo(file2);
 

    
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
        //boolean b=con.isClosed();
        PreparedStatement ps=con.prepareStatement("update doctorsignup set dr_pic=? where email=?");
        ps.setString(1,newname);
        ps.setString(2,em);
        int res=ps.executeUpdate();
        if(res>=1){
        response.sendRedirect("../DoctorProfile.jsp");
        }
        else{
        out.print("error");
        }
    }
     catch(Exception ex){
        out.print(ex.getMessage());
    }
%>
