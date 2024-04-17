<%@ include file="sessionval.jsp" %>
 <!doctype html>
<html lang="en">
    <head>
        <title>Balance Enquiry</title>
		<script LANGUAGE="JavaScript">
    function logina(form)
	{
		var ais1 = document.getElementById("accid1").value;
		//var pwd1 = document.getElementById("pass").value;
	    
		if(ais1 =='')
		{
			alert("Please enter Account Number/id");
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
           <form method = "post" onSubmit="return logina(this)" action ="bals.jsp" >
            <fieldset style="width:20%; background-color:#b3d1ff ">
                <h3><center>BALANCE ENQ</center></h3>
                <hr>
                <table >
                    <tr>
                        <td>ACNO:</td>
                        <td> <input type = "number" name = "accid" id="accid1"  Placeholder="Account Number"></td>
                    </tr>
                   
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="ENQ" name = "s1"  onClick ="logina(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						</td>
                    </tr>
					  
                </table>
            </fieldset>
        </form>
		</center>
        </body>
        </html>
