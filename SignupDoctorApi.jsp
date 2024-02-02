<%@page import="java.sql.*" %>
<%
    String name=request.getParameter("name");
    String mobile=request.getParameter("mobile");
    String specialist=request.getParameter("specialist");
    String license=request.getParameter("license");
    String password=request.getParameter("password");
    String email=request.getParameter("email");
    String address=request.getParameter("address");
    String aadhar=request.getParameter("aadhar");
    String otp=request.getParameter("otp");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("insert into doctorsignup(email,name,mobile,specialist,license,password,address,aadhar,dr_pic,otp,status)value(?,?,?,?,?,?,?,?,?,?,?)");   
    ps.setString(1,email);
    ps.setString(2,name);
    ps.setString(3,mobile);
    ps.setString(4,specialist);
    ps.setString(5,license);
    ps.setString(6,password);
    ps.setString(7,address);
    ps.setString(8,aadhar);
    ps.setString(9,"sample.png");
    ps.setString(10,otp);
    ps.setString(11,"Not Verified");
    
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