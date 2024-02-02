<%@page import="java.sql.*" %>

  
      <%
          try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
            PreparedStatement ps=con.prepareStatement("select * from doctoverificationdata");
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
            %>
            
            <div>
                <%=rs.getString("license_number")%>
                <%=rs.getString("name")%>
                <%=rs.getString("joining_date")%>
                <%=rs.getString("specialist")%>
                <%=rs.getString("experience")%>
                <%=rs.getString("qualification1")%>
                <%=rs.getString("qualification2")%>
                <%=rs.getString("speak_language")%>
                <%=rs.getString("video_fee")%>
                <%=rs.getString("clinic_fee")%>
                <%=rs.getString("home_fee")%>
                <%=rs.getString("abailable_time")%>
    
    
                
<!--                        <div class="container mt-3">
  <button type="button" class="btn btn-success" onclick="editmodal(<%=rs.getString("sr_no")%>)">
    Edit
  </button>
</div>-->


                 <button class="btn btn-danger"onclick="deleteemprecord(<%=rs.getString("sr_no")%>)">Delete</button></td>
</div>
          <%
          }
          rs.close();
         }
       catch(Exception ex){
             out.print(ex.getMessage());
           }
      %>
  
