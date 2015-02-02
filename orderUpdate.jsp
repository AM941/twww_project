<%-- 
    Document   : orderUpdate
    Created on : Feb 1, 2015, 5:52:45 PM
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
                
                if(isNaN(document.F1.custid.value)){
                    
                    alert("coustmer id must  be  number & can't be null");
                    document.F1.custid.value="";
                    document.F1.custid.focus();
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
		<form name=F1 onSubmit="return dil(this)" action="ChangeOrUpdate.jsp" >
                    <table cellspacing="5" cellpadding="3">		  
			<%if(request.getAttribute("wrong")!=null){
                            out.print("<div>"); 
                            out.print("<font color='blue'><font size='4'>"+request.getAttribute("wrong")+"");
                            out.print("</div>"); 
			}
			%>
                        <tr><td>Order ID:</td><td> <input type="text" name="orderid"/></td></tr>		
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
