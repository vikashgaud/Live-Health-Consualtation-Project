<%@page import="java.sql.*" %>
<table class="table table-bordered"style="font-size: 8px;">
     <thead>
  <tr>
    <th>License No.</th>
    <th>Name</th>
    <th>Mobile</th>
    <th>Email</th>
    <th>Age</th>
    <th>Joining Date</th>
    <th>Gender</th>
    <th>Specialist</th>
    <th>Experience</th>
    <th>Qualification1</th>
    <th>Qualification2</th>
    <th>Video fee</th>
    <th>Clinic fee</th>
    <th>Home fee</th>
    <th>Aadhar No.</th>
    <th>State</th>
    <th>City</th>
    <th>Village</th>
    <th>Aadhar IMG</th>
    <th>Certificate IMG</th>
    <th>Action</th>
    
  </tr>
  </thead>
  <tbody>
      <%
          
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
            PreparedStatement ps=con.prepareStatement("select * from doctorverificationdata");
           
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
            %>
            <tr>
             <td><%=rs.getString("license_number")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("mobile")%></td>
                <td><%=rs.getString("email")%></td>
                <td><%=rs.getString("age")%></td>
                <td><%=rs.getString("joining_date")%></td>
                <td><%=rs.getString("gender")%></td>
                <td><%=rs.getString("specialist")%></td>
                <td><%=rs.getString("experience")%></td>
                <td><%=rs.getString("qualification1")%></td>
                <td><%=rs.getString("qualification2")%></td>
                <td><%=rs.getString("video_fee")%></td>
                <td><%=rs.getString("clinic_fee")%></td>
                <td><%=rs.getString("home_fee")%></td>
                <td><%=rs.getString("aadhar_number")%></td>
                <td><%=rs.getString("state")%></td>
                <td><%=rs.getString("city")%></td>
                <td><%=rs.getString("village")%></td>
                <td><%=rs.getString("aadhar_img")%></td>
                <td><%=rs.getString("certificate_img")%></td>
                <td>
                        <div class="container mt-3">
  <button type="button" class="btn btn-success" onclick="AdminVerify('<%=rs.getString("license_number")%>')">
    Verify
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
