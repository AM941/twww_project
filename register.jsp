<%-- 
    Document   : register
    Created on : Jan 19, 2015, 9:45:40 PM
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

                if(document.F1.password.value !== document.F1.repassword.value){

                    alert("Check Confirm PWD"); 
                    document.F1.repassword.value="";
                    document.F1.repassword.focus();
                    return false;
                }

                 if(!isNaN(document.F1.disname.value)){

                    alert("DISTRIBUTER NAME  must  be  char's & can't be null");
                    document.F1.disname.value="";
                    document.F1.disname.focus();
                    return false;
                }

                if(!isNaN(document.F1.adderess.value)){

                    alert("adderess field  must  be  char's & can't be null");
                    document.F1.adderess.value="";
                    document.F1.adderess.focus();
                    return false;
                }

                if(!isNaN(document.F1.cityname.value)){
                    alert("cityname field  must  be  char's & can't be null");
                    document.F1.cityname.value="";
                    document.F1.cityname.focus();
                    return false;
                }

                 if(!isNaN(document.F1.statename.value)){

                    alert("statename field  must  be  char's & can't be null");
                    document.F1.statename.value="";
                    document.F1.statename.focus();
                    return false;
                }

                if(!isNaN(document.F1.phone.value)){

                   if(document.F1.phone.value >9999999999 ){

                        alert("ye kabhi nhi aayegi");
                        document.F1.phone.value="";
                        document.F1.phone.focus();
                    return false;   
                   }
                }
                else{

                    alert("This  field  must  be  number");
                    document.F1.phone.value="";
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
        <h5> REGISTER </h5>
    </div>

    <table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
        <tr align="justify">
            <td valign="top" width="220px">
                <h1>products 1</h1>
                <p>description aboute the product</p>
                <p align="right"><a href="#" class="more">View More</a></p>
            </td>
            <td valign="top">
                <form name=F1 onSubmit="return dil(this)" action="CServlet" >
                    <table cellspacing="5" cellpadding="3">	
				
			<tr><td>USER NAME:</td><td> <input type="text" name="username"/></td></tr>
			<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
			<tr><td>RE-PASSWORD:</td><td> <input type="password" name="repassword"/></td></tr>
			<tr><td>FULL NAME:</td><td> <input type="text" name="full_name"/></td></tr>
			<tr><td>ADDRESS:</td><td> <input type="text" name="address"/></td></tr>
			<tr><td>CITY</td><td> <input type="text" name="cityname"/></td></tr>
			<tr><td>STATE </td><td> <input type="text" name="statename"/></td></tr>
                        <tr><td>COUNTRY:</td><td> <input type="text" name="country"/></td></tr>
                        <tr><td>PHONE:</td><td> <input type="text" name="phone"/></td></tr>
                        <tr><td>EMAIL:</td><td> <input type="text" name="email"/></td></tr>
                        <tr><td></td><td><input type="submit" value="Submit"/>		
			<input TYPE=RESET VALUE="CLEAR"></td></tr>
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

