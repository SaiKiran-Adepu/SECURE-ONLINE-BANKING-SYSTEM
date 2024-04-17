 <%@ include file="sessionval.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Mobile Number Update</title>
		<script LANGUAGE="JavaScript">
		 function login5(form)
	{
	     var acid = document.getElementById("acid5").value;
		var uname = document.getElementById("name5").value;
		var phone = document.getElementById("phone5").value;
		var r =confirm("YOUR READY TO MOBILE NUMBER CHANGE FOR AC");
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
        if(acid=='')
		{
			alert("please enter ACID.");
			return false;
		}
		else if(uname =='')
		{
			alert("please enter user name.");
			return false;
		}
		else if(phone=='')
		{
        	alert("enter the Mobile Number");
			return false;
		}
		     if(r==true)
	   {
	   //alert("SUCCESSFULLY MOBILE NUMBER CHANGE For AC");
	   
	    //return true;
	   }
		else
		{ 
		  alert("MOBILE NUMBER CHANGE Denied");
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
           <form method = "post" onSubmit="return login5(this)" action = "jdphnc.jsp" >
            <fieldset style="width:25%; background-color:#b3d1ff">
                <h3><center>AC Mobile Num update</center></h3>
                <hr>
                <table>
				<tr>
                        <td>ACID:</td>
                        <td> <input type = "number" name = "acid" id="acid5" Placeholder="Account Number"></td>
                    </tr>
                    <tr>
                        <td>AC NAME:</td>
                        <td> <input type = "text" name = "name" id="name5" Placeholder="AC User Name"></td>
                    </tr>
                    <tr>
                        <td>MOBL NO:</td>
                        <td><input type = "number" name = "phone" id="phone5"  Placeholder="New Mobile Number"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="Update" name = "s1"  onClick ="login5(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()"></td>
						
                    </tr>
                </table>
            </fieldset>
        </form>

           </center>
		</body>
		</html>