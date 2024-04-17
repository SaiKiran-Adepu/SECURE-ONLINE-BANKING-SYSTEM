<!doctype html>
<html lang="en">
    <head>
        <title>Welcome To SKA BANKING </title>
		<script LANGUAGE="JavaScript">
         
    function login(form)
	{
		var acid = document.getElementById("acid").value;
		var pass = document.getElementById("pass").value;
		if(acid =='')
		{
			alert("please enter Account Id");
			return false;
		}
		else if(pass=='')
		{
        	alert("enter password");
			return false;
		}
		else
		{
		  //alert("please fill corect details");
		  //window.location.href =ul;
		 //const myWindow.document.open(+<form method = post action = "http://192.168.43.42:8181/test/Jdbin.jsp"); 
		  //document.writeln("<form method = post action = http://192.168.43.42:8181/uservaljsp/Jdbin.jsp ">
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
        <form method = "post" onSubmit="return login(this)" action = "jsusr.jsp">
            <fieldset style="width:23%; background-color:lightblue">
                <h3><center>Bank User Login</center></h3>
                <hr>
                <table>
                    <tr>
                        <td>User id<font color="red">* </font>:</td>
                        <td> <input type = "number" name = "acid" id="acid" Placeholder="Account Number"></td>
                    </tr>
                    <tr>
                        <td>Password<font color="red">* </font>:</td>
                        <td><input type = "password" name = "pass" id="pass"  Placeholder="Password"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="login" name = "s1" onClick ="login(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						<a href="index.html"><input type="button" value="back"></a>
						</td>
                    </tr>
                </table>
            </fieldset>
        </form>
	
		
           </center>
	</body>
</html>