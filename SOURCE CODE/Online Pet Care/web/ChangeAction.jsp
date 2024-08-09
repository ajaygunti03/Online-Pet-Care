<%-- 
    Document   : ChangeAction
    Created on : 13 Jul, 2024, 10:35:04 AM
    Author     : edula
--%>

<%@page import="java.sql.Statement"%>
<%@page import="dbcon.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

String pwd=request.getParameter("pwd");
String e=(String)session.getAttribute("email");
try{
    Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    int r=st.executeUpdate("update ureg set pwd='"+pwd+"' where email='"+e+"'");
    if(r>0){
          %> 
       <script type="text/javascript">
           window.alert("Change successfully");
           window.location="Login.jsp";
           </script>
    <%}else{
%> 
       <script type="text/javascript">
           window.alert("Changing Failed");
           window.location="forgot.jsp";
           </script>
    <%
        }

}catch(Exception e1){
System.out.println(e1);
}

%>