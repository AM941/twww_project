<%-- 
    Document   : index
    Created on : Jan 19, 2015, 1:39:15 PM
    Author     : BGiwrgos
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Free Pharmaceutical Company  - Download HTML Website  s</title>
        <link href="style.css" rel="stylesheet" type="text/css">

    </head>

    <body>
        <div id="header">
            <div id="navigation">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="admin.jsp">ADMINISTRATOR </a></li>
                    <li><a href="distributer.jsp">DISTRIBUTER</a></li>
                    <li><a href="customer.jsp">CUSTOMER</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>	
            </div>
        </div>
        <div>
              <%if(request.getAttribute("order")!=null){
                out.print("<div>");
		out.print("<font color='blue'><font size='5'><h5>"+request.getAttribute("order")+"</h5>");
		out.print("</div>"); 
            }
	    %>
        </div>

        <table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
            <tr align="justify">
                <td valign="top" width="220px">
                    <h1>products 1</h1>
                    <p>description about the product</p>
                    <p align="right"><a href="#" class="more">View More</a></p>
                </td>
                <td valign="top">
                    <h1>products 2</h1>
                    <p>description about the product</p>
                    <p align="right"><a href="#" class="more">View More</a></p>
                </td>
                <td valign="top">
                    <h1>products 3</h1>
                    <p>description about the product</p>
                    <p align="right"><a href="#" class="more">View More</a></p>
                </td>
                <td valign="top">
                    <h1>products 4</h1>
                    <p>description about the product</p>
                    <p align="right"><a href="#" class="more">View More</a></p>
                </td>
            </tr>
            <tr><td colspan="4" style="border-bottom:1px solid #CCCCCC;"></td></tr>
        </table>

        <div id="content">
            <table width="960" border="0" cellspacing="0" cellpadding="0">
              <tr align="justify">
                <td width="200" valign="top"></td>
                <td width="760" valign="top">
                    <h1>Title</h1>
                    <p>Description</p><br/>
                </td>
              </tr>
            </table>
        </div>

        <div id="footer">
            <div id="footer_1">
              <span id="design">Designed by George Bousdras</span>
            </div>
        </div>
    </body>
</html>