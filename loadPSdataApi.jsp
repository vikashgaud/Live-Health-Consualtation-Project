<%@page import="java.sql.*" %>
<table class="table table-bordered"style="font-size: 20px;">
     <thead>
  <tr>
    
    <th>Name</th>
    <th>Mobile</th>
    <th>Email</th>
    <th>Password</th>
    <th>Address</th>
   
    <th>Action</th>
  </tr>
  </thead>
  <tbody>
      <%
          
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
            PreparedStatement ps=con.prepareStatement("select * from patientsignup");
           
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
            %>
            <tr>
                
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("mobile")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("password")%></td>
                <td><%=rs.getString("address")%></td>
                <td>
               
                        <div class="container mt-3">
  <button type="button" class="btn btn-success" onclick="Block(<%=rs.getString("email")%>)">
    Block
  </button>
</div>


                 <button class="btn btn-danger"onclick="deleteemprecord(<%=rs.getString("email")%>)">Delete</button></td>
             </tr>
          <%
          }
          rs.close();
         }
       catch(Exception ex){
             out.print(ex.getMessage());
           }
      %>
  </tbody>
 </table>
