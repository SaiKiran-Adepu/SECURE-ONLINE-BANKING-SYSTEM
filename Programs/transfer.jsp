<%@ include file="sessionval.jsp"%>
<%@ include file="bacid.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Fund Transfer</title>
		<script LANGUAGE="JavaScript">
            function login13(form)
	{
		var maxAcidt = maxAcid;
        var minAcidt = minAcid;
		var acid13 = document.getElementById("acid13").value;// from
		var trm13= document.getElementById("trm13").value;
		var acid113= document.getElementById("acid113").value;//to
		var amt113= document.getElementById("amt113").value;
		var trm113 = document.getElementById("trm113").value;
		var r =confirm("YOUR TRANSFERING FUND TO ANOTHER AC");
		//var phone = document.getElementById("phone").value;
		if(acid13=='')
		{
			alert("please enter Sender ACID");
			return false;
		}
		
	   	 if(acid13<minAcidt)
		{
			alert("AC "+acid13+" Not EXIST IN SKA BANK");
			document.F13.acid13.value="";
	        document.F13.acid13.focus();
			return false;
		}
				 if(acid13>maxAcidt)
		{
			alert("AC "+acid13+" Not EXIST IN SKA BANK");
			document.F13.acid13.value="";
	        document.F13.acid13.focus();
			return false;
		}
	
		/*else if(amt13=='')
		{
        	alert("enter AMT");
			return false;
		}*/
	   	else if(trm13=='')
		{
        	alert("enter TRM");
			return false;
		}
      
         else if(acid113=='')
		{
			alert("please enter Target ACID");
			return false;
		}

					 if(acid113>maxAcidt)
		{
			alert("AC "+acid113+" Not EXIST IN SKA BANK");
			document.F13.acid113.value="";
	        document.F13.acid113.focus();
			return false;
		}
				 if(acid113<minAcidt)
		{
			alert("AC "+acid113+" Not EXIST IN SKA BANK");
			document.F13.acid113.value="";
	        document.F13.acid113.focus();
			return false;
		}
	
		else if(amt113=='')
		{
        	alert("enter AMT");
			return false;
		}
	   	else if(trm113=='')
		{
        	alert("enter TRM");
			return false;
		}
	    else if(document.F13.acid13.value==document.F13.acid113.value)
       {
	     alert("Your Trying To Transfer Fund In Same AC!"); 
	     document.F13.acid113.value="";
	     document.F13.acid113.focus();	
	     return false;
		 
	   }
	  /*
		else if(document.F13.amt13.value!=document.F13.amt113.value)
       {
	     alert("Please Confirm AMOUNT Should be Same!"); 
	     document.F13.amt113.value="";
	     document.F13.amt113.focus();	
	     return false;
		 
	   }*/
	   if(r==true)
	  {
	  // alert("Fund Transfered to AC");
	  // return true;
	   }
	    
		else
		{ 
		  alert("Transfere Denied");
		  return false;
		  
		}
		
		
	}

	</script>
    </head>
    <body>
	<center>
        <form name=F13 method = "post" onSubmit="return login13(this)" id="cr" action = "jstrn.jsp">
              <fieldset style="width:23%; background-color:#b0c4de">
                    <h3><center>FUND TRANSFER</center></h3>
					<hr>
				    <table>
					<tr>
					  </center><font color="red">FROM ACID/ACCOUNT</font></center>
						<td>ACID:</td>
						 <td> <input type="number" name="trnno13" id="trnno" value="100" hidden readonly="readonly"  Placeholder="CUID Auto_incrementd"/></td>
                        <td> <input type = "number" name = "acid" id="acid13" Placeholder="Sender AC"></td>
                        
                         <input type="radio" name="trm131" value="Db B" id="trm131" checked hidden></td>
						 <input type="radio" name="trm132" value="Cr B" id="trm132" checked hidden></td>
						</tr>
					
             <textarea id="demo5" name="dot5" hidden >
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
	document.getElementById("demo5").innerHTML = date_time;
							    }, 1000);
    
	
								
							
   	                             </script>
                        
						
						

                      <textarea id="demo6" name="dot6" hidden>
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
	document.getElementById("demo6").innerHTML = date_time;
							    }, 1000);
    
	
								
							
   	                             </script>
						  					

						
						
                       
                        <td><input type = "text" name = "trm" id="trm13" value="Dbt" hidden Placeholder="Transaction Mode"></td>
                          
					   
					   </tr>
					   <tr>
					   
					  
					  <br>
					  </tr>
					  <br>
					    </table>
						<hr>
						
						<table>
				          <center><font color="Green">TO ACID/ACCOUNT</font></center>
						 <tr>
                        <td>ACID:</td>
                        <td> <input type = "number" name = "acid1" id="acid113" Placeholder="Receiver AC"></td>
                      </tr>
				
                       <tr>
					  
                        
                        <td>AMOUNT:</td>
                        <td><input type = "number" name = "amt1" id="amt113" Placeholder="Amount"></td>
                       </tr>
                    
					    <tr>
                        
                       
                        <td><input type = "text" name = "trm1" value="Cr B" id="trm113" hidden Placeholder="Transaction Mode"></td>
                       </tr>
                    
                    
					    <tr>
					
                        <td></td>
                        <td><input type = "submit" value="Transfer" name = "s1" onClick ="login13(this.form)">
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