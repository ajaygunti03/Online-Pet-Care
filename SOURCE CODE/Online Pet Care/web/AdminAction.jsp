<%-- 
    Document   : AdminAction
    Created on : Mar 31, 2019, 4:21:41 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
if(uname.equalsIgnoreCase("Admin")&&pwd.equalsIgnoreCase("Admin")){
  %>
  <script type="text/javascript">
      window.alert("Login Successfully");
      window.location="Admin_Home.jsp";
      </script>
<%  
}else{
 %>
  <script type="text/javascript">
      window.alert("Login Failed");
      window.location="Admin.jsp";
      </script>
<%
}
%>
