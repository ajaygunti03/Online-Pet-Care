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
               width: 100px;
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
        <%String email=(String)session.getAttribute("email");
                
            Connection con=Dbconnection.getConnection();%>
        <div id="right"style="border:1px solid black;width:400px;background: whitesmoke;height:auto;">
            <center>
             <center><h3>View All Suggestions</h3> <center>
                    
           <%
               
Statement s1=con.createStatement();
ResultSet r1=s1.executeQuery("select * from sugg where sugg!='waiting'");
while(r1.next()){
    %>
    <p style="float:left;margin:0px;padding:0px;color:red;"><b>Email:</b><%=r1.getString("semail")%></p>
     <p style="float:left;margin:0px;padding:0px;color:blueviolet;"><b>PetName:</b><%=r1.getString("petname")%></p>
    <p style="float:left;color:green;">Suggestion:<%=r1.getString("sugg")%></p>
    <%
}
               %>
                   
                
            </center>
            
               </div>
        <div id="left" style="border:1px solid black;width:430px;background: whitesmoke;height:auto;">
            <center><h3>Replies To Your Question</h3> <center>
                    
           <%
               
Statement s=con.createStatement();
ResultSet r=s.executeQuery("select * from sugg where email='"+email+"' and semail!='"+email+"' and sugg!='waiting'");
while(r.next()){
    %>
    <p style="float:left;margin:0px;padding:0px;color:red;"><b>Email:</b><%=r.getString("semail")%></p>
     <p style="float:left;margin:0px;padding:0px;color:blueviolet;"><b>PetName:</b><%=r.getString("petname")%></p>
    <p style="float:left;color:green;">Suggestion:<%=r.getString("sugg")%></p>
     <%
}
               %>
            
        </div>
        <div id="left" style="border:none;width:500px;">
            <form action="AskAction.jsp" method="post">
                <center><h2>Give Suggestion</h2></center>
                    <table>
                        <tR><th>ID</th><th>PET NAME</th><th>PROBLEM</th><th>SUGGEST</th></tr>
            <%try{
    Statement st=con.createStatement();
   ResultSet rs=st.executeQuery("select * from sugg where email!='"+email+"'");
          while(rs.next()){
          %>   
                        <tR>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("petname")%></td>
                            <td><%=rs.getString("problem")%></td>
                            <td><a href="GSuggAction.jsp?id=<%=rs.getString("id")%>">Suggest</a></td>
                        </tr>      
              
          <%}  
            }catch(Exception e){
       out.println(e);
}%>
                    </table>
                </form>
        </div>
        
    </body>
</html>
