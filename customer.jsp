<%-- 
    Document   : customer
    Created on : Jan 19, 2015, 9:41:18 PM
    Author     : BGiwrgos
--%>

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
        <h5> CUSTOMER LOGIN</h5>
    </div>

    <table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
        <tr align="justify">
            <td valign="top" width="220px">
                <h1>products 1</h1>
                <p>description aboute the product</p>
                <p align="right"><a href="#" class="more">View More</a></p>
            </td>
            <td valign="top">
                <form name=F1 onSubmit="return dil(this)" action="customerCheck.jsp">
                    <table cellspacing="10" cellpadding="8">
                        <%if(request.getAttribute("welcome")!=null){
                            
                            out.print("<div>"); 
                            out.print("<font color='blue'><font size='4'>"+request.getAttribute("welcome"));
                            out.print("</div>"); 
			}
			%>
                        <%if(request.getAttribute("check")!=null){
                            
                            out.print("<div>"); 
                            out.print("<font color='blue'><font size='4'>"+request.getAttribute("check"));
                            out.print("</div>"); 
			}
			%>

                        <tr><td>LOGIN NAME:</td><td> <input type="text" name="username"/></td></tr>
			<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
			<tr><td></td><td><input type="submit" value="Submit"/>                   
                        <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
                        <tr><td><a href="register.jsp">New User</a></td></tr>
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
