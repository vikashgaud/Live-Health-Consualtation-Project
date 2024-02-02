<%@page import="java.sql.*" %>
<%
         String license_number=request.getParameter("license_number");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
        //boolean b=con.isClosed();
        PreparedStatement ps=con.prepareStatement("update doctorverificationdata set status=? where license_number=?");
        ps.setString(1,"verify");
        ps.setString(2,license_number);
        
        
        int res=ps.executeUpdate();
        if(res>=1){
        out.print("Verified");
        }
        else{
        out.print("Error");
        }
    }
     catch(Exception ex){
        out.print(ex.getMessage());
    }
%>



