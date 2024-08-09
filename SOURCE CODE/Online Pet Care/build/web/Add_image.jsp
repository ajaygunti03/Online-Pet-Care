<%-- 
    Document   : Login
    Created on : Mar 31, 2019, 1:48:38 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbcon.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Online Pet Care</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css" />
        
    </head>
    <body>
        <div id="main">
            <div id="m1"><p style="margin-left:40px;font-size:30px;margin-top:10px;">ONLINE PET  CARE</p> </div> 
            <a href="Admin.jsp"><div class="m2"><p>Logout</p></div></a> 
      
            <a href="Add_image.jsp"  class="active"> <div class="m2"><p  style="margin:0px;">Add Image&Details</p></div></a> 
        <a href="AddCategory.jsp"><div class="m2"><p  style="margin-top:20px;">Add Category</p></div></a> 
        <a href="Admin_Home.jsp"><div class="m2"><p>Home</p></div></a> 
        </div>
        <div id="right">
            <form action="AddImage" method="post" enctype="multipart/form-data">
                <table>
                    <tR><h2><U>ADD IMAGE AND DETAILS</U></h2></Tr>
                <tR></tr> <tR><th>CATEGORY</th><td><select name="category" style="width:220px;" required="">
                            <option value=""></option>
                      
                    
                    <%String query="select * from category";
                   Connection con=Dbconnection.getConnection();
                   Statement st=con.createStatement();
                   ResultSet r=st.executeQuery(query);
                   while(r.next()){
                   %>
                   <option value="<%=r.getString("category")%>"><%=r.getString("category")%></option>
                   <%
                   }
                    %>
                        </select><td></tr>
                   </tr>
                   <tr><th>NAME</th><td><input type="text" name="name" required="" style="width:216px;"></td></tr>
                   <tr><th>DESCRIPTION</th><td><textarea cols="25" rows="10" name="desc"></textarea></td></tr>
  <tr><th>IMAGE</th><td><input type="file" name="image" required="" style="width:216px;"></td></tr>
                    <tR></tr><tR></tr><tR></tr><tR></tr><tR></tr><tR></tr><tR></tr>
                    <tr><th></th><td><input type="submit" value="Add Details">
<input type="reset" value="Reset Details"></tD></tr>
                </table>
            </form>
            
               </div>
        <div id="left">
            <div class="b" style="background-image:url(images/img1.jpg);"></div>  
             <div class="b" style="background-image:url(images/img2.jpg);"></div> 
              <div class="b" style="background-image:url(images/img12.jpg);"></div> 
               <div class="b" style="background-image:url(images/img11.jpg);"></div> 
                <div class="b" style="background-image:url(images/img6.jpg);"></div> 
                 <div class="b" style="background-image:url(images/img.jpg);"></div> 
                  <div class="b" style="background-image:url(images/img8.jpg);"></div> 
                   <div class="b" style="background-image:url(images/img10.jpg);"></div> 
        </div>
        
    </body>
</html>
