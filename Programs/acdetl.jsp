<%@ include file="sessionval.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>AC Details</title>
		<script LANGUAGE="JavaScript">
         
         function login7(form)
	{
		var ais2 = document.getElementById("accid7").value;
		//var pwd1 = document.getElementById("pass").value;
	    
		if(ais2 =='')
		{
			alert("please enter Account number/id");
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
           <form method = "post" onSubmit="return login7(this)" action = "alacd.jsp" >
            <fieldset style="width:25%; background-color:#b3d1ff">
                <h3><center>AC ALL DETAILS</center></h3>
                <hr>
                <table>
                    <tr>
                        <td>Accid:</td>
                        <td> <input type = "number" name = "accid" id="accid7"  Placeholder="Account Number"></td>
                    </tr>
                   
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="ENQ" name = "s1"  onClick ="login7(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						</td>
                    </tr>
					   <tr>
                        <td></td>
                    </tr>
                </table>
            </fieldset>
        </form>

        
		
           </center>
           </body>
           </html>
