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
               color:green;
               height:50px;
            }
            
            </style>
    </head>
    <body>
        <div id="main">
            <div id="m1"><p style="margin-left:40px;font-size:30px;margin-top:10px;">ONLINE PET  CARE</p> </div> 
            <a href="Login.jsp"><div class="m2"><p>LOGOUT</p></div></a> 
            <a href="View_Sugg.jsp"  class="active"><div class="m2"><p  style="margin:0px;">VIEW SUGGESTION</p></div></a> 
            <a href="Ask-Sugg.jsp"> <div class="m2"><p  style="margin:0px;">ASK SUGGESTION</p></div></a> 
        <a href="ViewUploads.jsp"><div class="m2"><p>VIEW UPLOADS</p></div></a> 
        <a href="U_Home.jsp"><div class="m2"><p>HOME</p></div></a> 
        </div>
        <div id="right">
            <center>
               
                <%String email=(String)session.getAttribute("email");
                String id=request.getParameter("id");%>
                
            </center>
            
               </div>
        <div id="left">
            <center><h2 style="color:whitesmoke;">GIVE SUGGESTIONS</h2></center>
           
            <div id="ll" style="width:400px;height:250px;border:none; float:right;">
                <form action="suggaction.jsp" method="post">
                    <table>
                        <tR><th>SUGGESTION ID</th><td><input type="text" name="sugid" value="<%=id%>" readonly=""></td></tr>
                        <tR><th>ENTER SUGGESTION</th><td><textarea cols="20" rows="10" name="sugg"></textarea></td></tr>
<tr><th></th><td><input type="submit" value="Suggestion"></tD></tr>
                    </table>
                </form>
                
                
                
            </div>
           
              
        </div>
        
    </body>
</html>
