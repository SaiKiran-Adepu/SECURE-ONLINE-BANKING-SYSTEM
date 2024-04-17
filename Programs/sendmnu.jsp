<%@ include file="sessionvalu.jsp"%>
<%@ include file="bacid.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Send Money</title>
		<script LANGUAGE="JavaScript">
               
    function login3(form)
	{
        var minAcidu = minAcid;
		var maxAcidu = maxAcid;
		var pass = document.getElementById("pass3").value;
		var acid1 = document.getElementById("acid13").value;
		var amt1 = document.getElementById("amt13").value;
		 var r =confirm("YOUR TRANSFERING FUND TO ANOTHER AC");
		
		if(acid1=='')
		{
			alert("Please Enter Target ACID");
			document.F1.acid1.value="";
	        document.F1.acid1.focus();	
			return false;
		}
	 if(acid1<minAcidu) //directly restricting the lesser ac number
	{
		alert("AC "+acid1+" Not EXIST IN SKA BANK");
			document.F1.acid1.value="";
	        document.F1.acid1.focus()
			return false;
	}
	     if(acid1>maxAcidu)
	{
		alert("AC "+acid1+" Not EXIST IN SKA BANK");
		document.F1.acid1.value="";
		document.F1.acid1.focus();
		return false;
	}
		else if(amt1=='')
		{
        	alert("Enter Fund");
			document.F1.amt1.value="";
	        document.F1.amt1.focus();	
			return false;
		}
	   	else if(pass=='')
		{
        	alert("Enter Your Password");
			document.F1.pass.value="";
	        document.F1.pass.focus();	
			return false;
		}

	   
	    else if(document.F1.acid3.value==document.F1.acid13.value)
       {
	     alert("Your Trying To Transfer Fund In Same ACID !"); 
	     document.F1.acid13.value="";
	     document.F1.acid13.focus();	
	     return false;
		 
	   }
	  
		/*else if(document.F1.amt3.value!=document.F1.amt13.value)
       {
	     alert("Please Confirm AMOUNT Should be Same!"); 
	     document.F1.amt13.value="";
	     document.F1.amt13.focus();	
	     return false;
		 
	   }*/
	   if(r==true)
	  {
	  // alert("Fund Transfered to AC");
	  // return true;
	   }
	    
		else
		{ 
		  alert("Transfer Fund Denied");
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
        <form name=F1 method = "post" onSubmit="return login3(this)" id="cr" action = "jstrnu.jsp">
		<br>
              <fieldset style="width:26%; height:42%; background-color:#b0c4de">
                    <h3><center>SEND MONEY</center></h3>
					
				    <table>
						
						<hr>
				          <center><font color="Green">TO ACID/ACCOUNT</font></center>
						 <tr>
						<td> <input type="number" hidden name="trnno" id="trnno" value="100" readonly="readonly"  Placeholder="CUID Auto_incrementd"/></td>
                        </tr>
						<tr>
						<td>ACID:</td>
                        <td> <input type = "number" name = "acid1" id="acid13" Placeholder="RECEIVER ACID"></td>
                      </tr>
				
                       <tr>
                        
                        <td>AMOUNT:</td>
                        <td><input type = "number" name = "amt1" id="amt13" Placeholder="AMOUNT"></td>
                       </tr>   
					   
					   </table>
					   <table>
					   <hr>
						  <center><font color="red">YOUR ACCOUNT</font></center>
						  <tr>
						  <td><input type="radio" name="trm" value="Db A" id="trm" checked hidden></td>
						  </tr>
						   <tr>
						  <td><input type="radio" name="trm1" value="Cr A" id="trm1" checked hidden></td>
						  </tr>
						  <tr>
						  <td>
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
							</td>						    
              			  </tr>
						  <tr>
						  <td>
						  
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
						  </td>
						  </tr>
                       <tr>
					      <%
					   //int no13 =Integer.parseInt(request.getParameter("acid"));
					   //session.setAttribute("acid",no1);
					    out.println("<textarea rows1 cols=15 name = acid id=acid3 hidden>"+n1+"</textarea>");
						
                        %> 
						</tr>
                          <tr>
						<td>PWD:</td>
                        <td><input type = "password" name = "pass" id="pass3" Placeholder="PASSWORD"></td>
                       </tr>
					   <tr>
                        <td></td>
                        <td><input type = "submit" value="PAY" name = "s1" onClick ="login3(this.form)">
						<input type="reset" value="Reset" onclick="clearFunc()">
						
						</td>
                       </tr>
	
                </table>
            </fieldset>
        </form>
		
           </center>




 </body>
 </html>