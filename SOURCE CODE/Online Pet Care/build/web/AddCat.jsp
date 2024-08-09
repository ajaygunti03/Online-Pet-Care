<%-- 
    Document   : AddCat
    Created on : Mar 31, 2019, 4:40:24 PM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String category=request.getParameter("category");
try{
    Connection con=Dbconnection.getConnection();
    Statement st1=con.createStatement();
    ResultSet r=st1.executeQuery("select count(*)from category where category='"+category+"'");
    int c=0;
    while(r.next()){
      c=r.getInt(1);
    }
    if(c==0){
    
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into category values('"+category+"')");
    if(i>0){
     %> 
       <script type="text/javascript">
           window.alert("Category Added successfully");
           window.location="AddCategory.jsp";
           </script>
    <%   
    }else{
%> 
       <script type="text/javascript">
           window.alert("Category Adding Failed");
           window.location="AddCategory.jsp";
           </script>
    <%
}
}else{
%> 
       <script type="text/javascript">
           window.alert("this category already added");
           window.location="AddCategory.jsp";
           </script>
    <%
}
}catch(Exception e){
 out.println(e);   
}

%>
