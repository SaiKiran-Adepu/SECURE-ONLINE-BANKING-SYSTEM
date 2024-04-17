<%@ include file="sessionval.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Transacation Enquiry</title>
		<script LANGUAGE="JavaScript">
            function logint1(form)
	{
		var aistt = document.getElementById("actrn1").value;
		//var pwd1 = document.getElementById("pass").value;
	    
		if(aistt =='')
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
           <form method = "post" onSubmit="return logint1(this)" action ="trenac.jsp" >
            <fieldset style="width:25%; background-color:#b3d1ff ">
                <h3><center>AC TRANSACTION STATEMENT</center></h3>
                <hr>
                <table >
                    <tr>
                        <td>ACID:</td>
                        <td> <input type = "number" name = "actr" id="actrn1"  Placeholder="ACID Number"></td>
                    </tr>
                   
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="ENQ" name = "s1"  onClick ="logint1(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						</td>
                    </tr>
					  
                </table>
            </fieldset>
        </form>
		</center>
        </body>
        </html>