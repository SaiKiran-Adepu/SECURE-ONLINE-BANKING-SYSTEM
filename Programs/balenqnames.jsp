<%@ include file="sessionval.jsp" %>
 <!doctype html>
<html lang="en">
    <head>
        <title>Bal Enq Name TBL</title>
		<script LANGUAGE="JavaScript">
		 function login4(form)
	{
		var une = document.getElementById("username4").value;
		//var pwd1 = document.getElementById("pass").value;
	    
		if(une =='')
		{
			alert("please enter AC NAME");
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
           <form method = "post" onSubmit="return login4(this)" action = "acntb.jsp" >
            <fieldset style="width:30%; background-color:#b3d1ff">
                <h3><center>Bal ENQ AC NAMES TOTAL </center></h3>
                <hr>
                <table>
                    <tr>
                        <td>A/C MOBILE NUMBER:</td>
                        <td> <input type = "text" name="username" id="username4"  Placeholder="AC Name"></td>
                    </tr>
                   
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="ENQ " name = "s1"  onClick ="login4(this.form)">
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