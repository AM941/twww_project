<%-- 
    Document   : ChangeOrUpdate
    Created on : Feb 1, 2015, 7:09:09 PM
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
                   
                    if(form.elements[i].value === ""){
                        
                        alert("Fill out all Fields");
                        document.F1.productname.focus();
                        return false;
                    }
                }
                
                if(!isNaN(document.F1.productname.value)){
                    
                    alert("productname  must  be  char's & can't be null");
                    document.F1.productname.value="";
                    document.F1.productname.focus();
                    return false;
                }



                if(isNaN(document.F1.tax.value)){
                    
                    alert("tax field must  be  number & can't be null");
                    document.F1.tax.value="";
                    document.F1.tax.focus();
                    return false;
                }

                if(isNaN(document.F1.minq.value)){
                    
                    alert("min quanty of order field must  be  number & can't be null");
                    document.F1.minq.value="";
                    document.F1.minq.focus();
                    return false;
                }
                
                if(isNaN(document.F1.orderq.value)){
                    
                    alert("Ordering Qty field must  be  number & can't be null");
                    document.F1.orderq.value="";
                    document.F1.orderq.focus();
                    return false;
                }
                
                if(isNaN(document.F1.discount.value)){
                    
                    alert("discount field must  be  number & can't be null");
                    document.F1.discount.value="";
                    document.F1.discount.focus();
                    return false;
                }
                
                if(isNaN(document.F1.netcost.value)){
                    
                    alert("Netcost field must  be  number & can't be null");
                    document.F1.netcost.value="";
                    document.F1.netcost.focus();
                    return false;
                }
                
                if(isNaN(document.F1.amount.value)){
                    
                    alert("tax field must  be  number & can't be null");
                    document.F1.amount.value="";
                    document.F1.amount.focus();
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
                <form name=F1 onSubmit="return dil(this)" action="CheckOrUpdate.jsp" >
                <%@ page import="java.sql.*"%>
                <%@ page import="java.io.*" %>
                <%@ page import="javax.servlet.*"%>
                <%@ page import="com.javapoint.*" %>
                
                <table>
                <%
                    String ph2=request.getParameter("orderid");
                    int orderid=Integer.parseInt(ph2);
                    session.setAttribute("orderid",orderid);
		%>
                </table>
                 
		<table cellspacing="5" cellpadding="3">	
                    <tr>
                        <td> Product Code : </td> 
                        <td> 
                            <SELECT NAME="ProdCode"> 
                                <option value=a1> barcode1
                                <option value=a2> barcode2
                                <option value=a3> barcode3
                                <option value=a4> barcode4
                                <option value=a5> barcode5
                            </SELECT> 
                        </td>
                    </tr>
                    <tr><td>Product Name :</td><td> <input type="text" name="productname"/></td></tr>
                    <tr><td>Tax :</td><td> <input type="text" name="tax"/></td></tr>
                    <tr><td>Min_Qty_to_Order:</td><td> <input type="text" name="minq"/></td></tr>
                    <tr><td>Ordering Qty :</td><td> <input type="text" name="orderq"/></td></tr>			
                    <tr><td>Discount :</td><td> <input type="text" name="discount"/></td></tr>
                    <tr><td>Net cost:</td><td> <input type="text" name="netcost"/></td></tr>
                    <tr><td>Ammount:</td><td> <input type="text" name="amount"/></td></tr>
                    <tr>
                        <td>ModeofPayment:</td> 
                        <td>Cash <INPUT TYPE="radio" NAME="r1" VALUE="cash"></td>  			
                        <td>D.D <INPUT TYPE="radio" NAME="r1" VALUE="DD"></td>
                        <td>Check <INPUT TYPE="radio" NAME="r1" VALUE="check"></td>
                    </tr>
                    <tr><td></td><td><input type="submit" value="Submit"/>			
                    <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
		</table>
                </form>
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