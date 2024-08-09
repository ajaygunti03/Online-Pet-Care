<%-- 
    Document   : AskAction
    Created on : Apr 2, 2019, 11:18:17 AM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String email=(String)session.getAttribute("email");
String petname=request.getParameter("petname");
String problem=request.getParameter("problem");
try{
    Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into sugg values(null,'"+email+"','"+petname+"','"+problem+"','waiting','waiting')");
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("PROBLEM POSTED SUCCESSFULLY");
            window.location="Ask-Sugg.jsp";
            </script>
        
        <%
    }else{
%>
        <script type="text/javascript">
            window.alert("PROBLEM POSTING FAILED");
            window.location="Ask-Sugg.jsp";
            </script>
        
        <%
}
}catch(Exception e){
  out.println(e);  
}
%>