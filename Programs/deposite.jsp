<%@ include file="sessionval.jsp"%>
<%@ include file="bacid.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Deposite</title>
		<script LANGUAGE="JavaScript">
            function login11(form)
	{
		var maxAcidd = maxAcid;
		var minAcidd = minAcid;
		var acid11 = document.getElementById("acid11").value;
		var amt11 = document.getElementById("amt11").value;
		var trm11 = document.getElementById("trm11").value;
		 var r =confirm("YOUR DEPOSITE FUND TO AC");
		 //document.write(minAcidd);
		//var phone = document.getElementById("phone").value;
		if(acid11=='')
		{
			alert("please enter ACID");
			return false;
		}
		 if(acid11<minAcidd)
		{
			alert("AC "+acid11+" Not EXIST IN SKA BANK");
			document.F1.acid11.value="";
	        document.F1.acid11.focus();
			return false;
		}
			 if(acid11>maxAcidd)//maxAcid and minAcid are variables from bacid is a global package in that holding values of from to acid
		{
			alert("AC "+acid11+" Not EXIST IN SKA BANK");
			document.F1.acid11.value="";
	        document.F1.acid11.focus();
			return false;
		}
		else if(amt11=='')
		{
        	alert("enter AMT");
			return false;
		}
	   	else if(trm11=='')
		{
        	alert("enter TRM");
			return false;
		}
	         if(r==true)
	   {
	  // alert("SUCCESSFULLY DEPOSITED to AC");
	   //return true;
	   }
	    
		else
		{ 
		  alert("DEPOSITE DENIED");
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
        <form name=F1 method = "post" onSubmit="return login11(this)" action = "jsdep.jsp">
            <fieldset style="width:25%; background-color:#7cfc00">
                <h3><center>Deposit Form</center></h3>
                <hr>
                <table>
                    <tr>
                        <td>ACID:</td>
                        <td> <input type = "number" name = "acid11" id="acid11" Placeholder="Account Number"></td>
                    <td> <input type="number" name="trnno" value="100" readonly="readonly"  hidden Placeholder="TRNO Auto_incrementd"/></td>
                      <input type="radio" name="trm1d" value="Cr B" checked hidden></td>
						  				
					</tr>
				
                    <tr>
					
						   <textarea id="demo1" name="dot" hidden>
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
							
                        
                        <td>AMOUNT</td>
                        <td><input type = "number" name = "amt11" id="amt11" Placeholder="Amount"></td>
                    </tr>
                    
					<tr>
					<textarea id="demo2" name="dot1" hidden>
                               </textarea>	
							   <script>
                                  window.onload = function () {
        DisplayCurrentTime();
    };
	setInterval(() => {
                                   var date = new Date();
	var current_date = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+ date.getDate();
	//var current_time = date.getHours()+":"+date.getMinutes()+":"+ date.getSeconds();
	
	var date_time =current_date;	
	document.getElementById("demo2").innerHTML = date_time;
							    }, 1000);
    
	
								
							
   	                             </script>
						  
						  
						
                        
                        
                        <td><input type = "text" name = "trm11" id="trm11" value="DpB" hidden Placeholder="Transaction Mode"></td>
                    </tr>
                    
					<tr>
					
                        <td></td>
                        <td><input type = "submit" value="Deposite" name = "s1" onClick ="login11(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						
						</td>
                    </tr>
                </table>
            </fieldset>
        </form>
		
        <br>
		
           </center>
        </body>
        </html>