<%@page import="java.sql.*" %>
<table class="table table-bordered"style="font-size: 13px;">
     <thead>
  <tr>
    <th>License No.</th>
    <th>Name</th>
    <th>Mobile</th>
    <th>Email</th>
    <th>Specialist</th>
    <th>Aadhar No.</th>
    <th>Address</th>
    <th>Doctor PIC</th>
    <th>Password</th>
    <th>Status</th>
    <th>Action</th>
    
  </tr>
  </thead>
  <tbody>
      <%
          
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
            PreparedStatement ps=con.prepareStatement("select * from doctorsignup");
           
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
            %>
            <tr>
                <td><%=rs.getString("license")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("mobile")%></td>
                <td><%=rs.getString("email")%></td>
               
                <td><%=rs.getString("specialist")%></td>
               
                <td><%=rs.getString("aadhar")%></td>
               
                <td><%=rs.getString("Address")%></td>
                <td><%=rs.getString("dr_pic")%></td>
                <td><%=rs.getString("password")%></td>
                <td><%=rs.getString("status")%></td>
                <td>
                        <div class="container mt-3">
  <button type="button" class="btn btn-success" onclick="block(<%=rs.getString("email")%>)">
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
