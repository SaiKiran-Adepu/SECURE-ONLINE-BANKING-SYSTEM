<%@ include file="sessionvalu.jsp"%>
<%@ include file="bacid.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>Money Request</title>
		<script LANGUAGE="JavaScript">
                
    function login4(form)
	{
		var maxAcidur = maxAcid;
        var minAcidur = minAcid;
		var acid1 = document.getElementById("acid14").value;
		var acidr = document.getElementById("acidr").value;
		var amt1 = document.getElementById("amt14").value;
	
			if(acid1=='')
		   {
			   alert("Enter ACID");
			   document.F11.acid1.value="";
			   return false;
		   }

		 if(acid1<minAcidur)
  {
	  alert("AC "+acid1+" Not EXIST IN SKA BANK");
	  document.F11.acid1.value="";
	  document.F11.acid1.focus();
	  return false;
  }
		 if(acid1>maxAcidur)
		{

			alert("AC "+acid1+" Not EXIST IN SKA BANK");
			document.F11.acid1.value="";
			document.F11.acid1.focus();
			return false;
		}
           		 else if(amt1=='')
		{
        	alert("Enter Amount");
			document.F11.amt1.value="";
			return false;
		}
	   
        else if(document.F11.acidr.value==document.F11.acid1.value)
       {
	     alert("Your Trying To Requesting Fund In Same ACID !"); 
	     document.F11.acid1.value="";
	     document.F11.acid1.focus();	
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
        <form name=F11 method = "post" onSubmit="return login4(this)" id="cr" action = "jsmreq.jsp">
		<br>
              <fieldset style="width:25%; height:25%; background-color:lightblue">
                    <h3><center>REQ MONEY</center></h3>
					
				    <table>
					  
                       <tr>
					   <%
					     //int no13 =Integer.parseInt(request.getParameter("acid"));
					     out.println("<textarea rows1 cols=15 id=acidr name = acid hidden>"+n1+"</textarea>");
						
                        %> 
                         </tr>
					   
					    </table>
						<hr>
						
						<table>
				          <center><font color="Green">TO ACID/ACCOUNT</font></center>
						 <tr>
					
					   
                        <td>ACID:</td>
                        <td> <input type = "number" name = "acid1" id="acid14" Placeholder="REQ ACID"></td>
                      </tr>
				
                       <tr>
                        
                        <td>AMOUNT:</td>
                        <td><input type = "text" name = "amt1" id="amt14" Placeholder="REQ AMOUNT"></td>
                       </tr>

                        
                 <tr>
					
                        <td></td>
                        <td><input type = "submit" value="REQ" name = "s1" onClick ="login4(this.form)">
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