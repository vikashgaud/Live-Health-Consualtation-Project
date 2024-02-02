<%@page import="java.sql.*" %>
<%
        String password=request.getParameter("password");    
        String Newpassword=request.getParameter("Newpassword");    
       String email=session.getAttribute("em")+"";
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
        //boolean b=con.isClosed();
        PreparedStatement ps=con.prepareStatement("select * from doctorsignup where email=? and password=?");
        ps.setString(1,email);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
                rs.close();
                PreparedStatement ps1=con.prepareStatement("update doctorsignup set password=? where email=?");
                ps1.setString(1,Newpassword);
                ps1.setString(2,email);
                int res=ps1.executeUpdate();
                if(res>=1){
                out.print("same");
                }
                else{
                out.print("error");
                }

        }
        else{
            out.print("You are not a valid user to change password");
       }
    }
     catch(Exception ex){
        out.print(ex.getMessage());
    }
%>

