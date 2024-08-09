<%-- 
    Document   : RegisterAction
    Created on : Mar 31, 2019, 3:51:39 PM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
try{
    Connection con=Dbconnection.getConnection();
    Statement st1=con.createStatement();
    ResultSet r=st1.executeQuery("select * from ureg where email='"+email+"'");
    int c=0;
    while(r.next()){
     c=r.getInt(1);   
    }
    if(c==0){
        
    
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into ureg values('"+name+"','"+email+"','"+mobile+"','"+address+"','"+uname+"','"+pwd+"')");
    if(i>0){
       %> 
       <script type="text/javascript">
           window.alert("Registration successfully");
           window.location="Register.jsp";
           </script>
    <%}else{
%> 
       <script type="text/javascript">
           window.alert("Registration Failed");
           window.location="Register.jsp";
           </script>
    <%
}
}else{
%> 
       <script type="text/javascript">
           window.alert("Email Already Exist Please try with another email");
           window.location="Register.jsp";
           </script>
    <%
}
}catch(Exception e){
   out.println(e); 
}


%>