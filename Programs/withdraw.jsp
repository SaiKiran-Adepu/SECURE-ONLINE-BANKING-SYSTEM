<%@ include file="sessionval.jsp"%>
<%@ include file="bacid.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Withdraw</title>
		<script LANGUAGE="JavaScript">
         function login12(form)
	{
		var maxAcidw = maxAcid;//direct variable from bacid global variable ie bank min and max acids
        var minAcidw = minAcid;
		var acid12 = document.getElementById("acid12").value;
		var amt12 = document.getElementById("amt12").value;
		var trm12 = document.getElementById("trm12").value;
		var r =confirm("YOUR WITHDRAW FUND FROM AC");
		//var phone = document.getElementById("phone").value;
		if(acid12=='')
		{
			alert("please enter ACID");
			return false;
		}
	    if(acid12<minAcidw)
		{
			alert("AC "+acid12+" Not EXIST IN SKA BANK");
			return false;
	        document.F1.acid12.focus();
			document.F1.acid12.value="";
		}
			 if(acid12>maxAcidw)//maxAcid and minAcid are variables from bacid is a global package in that holding values of from to acid
		{
			alert("AC "+acid12+" Not EXIST IN SKA BANK");
			return false;
	        document.F1.acid12.focus();
			document.F1.acid12.value="";
		}
	
		else if(amt12=='')
		{
        	alert("enter AMT");
			return false;
		}
	   	else if(trm12=='')
		{
        	alert("enter TRM");
			return false;
		}
	        if(r==true)
	   {
	 /*  alert("WITHDRAWN FROM AC");
	   return true;*/
	   }
	    
		else
		{ 
		  alert("WITHDRAW Denied");
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
        <form method = "post" onSubmit="return login12(this)" action = "jswdr.jsp">
            <fieldset style="width:25%; background-color:orange">
                <h3><center><font color="black">Withdraw Form</font></center></h3>
                <hr>
                <table>
                    <tr>
                        <td>ACID:</td>
                        <td> <input type = "number" name = "acid12" id="acid12" Placeholder="Account Number"></td>
                    <input type="number" name="trnno12"  value="100" hidden readonly="readonly"  Placeholder="TRNO Auto_incrementd"/></td>
                      <input type="radio" name="trm12" value="Db B" hidden id="trm1" checked ></td>
					
					
					
					 <textarea id="demo3" name="dot2" hidden>
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
	document.getElementById("demo3").innerHTML = date_time;
							    }, 1000);		
   	                             </script>
							
					</tr>
				
                    <tr>
					
					<textarea id="demo4" name="dot3" hidden>
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
	document.getElementById("demo4").innerHTML = date_time;
							    }, 1000);
    
								
							
   	                             </script>
						 
                        
                        <td>AMT</td>
                        <td><input type = "number" name = "amt12" id="amt12" Placeholder="Amount"></td>
                    </tr>
                    
					<tr>
                        
                      
                        <td><input type = "text" name = "trm12" value="WdB" hidden id="trm12" Placeholder="Transaction Mode"></td>
                    </tr>
                    
					<tr>
					
                        <td></td>
                        <td><input type = "submit" value="withdraw" name = "s1" onClick ="login12(this.form)">
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
