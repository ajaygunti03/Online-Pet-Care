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
        <style>
            table tr th{
               background:red;
               color:yellow;
               height:50px;
            }
             table tr td{
               background:whitesmoke;
               color:white;
               height:50px;
            }
            
            </style>
    </head>
    <body>
        <div id="main">
            <div id="m1"><p style="margin-left:40px;font-size:30px;margin-top:10px;">ONLINE PET  CARE</p> </div> 
            <a href="Login.jsp"><div class="m2"><p>LOGOUT</p></div></a> 
            <a href="View_Sugg.jsp"><div class="m2"><p  style="margin:0px;">VIEW SUGGESTION</p></div></a> 
            <a href="Ask-Sugg.jsp"> <div class="m2"><p  style="margin:0px;">ASK SUGGESTION</p></div></a> 
        <a href="ViewUploads.jsp"  class="active"><div class="m2"><p>VIEW UPLOADS</p></div></a> 
        <a href="U_Home.jsp"><div class="m2"><p>HOME</p></div></a> 
        </div>
    <centeR>
        <div id="left" style="height:auto;float:none;">
            <h2 style="color:black;">VIEW ALL UPLOAD</h2>
            <%
            Connection con=Dbconnection.getConnection();
            Statement s=con.createStatement();
            ResultSet r=s.executeQuery("select * from images");
            while(r.next()){
                String id=r.getString("id");
            
            %>
            <div id="ll" style="width:300px;height:auto;border:none; float:right;">
                <table>
                    <tr><th colspan="3" style="background: greenyellow;"><image src="view.jsp?id=<%=id%>" width="200" height="200"/></th></tr>
                    <tr><th>CATEGORY</th><tD>:</tD><tD><%=r.getString("category")%></td></tr>
                     <tr><th>NAME:</th><tD>:</tD><tD><%=r.getString("name")%></td></tr>
                      <tr><th>DESCRIPTION</th><tD>:</tD><tD><%=r.getString("desc")%></td></tr>
                </table>
            </div>
           
               
           <%}%>
        </div>
    </center>
        
    </body>
</html>
