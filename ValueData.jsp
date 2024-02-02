<%@page import="java.sql.*" %>
<%!
String name="",email="",mobile="",specialist="",license="",address="",aadhar="",dr_pic="";
%>
<%    
              try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("Select * from doctorsignup where email=?");
    ps.setString(1,session.getAttribute("em")+"");
    ResultSet rs=ps.executeQuery();
        if(rs.next()){
        name=rs.getString("name");
        mobile=rs.getString("mobile");
        email=rs.getString("email");
        specialist=rs.getString("specialist");
        license=rs.getString("license");
        address=rs.getString("address");
        aadhar=rs.getString("aadhar");
        dr_pic=rs.getString("dr_pic");
    }
    
    
    rs.close();
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }

  %>
