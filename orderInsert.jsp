<%-- 
    Document   : orderInsert
    Created on : Jan 20, 2015, 2:31:15 AM
    Author     : BGiwrgos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>twww project</title>
        <link href="style.css" rel="stylesheet" type="text/css">

        <SCRIPT LANGUAGE="JavaScript">
            function dil(form){

                for(var i=0; i<form.elements.length; i++){
                    
                    if(form.elements[i].value == ""){
                               
                        alert("Fill out all Fields");
                        document.F1.accountno.focus();
                        return false;
                    }
                }

                if(isNaN(document.F1.accountno.value)){
                   
                    alert("Accountno must  be  number & can't be null");
                    document.F1.accountno.value="";
                    document.F1.accountno.focus();
                    return false;
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

    <table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
        <tr align="justify">
            <td valign="top" width="220px">
                <h1>products 1</h1>
                <p>description aboute the product</p>
                <p align="right"><a href="#" class="more">View More</a></p>
            </td>
            <td valign="top">
                <%@ page import="java.sql.*"%>
                <%@ page import="java.io.*" %>
                <%@ page import="javax.servlet.*"%>
                <%@ page import="com.javapoint.*" %>
                
                <table width="300" border="0" cellspacing="10" cellpadding="0" align="center">
                <%
        
                    String ProdCode=request.getParameter("ProdCode");
                    String productname=request.getParameter("productname");

                    String tx=request.getParameter("tax");
                    double tax=Double.parseDouble(tx);

                    String min=request.getParameter("minq");
                    double minq=Double.parseDouble(min);

                    String order=request.getParameter("orderq");  
                    double orderq=Double.parseDouble(order);

                    String ds=request.getParameter("discount");
                    double discount=Double.parseDouble(ds);

                    String nst=request.getParameter("netcost");
                    double netcost=Double.parseDouble(nst);

                    String amoun=request.getParameter("amount");
                    double amount=Double.parseDouble(amoun);

                    String paymode=request.getParameter("r1");
                    
                    int status = 0;
                    
                    Connection con = DBCon.getCon();
                    PreparedStatement ps; 
	    
                    try 
                    {
                        
                        ps= con.prepareStatement("Insert into neworder4 values(NULL,?,?,?,?,?,?,?,?,?)");
                        ps.setString(1,ProdCode);
                        ps.setString(2,productname);
                        ps.setDouble(3,tax);
                        ps.setDouble(4,minq);
                        ps.setDouble(5,orderq);
                        ps.setDouble(6,discount);
                        ps.setDouble(7,netcost);
                        ps.setDouble(8,amount);
                        ps.setString(9,paymode);
                        status = ps.executeUpdate();
                        

                        if(status>0){

                            out.print("your order has placed");
                            request.setAttribute("order","your order has booked");
                            %>			
                            <jsp:forward page="index.jsp"></jsp:forward> 
                            <% 

                        }else{

                            out.print("sorry try later");
                            %>
                            <jsp:forward page="index.php"></jsp:forward> 
                            <% 
                        }
                    } catch (SQLException e) {
                            
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

