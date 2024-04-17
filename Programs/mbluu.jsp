<%@ include file="sessionvalu.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Mobile Number Update</title>
		<script LANGUAGE="JavaScript">
              function login2(form)
	{
	     //var acid = document.getElementById("acid1").value;
		var phn2 = document.getElementById("phone2").value;
		var pwd2 = document.getElementById("pass2").value;
		var r =confirm("YOUR REDAY MOBILE UPDATE FOR AC ");


		if(phn2=='')
		{
			
		
			alert("Please Enter Mobile Number.");
				  //document.F1a.uname.value="";
	     //document.F1a.uname.focus();	
		 //document.getElementById("uname").focus();
			return false;
		}
		else if(pwd2=='')
		{
			 	
        	alert("Please Enter the password.");
			// document.F1a.pwd1.value="";
	         //document.pwd1.focus();
			return false;
		}
		       if(r==true)
	   {
	  // alert("SUCCESSFULLY PIN CHANGED FOR AC");
	  // return true;
	   }
	    
		else
		{ 
		  alert("Mobile Update Denied");
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
           <form method = "post" onSubmit="return login2(this)" action = "jdphncu.jsp" >
            <fieldset style="width:26%; height:22%; background-color:#b3d1ff">
                <h3><center>MOBILE NUM UPDATE</center></h3>
                <hr>
                <table>
				<tr>
                         <%
					   //int no12 =Integer.parseInt(request.getParameter("acid"));
					   //session.setAttribute("acid",no1);
					    out.println("<textarea rows1 cols=15 name = acid id=acid2 hidden>"+n1+"</textarea>");
                        

                        %>                        

						</tr>				
                    <tr>
                        <td>MOBL NUMBER:</td>
                        <td><input type = "number" name = "phone" id="phone2" placeholder="New Mobile Num"></td>
                    </tr>
						<tr>
                        <td>Password:</td>
                        <td> <input type = "password" name = "pass" id="pass2" placeholder="Password"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="Mobile Update" name = "s1"  onClick ="login2(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						
                    </tr>
                </table>
            </fieldset>
        </form>
           </center>
           </body>
           </html>