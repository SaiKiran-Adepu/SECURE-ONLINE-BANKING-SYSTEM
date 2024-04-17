<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{    
     var cuid = document.getElementById("cuid").value;
	  var usr = document.getElementById("username").value;
	  	    //var amt = document.getElementById("amt").value;
		 var trn = document.getElementById("trm").value;
		  var addr = document.getElementById("addr").value;
		  // var phn = document.getElementById("phn").value;
	 if(cuid=="")
	 {
	 alert("enter cuid");
	 return false;
	 }
	 else if(usr=="")
	 {
	 alert("enter Username");
	 return false;
	 }
	 if(document.F1.pass.value!=document.F1.repass.value)
    {
	   alert("Check Confirm PWD"); 
	   document.F1.repass.value=""
	   document.F1.repass.focus()	
	   return false
	}
	
	if(!isNaN(document.F1.phn.value))
   {
	   if(document.F1.phn.value >9999999999 )
	   {
		 alert("ye kabhi nhi aayegi");
		 document.F1.phn.value="";
		 document.F1.phn.focus();
         return false   ;
	   }
   }
   else
   {
       alert("This  field  must  be  number");
	   document.F1.phn.value="";
	   return false;
   }
	if(!isNaN(document.F1.amt.value))
   {
	   if(document.F1.amt.value < 500)
	   {
		 alert("Minimum Balance should be 500 /-");
		 document.F1.amt.value="";
		 document.F1.amt.focus();
         return false   ;
	   }
   }
   else
   {
       alert("This  field  must  be  number");
	   document.F1.amt.value="";
	   return false;
   }
   
      if(trn=="")
	 {
	 alert("enter Transaction MOde");
	 return false;
	 }
	  	 else if(addr=="")
	 {
	 alert("enter Address");
	 return false;
	 }

   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields");
		   document.F1.username.focus();
		   return false;
		}
   }

   

   return true   ;
   }
</SCRIPT>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SKA Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body>

<div id="top_links">
  

<div id="header">
	<h1>SKA BANK<span class="style1"></span></h1>
    <h2>Express Service</h2>
    <A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>	
</div>





<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>BANK ADMINS</h1><br>
		    <ul>
        	<li><font color="blue">SAI</font></li>
            <li><font color="#0066cc">SAI KIRAN</font></li>
            <li><font color="  #269900">RAMESH</font></li>
			            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>OPEN ACCOUNT FORM</h1><br>
    	    <table  align="center" bgcolor="white">
		<tr>
			
		</tr>
		<tr>
			<td>
				<form name=F1 method="post" onSubmit="return dil(this)" action="accountp.jsp" >
				  <table cellspacing="5" cellpadding="3">
                   <tr><font color="red">* Feilds Mandatory</font></tr>				  
				  <tr><td></td><td> <input type="number" hidden name="cuid" id="cuid" value="1" readonly="readonly"  Placeholder="CUID Auto_incrementd"/></td></tr>
				    <tr><td>NAME<font color="red">* </font>:</td><td> <input type="text" name="username" id="username" Placeholder="Your Name"/></td></tr>
					<tr><td>GENDER<font color="red">* </font>:<br/><br/></td>
					<td>Male<input type="radio" name="gen" value="Male" id="gen">Female<input type="radio" name="gen" value="Female" id="gen">Not To Specify<input type="radio" name="gen" value="DSpecify" id="gen"><br/><br/></td></tr>
				    <tr><td>PASSWORD<font color="red">* </font>:</td><td> <input type="password" name="pass" id="pass" Placeholder="Password"/></td></tr>
					<tr><td>RE-PASS<font color="red">* </font>:</td><td> <input type="password" name="repass" id="repass" Placeholder="Re-enter Password"/></td></tr>
					<tr><td>AMT<font color="red">* </font>:</td><td> <input type="number" name="amt" id="amt" Placeholder="Amount Should Be 500"/></td></tr>
					<tr><input type="text" name="trm" id="trm" value="CbOr" hidden Placeholder="Transaction Mode"/></td></tr>
					<!-- Gender:<br/><br/>
					Male<input type="radio" name="gender" value="male"> Female<input type="radio" name="gender" value="female"/><br/><br/> -->
					<tr><td>ADDRESS<font color="red">* </font>:</td><td> <input type="text" name="addr" id="addr" Placeholder="Address"/></td></tr>
					<tr><td>MOBILE<font color="red">* </font>:</td><td> <input type="number" name="phn" id="phn" Placeholder="Mobile Number"/></td></tr>
					<tr><td>DOB<font color="red">* </font>:</td><td> <input type="date" name="dob" id="dob" Placeholder="DOB"/></td></tr>
					<tr><td>
					  <textarea id="demo1" name="doo" hidden>
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
					</td><td><input type="submit" value="Submit" onClick ="dil(this.form)"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR">
					<a href="index.html"><INPUT TYPE="button" VALUE="Back"></a>
					</td></tr>
					</table>
               		</form>
			</td>
		</tr>
	
	</table>
    	   </div>      
    </td>
    
   <td width="299" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>Welcome</h1><br>
    	    <center><img src="images/wel.jpg" alt="business" width="196" height="106"></center><br>
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	    	
	    </div>      
    </td>
             	
    
</tr></table>
    
<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
 
    	    <center><img src="images/arch3.jpg"  alt="business"  width="196" height="106"></center><br>
		    <p>Each people plan their site layouts depending upon their business type. Here comes a free designer template which provides you with a selection of different kinds of webdesign   starting from business template, fashion template, media template, Science template, Arts template and much more.</p>
	  
  Copyright ©SKA BANKING DEVELOPMENTS ALL RIGHTS RECEIVED 2022 </div>
</div>

<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>

