<%-- 
    Document   : suggaction
    Created on : Apr 2, 2019, 2:36:03 PM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String email=(String)session.getAttribute("email");
                String id=request.getParameter("sugid");
                String sugg=request.getParameter("sugg");

try{
    Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("update sugg set sugg='"+sugg+"',semail='"+email+"'where id='"+id+"'");
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Suggestion sent successfully");
            window.location="View_Sugg.jsp";
            </script>
        <%
    }else{
%>
        <script type="text/javascript">
            window.alert("Suggestion sendding Failed");
            window.location="View_Sugg.jsp";
            </script>
        <%
}
}catch(Exception e){
    out.println(e);
}


%>