<%@ include file="sessionval.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>AC Delete</title>
		<script LANGUAGE="JavaScript">
         function login8(form)
	{
		var accid8 = document.getElementById("accid8").value;
		if(accid8 =='')
		{
			alert("please enter account id ");
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
           <form method = "post" onSubmit="return login8(this)" action = "clacc.jsp" >
            <fieldset style="width:25%; background-color:#b3d1ff">
                <h3><center>Ac Close Page</center></h3>
                <hr>
                <table>
                    <tr>
                        <td>AC:</td>
                        <td> <input type = "number" name = "accid" id="accid8" Placeholder="Account Number"></td>
                    </tr>
                   
                    <tr>
					<td></td>
                        
                        <td><input type = "submit" value="Delete A/C" name = "s1"  onClick ="login8(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						</td>
						
                    </tr>
                </table>
            </fieldset>
        </form>
		
           </center>
           </body>
           </html>