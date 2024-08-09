<%-- 
    Document   : LoginAction
    Created on : Mar 31, 2019, 4:05:44 PM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String uname=request.getParameter("uname");
session.setAttribute("uname",uname);
String pwd=request.getParameter("pwd");
try{
    Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    ResultSet r=st.executeQuery("select * from ureg where uname='"+uname+"'and pwd='"+pwd+"'");
    if(r.next()){
        session.setAttribute("email",r.getString("email"));
    
       %> 
       <script type="text/javascript">
           window.alert("Login successfully");
           window.location="U_Home.jsp";
           </script>
    <%}else{
%> 
       <script type="text/javascript">
           window.alert("Check username/password wrong");
           window.location="Login.jsp";
           </script>
    <%
}  
    
}catch(Exception e){
  out.println(e);  
}

%>