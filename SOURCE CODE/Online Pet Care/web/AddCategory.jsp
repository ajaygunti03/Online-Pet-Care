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
            <a href="Admin.jsp"><div class="m2"><p>Logout</p></div></a> 
      
            <a href="Add_image.jsp"> <div class="m2"><p  style="margin:0px;">Add Image&Details</p></div></a> 
        <a href="AddCategory.jsp"  class="active"><div class="m2"><p  style="margin-top:20px;">Add Category</p></div></a> 
        <a href="Admin_Home.jsp"><div class="m2"><p>Home</p></div></a> 
        </div>
        <div id="right">
            <form action="AddCat.jsp" method="post" >
                <table>
                    <tR><h2><U>ADD CATEGORY</U></h2></Tr>
                    <tR></tr>
                    <tR><th>CATEGORY</th><td><input type="text" name="category" required=""></td></tr>   
                    <tR></tr><tR></tr><tR></tr><tR></tr><tR></tr><tR></tr><tR></tr>
                    <tr><th></th><td><input type="submit" value="Add Category"></tD></tr>
                </table>
            </form>
            
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
