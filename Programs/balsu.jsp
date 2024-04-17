<%@ include file="sessionvalu.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Balance Check</title>
		<script LANGUAGE="JavaScript">
         function loginb(form)
	{
	   	var pwdb = document.getElementById("pass").value;
		
        if(pwdb=='')
		{
			 	
        	 alert("Please Enter Password.");
						return false;

        }
	    
	
	}
		function clearFunc()
	{
		document.getElementById("email").value="";
		document.getElementById("pwd1").value="";
	}	
		</script>
 </head>
 <body>
	<center>
           <form method = "post" name=F1 onSubmit="return loginb(this)" action = "jdbalsu.jsp" >

            <fieldset style="width:23%; height:25%; background-color:#b3d1ff">
                <h3><center>BALANCE CHECK</center></h3>
                <hr>
                <table>
				
			
                       <tr>
                       
						  <%
					   //int no1 =Integer.parseInt(request.getParameter("acid"));
					   //session.setAttribute("acid",no1);
					    out.println("<textarea rows1 cols=15 name = acid id=acid1 hidden>"+n1+"</textarea>");
						// n1 is the global session variable
                        %>
                    </tr>
                    
					
                    <tr>
                        <td>Pin<font color="red">*</font>:</td>
                        <td><input type = "password" name = "pass" id="pass" placeholder="ENTER PIN"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="CHECK BALANCE" name = "s1"  onClick ="loginb(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						
                    </tr>
                </table>
            </fieldset>
        </form>

        
		
           </center>
        </body>
        </html>