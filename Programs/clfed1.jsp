<%@ include file="sessionval.jsp"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Delete Feedback</title>
    </head>
<script>       
    function login(form)
	{
		var accid = document.getElementById("name").value;
		if(accid =='')
		{
			alert("please enter Feedbackes Name ");
			return false;
		}
		 
		
		
	}
		function clearFunc()
	{
		document.getElementById("email").value="";
		document.getElementById("pwd1").value="";
	}	
		</script>
		
    <body>
	<center>
           <form method = "post" onSubmit="return login(this)" action = "clfed.jsp" >
            <fieldset style="width:23%; background-color:#b3d1ff">
                <h3><center>Feedback Delete Page</center></h3>
                <hr>
                <table>
                    <tr>
                        <td>Name:</td>
                        <td> <input type = "text" name = "name" id="name" Placeholder="Name Of Feedbacker"></td>
                    </tr>
                   
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="Delete Feedback" name = "s1"  onClick ="login(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						<a href="feedbp.jsp"><input type = "button" value="All Feedbacks" name = "s1"></a>
						
						
					</td>
                    </tr>
                </table>
            </fieldset>
        </form>

       
		
           </center>
	</body>
</html>