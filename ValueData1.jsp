<%@page import="java.sql.*" %>
<%!
String name="",license_number="",mobile="",specialist="",email="",age="",experience="",speak_language="",video_fee="",qualification1="",qualification2="",clinic_fee="",home_fee="",abailable_time="",aadhar="",village="",state="",city="";
%>
<%    
              try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lhcdatabase","root","Vikash123@@##");
    //boolean b=con.isClosed();
    PreparedStatement ps=con.prepareStatement("Select * from doctorverificationdata");
    ResultSet rs=ps.executeQuery();
        if(rs.next()){
        name=rs.getString("name");
        mobile=rs.getString("mobile");
        email=rs.getString("email");
        specialist=rs.getString("specialist");
        license_number=rs.getString("license_number");
        age=rs.getString("age");
        experience=rs.getString("experience");
        speak_language=rs.getString("speak_language");
        video_fee=rs.getString("video_fee");
        clinic_fee=rs.getString("clinic_fee");
        home_fee=rs.getString("video_fee");
        abailable_time=rs.getString("abailable_time");
        aadhar=rs.getString("aadhar_number");
        village=rs.getString("village");
        state=rs.getString("state");
        city=rs.getString("city");
        qualification1=rs.getString("qualification1");
        qualification2=rs.getString("qualification2");
    }
    
    
    rs.close();
    }
    catch(Exception ex){
        out.print(ex.getMessage());
    }

  %>
  