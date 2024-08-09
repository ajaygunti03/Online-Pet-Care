<%-- 
    Document   : Login
    Created on : Mar 31, 2019, 1:48:38 PM
    Author     : Acer
--%>

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
            <a href="Login.jsp"><div class="m2"><p>LOGOUT</p></div></a> 
            <a href="View_Sugg.jsp"><div class="m2"><p  style="margin:0px;">VIEW SUGGESTION</p></div></a> 
            <a href="Ask-Sugg.jsp"> <div class="m2"><p  style="margin:0px;">ASK SUGGESTION</p></div></a> 
        <a href="ViewUploads.jsp"><div class="m2"><p>VIEW UPLOADS</p></div></a> 
        <a href="U_Home.jsp"  class="active"><div class="m2"><p>HOME</p></div></a> 
        </div>
        <div id="right">
           <%String email=(String)session.getAttribute("email");
           %>
           <h2 style="color:#ffffff"><%=email%></h2> 
               </div>
        <div id="left">
            <div class="b" style="background-image:url(images/img1.jpg);"></div>  
             <div class="b" style="background-image:url(images/img2.jpg);"></div> 
              <div class="b" style="background-image:url(images/img4.jpg);"></div> 
               <div class="b" style="background-image:url(images/img5.jpg);"></div> 
                <div class="b" style="background-image:url(images/img6.jpg);"></div> 
                 <div class="b" style="background-image:url(images/img7.jpg);"></div> 
                  <div class="b" style="background-image:url(images/img8.jpg);"></div> 
                   <div class="b" style="background-image:url(images/img9.jpg);"></div> 
        </div>
        
    </body>
</html>
