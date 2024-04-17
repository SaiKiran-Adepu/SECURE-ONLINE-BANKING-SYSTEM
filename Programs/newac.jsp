<%@ include file="sessionval.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>New Account Register</title>
		<script LANGUAGE="JavaScript">
        function dil9(form)
{
   var acid9 = document.getElementById("acid9").value;
   var usr9 = document.getElementById("username9").value;
  var pass9 = document.getElementById("pass9").value;
  var trm9 = document.getElementById("trm9").value;
  var gen9 = document.getElementById("gen9").value;
   var adr9 = document.getElementById("address9").value;
    var dob9 = document.getElementById("dob9").value;
   var phn9 = document.getElementById("phn9").value;
	if(acid9=='')
	{
	
       alert("please enter ACID");
			return false;	
			}
			
	else if(usr9=='')
	{
	
       alert("please enter Username");
			return false;	
			}
			else if(pass9=='')
	{
	
       alert("please enter Password");
			return false;	
			}
					else if(trm9=='')
	{
	
         alert("please enter Transaction Mode");
		  document.F1.trm9.focus();
			return false;	
			}
			
	
			else if(gen9=='')
	{
	
       alert("please select gen");
			return false;	
			}
	
			else if(addr9=='')
	{
	
       alert("Please Enter Address");
			return false;	
			}
	      
		  else if(dob9=='')
	{
	
       alert("Please Enter DOB");
			return false;	
			}
	
	
	
	   if(!isNaN(document.F1.amt9.value))
   {
	   if(document.F1.amt9.value < 500)
	   {
		 alert("Minimum Balance should be 500 /-");
		 document.F1.amt9.value="";
		 document.F1.amt9.focus();
         return false   ;
	   }
   }
   else
   {
       alert("This  field  must  be  number");
	   document.F1.amt9.value="";
	   return false;
   }
	if(!isNaN(document.F1.phn9.value))
   {
	   if(document.F1.phn9.value >9999999999 )
	   {
		 alert("this not come");
		 document.F1.phn9.value="";
		 document.F1.phn9.focus();
         return false;   
	   }
   }
   else
   {
       alert("This  field  must  be  number");
	   document.F1.phn9.value="";
	   return false;
   }

   
	
       for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields");
		   //document.F1.pass9.focus();
		   return false;
		}
   }
return true;
   }

function ctck()
{
var sds = document.getElementById("dum");

}
</script>
</head>
<body>

	<h1>SKA BANK<span class="style1"></span></h1>
    <h2><font color="red">Express Service</font></h2>
<table style="width:950px; background:#FFFFFF; margin:0" height="50px">
<tr>
	<td width="500" valign="top" style="border-right:#666666 1px dotted;">
    	<h1>Services</h1><br>
		<table border=4px bgcolor="#b3ffff">
		<tr>
	
		<td>
		 <font color=" #33cccc"><p>here partial db account</p>
		 </td>
		 <tr>
		 <td>
		 <a href="jdbsucp.jsp" target="_blank">View Partial Customers</a>
			</td></tr>
			</table>
       
	</td>

    <td width="800" valign="top" style="border-right:#666666 1px dotted;">
    	<h1>OPEN ACCOUNT FORM</h1><br>
    	    <table  align="center" bgcolor="white">
		
		<tr>
			<td>
				<form name=F1 method="post" onSubmit="return dil9(this)" action="accountreal.jsp" >
				  <table cellspacing="4" cellpadding="1">	
				     <tr><font color="red">* Feilds Are Mandatory</font></tr>
					 <tr><td><input type="number" name="acid" id="acid9" value="1" readonly="readonly" hidden Placeholder="Account Number Auto_incrementd"/></td></tr>
					 <tr><td>AC NAME<font color="red">*</font>:</td><td> <input type="text" name="username" id="username9" Placeholder="AC Name"/></td></tr>
					<tr><td>PASS<font color="red">*</font>:</td><td> <input type="password" name="pass" id="pass9" Placeholder="AC PASS"/></td></tr>
				    <tr><td>AMOUNT<font color="red">*</font>:</td><td> <input type="number" name="amt" id="amt9" Placeholder="Amount"/></td></tr>
					<tr><input type="text" name="trm" id="trm9" value="AC Bo" hidden Placeholder="Transaction Mode"/></td></tr>
					<tr><td>GENDER<font color="red">*</font>:<br/><br/></td>
					<td>Male<input type="radio" name="gen" value="male" id="gen9">Female<input type="radio" name="gen" value="female" id="gen9"/>Not To Specify<input type="radio" name="gen" value="DSpecify" id="gen9"/><br/><br/></td></tr>
					<tr><td>ADDRESS<font color="red">*</font>:</td><td> <input type="text" name="adderess" id="address9"Placeholder="Address"/></td></tr>
					<tr><td>PHONE<font color="red">*</font>:</td><td> <input type="number" name="phn" id="phn9" Placeholder="Mobile Number"/></td></tr>
					<tr><td>DOB<font color="red">*</font>:</td><td> <input type="date" name="dob" id="dob9"/></td></tr>
					<tr><td>
					 <textarea id="demo1" name="doo1" hidden>
                               </textarea>				      		
							<script>
                                  window.onload = function () {
        DisplayCurrentTime();
    };

  
	setInterval(() => {
                                   var date = new Date();
	var current_date = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+ date.getDate();
	var current_time = date.getHours()+":"+date.getMinutes()+":"+ date.getSeconds();
	
	var date_time =current_time+" "+current_date;	
	document.getElementById("demo1").innerHTML = date_time;
							    }, 1000);
    
	
								
							
   	                             </script>
					</td><td><input type="submit" value="Submit" onClick ="dil9(this.form)"/>
			        <INPUT TYPE=RESET VALUE="CLEAR">
					
					</td></tr>
					</table>
               		</form>
			</td>
		</tr>
	
	</table>
    	   
    </td>
    
   <td width="500" valign="top" style="border-right:#666666 1px dotted;">
    	<h1>Delete Partial Customer</h1><br>
    	    <center><img src="images/arch2.jpg" alt="business" width="196" height="106"></center><br>
		<script>
	  
    function login10(form)
	{
		var cuid = document.getElementById("cuid10").value;

		if(cuid10=='')
		{
			alert("please enter CUID ");
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
	
		</script>
	    	<form method = "post" onSubmit="return login10(this)" action = "claccp.jsp" >
            <fieldset style="width:83%; background-color:#b3d1ff">
                <h3><center>Partial Account Close Page</center></h3>
                
                <table>
                    <tr>
                        <td>CUID:</td>
                        <td> <input type = "text" name = "cuid" id="cuid10" placeholder="Partial CUID"></td>
                    </tr>
                   
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="Delete Patial A/c" name = "s1"  onClick ="login10(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						</td>
						
                    </tr>
                </table>
            </fieldset>
        </form>          
	    
    </td>
    </tr>
    </table>
    </body>
    </html>