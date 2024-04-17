<%@ include file="sessionvalu.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>PIN Update</title>
		<script LANGUAGE="JavaScript">
            
    function login1(form)
	{
	     //var acid = document.getElementById("acid1").value;
		var uname = document.getElementById("name1").value;
		var pwd1 = document.getElementById("pass1").value;
		var r =confirm("YOUR READY PINCHANGE FOR AC ");
	
		if(uname =='')
		{
			
		
			alert("Please enter user name.");
				  //document.F1a.uname.value="";
	     //document.F1a.uname.focus();	
		 //document.getElementById("uname").focus();
			return false;
		}
		else if(pwd1=='')
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
		  alert("PINCHANGE Denied");
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
           <form method = "post" name=F1a onSubmit="return login1(this)" action = "Jdpinu.jsp" >

            <fieldset style="width:26%; height:22%; background-color:#b3d1ff">
                <h3><center>PIN UPDATE</center></h3>
                <hr>
                <table>
				
			
                       <tr>
                       
						  <%
					   //int no1 =Integer.parseInt(request.getParameter("acid"));
					   //session.setAttribute("acid",no1);
					    out.println("<textarea rows1 cols=15 name = acid id=acid1 hidden>"+n1+"</textarea>");
						
                        %>
                    </tr>
                    <tr>
                        <td>Name<font color="red">* </font>:</td>
                        <td> <input type = "text" name = "name" id="name1" placeholder="Your NAME ON ACID"></td>
                    </tr>
					
                    <tr>
                        <td>Pin<font color="red">* </font>:</td>
                        <td><input type = "password" name = "pass" id="pass1" placeholder="NEW PIN"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="Pin change" name = "s1"  onClick ="login1(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						
                    </tr>
                </table>
            </fieldset>
        </form>

        
		
           </center>
  
  </body>
  </html>