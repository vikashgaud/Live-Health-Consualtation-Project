<%@page import="java.sql.*" %>
<%
        String email=request.getParameter("email");  
        String mobile=request.getParameter("mobile");  
        String age=request.getParameter("age");  
        String experience=request.getParameter("experience");  
        String video_fee=request.getParameter("video_fee");  
        String home_fee=request.getParameter("home_fee");  
        String clinic_fee=request.getParameter("clinic_fee");  
        String abailable_time=request.getParameter("abailable_time");  
        String village=request.getParameter("village");  
        String state=request.getParameter("state");  
        String city=request.getParameter("city");  
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
        //boolean b=con.isClosed();
        PreparedStatement ps=con.prepareStatement("update doctorverificationdata set mobile=?,age=?,experience=?,video_fee=?,home_fee=?,clinic_fee=?,abailable_time=?,village=?,state=?,city=? where email=?");
        ps.setString(1,mobile);
        ps.setString(2,age);
        ps.setString(3,experience);
        ps.setString(4,video_fee);
        ps.setString(5,home_fee);
        ps.setString(6,clinic_fee);
        ps.setString(7,abailable_time);
        ps.setString(8,village);
        ps.setString(9,state);
        ps.setString(10,city);
        ps.setString(11,email);
        
        
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

