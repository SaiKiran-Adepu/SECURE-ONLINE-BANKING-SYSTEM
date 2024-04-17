<!doctype html>
<html lang="en">
    <head>
        <title>Welcome To SKA BANKING </title>
		<script LANGUAGE="JavaScript">
         
    function login(form)
	{
		var name = document.getElementById("name").value;
		var pass = document.getElementById("pass").value;
		if(name =='')
		{
			alert("please enter Admin name.");
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
		<script type="text/javascript" src="datetime.js">
		document.getElementById("demo1").innerHTML = date_time;//need to declare here because its a variable
		</script>
    </head>
    <body>
	<center>
        <form method = "post" onSubmit="return login(this)" action = "jmgr">
            <fieldset style="width:23%; background-color:lightblue">
                <h3><center>Bank MGR Login</center></h3>
                <hr>
                <table>
                    <tr>
                        <td>MGR name<font color="red">* </font>:</td>
                        <td> <input type = "text" name = "namem" id="name"  Placeholder="Manager Name"></td>
                    </tr>
                    <tr>
                        <td>Password<font color="red">* </font>:</td>
                        <td><input type = "password" name = "passm" id="pass"  Placeholder="Password"></td>
                    </tr>
					
					     <tr>
                        <td>
						
						
						   <textarea id="demo1" name="dot" hidden>
                               </textarea>				      		
							
						
								 </td>
						
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
		
        <br>
		
           </center>
	</body>
</html>