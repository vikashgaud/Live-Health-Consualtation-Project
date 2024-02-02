<%@page import="java.sql.*" %>
<%
    String name=request.getParameter("name");
    String mobile=request.getParameter("mobile");
    String password=request.getParameter("password");
    String email=request.getParameter("email");
    String address=request.getParameter("address");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("insert into patientsignup(email,name,mobile,password,address,patientpic)value(?,?,?,?,?,?)");   
    ps.setString(1,email);
    ps.setString(2,name);
    ps.setString(3,mobile);
    ps.setString(4,password);
    ps.setString(5,address);
    ps.setString(6,"sample.png");
    
    int res=ps.executeUpdate();
        if(res>=1){
        out.print("Record Save");
    }
    
    else{
    out.print("Error");
    }
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    } 
  %>



