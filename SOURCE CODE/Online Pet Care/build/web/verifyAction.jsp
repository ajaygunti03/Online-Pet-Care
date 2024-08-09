<%-- 
    Document   : verifyAction
    Created on : 14 Jun, 2024, 2:50:12 PM
    Author     : edula
--%>

<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String email=request.getParameter("email");
session.setAttribute("uname",email);
try{
    Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    ResultSet r=st.executeQuery("select * from ureg where email='"+email+"'");
    if(r.next()){
        session.setAttribute("email",r.getString("email"));
    
       %> 
       <script type="text/javascript">
           window.alert("verification successfully");
           window.location="ChangePassword.jsp";
           </script>
    <%}else{
%> 
       <script type="text/javascript">
           window.alert("Enter Valid Email");
           window.location="forgot.jsp";
           </script>
    <%
}  
    
}catch(Exception e){
  out.println(e);  
}

%>