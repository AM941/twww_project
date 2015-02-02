<%-- 
    Document   : admincheck
    Created on : Jan 19, 2015, 3:17:13 PM
    Author     : BGiwrgos
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>twww project</title>
        <link href="style.css" rel="stylesheet" type="text/css">

        <SCRIPT LANGUAGE="JavaScript">
            function dil(form){
                
                for(var i=0; i<form.elements.length; i++){
                   
                    if(form.elements[i].value === ""){
                        
                        alert("Fill out all Fields");
                        document.F1.username.focus();
                        return false;
                    }
                }
               
                if(!isNaN(document.F1.username.value)){
                    alert("User Name  must  be  char's & can't be null");
                    document.F1.username.value="";
                    document.F1.username.focus();
                    return false;
                }

                if(!isNaN(document.F1.password.value)){

                    alert("Password  must  be  char's & can't be null");
                    document.F1.password.value="";
                    document.F1.password.focus();
                    return false;
                }

               return true;
            }
        </SCRIPT>     
    </head>
    
    <body>
    <div id="header">
        <div id="navigation">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="admin.jsp">ADMINISTRATOR </a></li>
                <li><a href="distributer.jsp">DISTRIBUTER </a></li>
                <li><a href="customer.jsp">CUSTOMER</a></li>
                <li><a href="contactus.jsp">Contact Us</a></li>
            </ul>	
        </div>
    </div>

    <div>
        <h5> ADMINISTRATOR PANEL</h5>
    </div>

    <table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
        <tr align="justify">
            <td valign="top" width="220px">
                <h1>products 1</h1>
                <p>description aboute the product</p>
                <p align="right"><a href="#" class="more">View More</a></p>
            </td>
            <td valign="top">
                <table width="300" border="0" cellspacing="10" cellpadding="0" align="center">
                    <%@ page import="java.sql.*"%>
                    <%@ page import="java.io.*" %>
                    <%@ page import="javax.servlet.*"%>
                    <%@ page import="com.javapoint.*" %>
                    
                    <%
        
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    boolean status = adminLogin.checkLogin(username,password);
                    int login = adminLogin.getLogin();
		
                    try {
                        if(status == true | login == 1){
                            
                            if(status == true){
                                out.print("Welcome " + username);
                            }
                            out.println("<br><br><a href='adminCuPanel.jsp'> Go To customer Administration </a><br>");
                            out.println("<br><a href='adminOrPanel.jsp'> Go To Orders Administration </a><br>");

                            Connection connection = DBCon.getCon();
                            PreparedStatement ps = connection.prepareStatement("");
                        }
                        else{
                            out.print("Please check your username and Password");
                            request.setAttribute("adminWrong","Please check your username and Password");
                    %>
                        <jsp:forward page="admin.jsp"></jsp:forward> 
                    <% 
                        }
                    }catch (SQLException e) {
                        e.printStackTrace();
                    }
		
                    %>
                </table>
            </td>
            <td valign="top">
                <h1>products 2</h1>
                <p>description aboute the product</p>
                <p align="right"><a href="#" class="more">View More</a></p>
            </td>
            <td valign="top">
                <h1>products 3</h1>
                <p>description aboute the product</p>
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
                  <h1>Title  </h1>
                  <p>Description</p><br />
              </td>
            </tr>
        </table>
    </div>

    <div id="footer">
      <div id="footer_1">
        <span id="design">Designed by George Bousdra</span>
      </div>
    </div>
    </body>
</html>
