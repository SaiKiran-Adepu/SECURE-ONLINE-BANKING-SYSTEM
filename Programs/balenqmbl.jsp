<%@ include file="sessionval.jsp" %>
 <!doctype html>
<html lang="en">
    <head>
        <title>Bal Enq Mobile Number</title>
		<script LANGUAGE="JavaScript">
		function login3(form)
	{
		var phn = document.getElementById("phone3").value;
		//var pwd1 = document.getElementById("pass").value;
	    
		if(phn3=='')
		{
			alert("please enter MOBILE NUMBER");
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
           <form method = "post" onSubmit="return login3(this)" action = "acphstb.jsp" >
            <fieldset style="width:25%; background-color:#b3d1ff">
                <h3><center>BAL ENQ BY MOBILE NUM,TOTAL BAL </center></h3>
                <hr>
                <table>
                    <tr>
                        <td>MBl NUM:</td>
                        <td> <input type = "number" name="phone" id="phone3"  Placeholder="AC Mobile"></td>
                    </tr>
                   
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="ENQ BY MOBILE" name = "s1"  onClick ="login3(this.form)">
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