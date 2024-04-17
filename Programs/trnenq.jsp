<%@ include file="sessionval.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Transacation Enquiry</title>
		<script LANGUAGE="JavaScript">
             function logint(form)
	{
		var trnt = document.getElementById("trnt22").value;
		//var pwd1 = document.getElementById("pass").value;
	    
		if(trnt =='')
		{
			alert("Please enter Transaction Number Number/id");
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
           <form method = "post" onSubmit="return logint(this)" action ="tren.jsp" >
            <fieldset style="width:25%; background-color:#b3d1ff ">
                <h3><center>TRANSACTION ENQ</center></h3>
                <hr>
                <table >
                    <tr>
                        <td>TRNO:</td>
                        <td> <input type ="number" name = "trno" id="trnt22" Placeholder="Transaction Number"></td>
                    </tr>
                   
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="ENQ" name = "s1"  onClick ="logint(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						</td>
                    </tr>
					  
                </table>
            </fieldset>
        </form>
		</center>
    </body>
    </html>