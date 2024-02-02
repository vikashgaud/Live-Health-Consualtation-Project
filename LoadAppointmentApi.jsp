<%@page import="java.sql.*" %>
<table class="table table-bordered"style="font-size: 19px;">
     <thead>
  <tr>
    <th>Sr_No.</th>
    <th>Name</th>
    <th>Mobile</th>
    <th>Email</th>
    <th>Age</th>
    <th>Date</th>
    <th>Gender</th>
    <th>State</th>
    <th>City</th>
    <th>Action</th>
  </tr>
  </thead>
  <tbody>
      <%
          
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
            PreparedStatement ps=con.prepareStatement("select * from patientappointmentdata where dr_appoint=?");
            ps.setString(1, session.getAttribute("em")+"");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
            %>
            <tr>
                <td><%=rs.getString("sr_no")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("mobile")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("age")%></td>
                <td><%=rs.getString("date")%></td>
                <td><%=rs.getString("gender")%></td>
                <td><%=rs.getString("state")%></td>
                <td><%=rs.getString("city")%></td>
                <td>
<!--                        <div class="container mt-3">
  <button type="button" class="btn btn-success" onclick="editmodal(<%=rs.getString("sr_no")%>)">
    Edit
  </button>
</div>-->


                 <button class="btn btn-danger"onclick="deleteemprecord(<%=rs.getString("sr_no")%>)">Delete</button></td>
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
