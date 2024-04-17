 <%@ include file="sessionval.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>AC PIN Update</title>
		<script LANGUAGE="JavaScript">
        function login6(form)
	{
	     var acid6 = document.getElementById("acid6").value;
		var uname6 = document.getElementById("name6").value;
		var pwd6 = document.getElementById("pass6").value;
		var r =confirm("YOUR REDAY PINCHANGE FOR AC ");
	    //var ul="http://192.168.43.42:8181/test/Jdbin.jsp";
		/*for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields");
		   //document.F1.accountno.focus()
		   return false;
		}
   }*/
        if(acid6=='')
		{
			alert("please enter ACID.");
			return false;
		}
		else if(uname6=='')
		{
			alert("please enter user name.");
			return false;
		}
		else if(pwd6=='')
		{
        	alert("enter the password");
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
           <form method = "post" onSubmit="return login6(this)" action = "Jdpin.jsp" >
            <fieldset style="width:25%; background-color:#b3d1ff">
                <h3><center>AC PIN UPDATE</center></h3>
                <hr>
                <table>
				<tr>
                        <td>ACID:</td>
                        <td> <input type = "number" name = "acid" id="acid6" Placeholder="Account Number"></td>
                    </tr>
                    <tr>
                        <td>AC NAME:</td>
                        <td> <input type = "text" name = "name" id="name6"  Placeholder="AC Name"></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type = "password" name = "pass" id="pass6" Placeholder="AC Pass"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="Pin change" name = "s1"  onClick ="login6(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						 </td>
                    </tr>
                </table>
            </fieldset>
        </form>

        
		
           </center>
           </body>
           </html>
