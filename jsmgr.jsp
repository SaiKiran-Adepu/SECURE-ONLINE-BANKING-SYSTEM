<%@ include file="packages.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%!
    Connection con;
    PreparedStatement ps1,ps2,ps22,ps23,ps2b,ps2a,ps24,ps25,ps26,ps27,ps28,ps29;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps1 = con.prepareStatement("select count(*) from skaadm where adname= ? and adpass=?");
           // ps2 = con.prepareStatement("select * from skaadm");
		   ps22 = con.prepareStatement("select sum(fund) from skatrns where dot1=?");
           ps23 = con.prepareStatement("select trno,acid,fund,tacid,trm,dot,trm2 from skatrns where dot1= ? ORDER BY trno DESC"); 
		   ps2b = con.prepareStatement("select sum(amt) from userreal");
		   ps2a = con.prepareStatement("select acid,username,gender,amt,trm,address,phone from userreal ORDER BY acid");
           //ps24 = con.prepareStatement("select sum(fund) from skatrns where dot1=? or trm='Db B' and trm2='Cr B' ORDER BY dot ");
		  // ps25 = con.prepareStatement("select trno,acid,fund,tacid,trm,dot,trm2 from skatrns where dot1= ? or trm='Db B' and trm2='Cr B' ORDER BY trno desc"); 
		   ps26 = con.prepareStatement("select sum(fund) from skatrns where dot1=? and trm2='Cr B' ORDER BY trno desc ");
		   ps27 = con.prepareStatement("select trno,acid,fund,tacid,trm,dot,trm2 from skatrns where dot1= ? and trm2='Cr B' ORDER BY trno desc"); 
		   ps28 = con.prepareStatement("select sum(fund) from skatrns where dot1=? and trm='Db B' ORDER BY trno desc ");
		   ps29 = con.prepareStatement("select trno,acid,fund,tacid,trm,dot,trm2 from skatrns where dot1= ? and trm='Db B' ORDER BY trno desc"); 
		  
		  

		}
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>

<%

        
        String adname = request.getParameter("namem");
        String adpass = request.getParameter("passm");
        ps1.setString(1,adname);
        ps1.setString(2,adpass);
        ResultSet rs = ps1.executeQuery();
        int cnt = 0;
        if (rs.next())
            cnt = rs.getInt(1);
        if(cnt == 0)
		{
            out.println("<center><h2><font color=red>Invalid credential</font></h2></center>");
        String redirectURL ="una1.jsp";
           response.sendRedirect(redirectURL);
		}
		else
        {
            out.println("<form><fieldset style= width:25%; >");
            out.println("<b><i><font color=red>Wel come MGR</font></i></b>: "+adname+"<br>");
            out.println("<b><i><font size=4 color=blue>Welcome To SKA BANKING</font></i></b>");
            out.println("</fieldset></form>");
			// String redirectURL = "http://192.168.43.42:8181/bank/index1.html";
             // response.sendRedirect(redirectURL);
			/* response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
			 response.setHeader("Pragma","no-cache");
			 response.setHeader("Expires","0");
			 */
			 

			 
        }
    
%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
            ps1.close();
           // ps2.close();
		   ps22.close();
		   ps23.close();
		   ps2b.close();
		   ps2a.close();
		   ps24.close();
		   ps25.close();
		   ps26.close();
		   ps27.close();
		   ps28.close();
		   ps29.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Welcome MGR</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="datetime.js"></script>
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}

</script>

<style>
.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #ccc; 
}

.panel {
  padding: 0 18px;
  display: none;
  background-color: white;
  overflow: hidden;
}
</style>


</head>
<body style="background-color:white;">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color:SlateBlue;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>



<div class="navbar">
  <a href="Home">Home</a>
  <div class="dropdown">
    <button class="dropbtn">BANK INFO
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="Programs/ttbl.jsp">Total fund</a>
      <a href="Programs/allacdelt.jsp">All AC's</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">FEEDBACK
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="Programs/feedbp.jsp"><font color="blue">USERS FEEDBACK PAGE</font></a>	
 <a href="Programs/clfed1.jsp"><font color="blue">FEEDBACK DELETE PAGE</font></a>	
    </div>
  </div> 
   <a href="Programs/instractionsa.jsp">INSTRUCTIONS</a>
  <a id="lblTime"></a>
 <a href="logout.jsp"><img src="images/lo3.png" width="22"height="21" placeholder="logout" name="logout"></a>  
</div>

<div id="top_links">
  

<div id="header">
	<h1>SKA - BANKING<span class="style1"></span></h1>
    <h2>Express Service</h2>	

</div>

<table style="width:897px; background:#FFFFFF; margin:0 auto;"><tr align="justify">
	<td width="299" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>THE ONLINE BANKING SERVICE</h1><br>
		    <ul>
        	<li><a href="#">MORE SECURE AND EFFICENT</a></li>
            <li><a href="#">THE EXPRESS SERVICE</a></li>
            <li><a href="#">THE SKA BANK</a></li>
            </ul>
			<br>
			
		<h3><font color="#000080">TODAY TRANSACTIONS BY AC HOLDER</font></h3>
<button onclick="document.getElementById('id012').style.display='block'" style="width:400;">LIST ALL AC USERS TRANSACTION TODAY </button>

<div id="id012" class="modal">
  
  <form class="modal-content animate" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id012').style.display='none'" class="close" title="Close Modal">&times;</span>
     	  
		  

<%

  String dot1 = request.getParameter("dot");		       
			    ps22.setString(1,dot1);
			
  ResultSet rs22 = ps22.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=#fdf5e6 bordercolor=	#d3d3d3>");
		out.println("<tr>");
		out.println("<th>TODAY TRANSACTION IN AC</th>");
		//out.println("<th>PASSWORD</th>");
		out.println("</tr>");
         while(rs22.next())
        {
            out.println("<tr>");
		//out.println("\n ammount in bank");
            out.println("<td>"+rs22.getInt(1)+"</td>");
            //out.println("<td>"+rs22.getString(2)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");

	  
	  
	  
	  String dot2 = request.getParameter("dot");
       ps23.setString(1,dot2);
        int cnt23 = ps23.executeUpdate();        
		  if(cnt23>0)
		   {
			   out.println("<center><font color=blue><h3>TODAY TRANSACTIONS IN AC</h3></font></center>");
          ResultSet rs23 = ps23.executeQuery();
         out.println("<center>");
		 out.println("<table border=3 bgcolor=orange>");
		 out.println("<tr>");
		 out.println("<th>TRNO</th>");
		 out.println("<th>FACID</th>");
		 out.println("<th>FUND</th>");
		 out.println("<th>TACID</th>");
		 out.println("<th>TRM</th>");
		 out.println("<th>DOT</th>");
		 out.println("<th>TRM2</th>");

		 out.println("</tr>");
         while(rs23.next())
         {
            out.println("<tr>");         
			out.println("<td>"+rs23.getInt(1)+"</td>");
			out.println("<td>"+rs23.getInt(2)+"</td>");
			out.println("<td>"+rs23.getInt(3)+"</td>");
			out.println("<td>"+rs23.getInt(4)+"</td>");
			out.println("<td>"+rs23.getString(5)+"</td>");
            //out.println("<td>"+rs23.getInt(3)+"</td>");
			out.println("<td>"+rs23.getString(6)+"</td>");
			out.println("<td>"+rs23.getString(7)+"</td>");
            out.println("</tr>");
         }
          out.println("</table>");
		   out.println("</center>");
		   rs23.close();
		}
	  
  
  
  
  
  %>
		  	  
		  </div>  
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id012');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
	
			
       </div>
	</td>
    
    <td width="299" valign="top">
    	<div id="welcome" style="border-right:#666666 1px dotted;"><h1>Welcome</h1><br>
    	    <center><img src="images/bank.jpg" alt="business" width="206" height="86"></center><br>
			

			
			
			
			
<button onclick="document.getElementById('id013').style.display='block'" style="width:390;">DEPOSITE BY TRANSACTIONS TODAY+ </button>

<div id="id013" class="modal">
  
  <form class="modal-content animate" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id013').style.display='none'" class="close" title="Close Modal">&times;</span>
     	  
<%
     
	    String dot5 = request.getParameter("dot");		       
		        ps26.setString(1,dot5);
			
  ResultSet rs26 = ps26.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=#fdf5e6 bordercolor=	#d3d3d3>");
		out.println("<tr>");
		out.println("<th>BANK DEPOSITE TRANSACTION TO</th>");
		//out.println("<th>PASSWORD</th>");
		out.println("</tr>");
         while(rs26.next())
        {
            out.println("<tr>");
		    out.println("<td>"+rs26.getInt(1)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");
      
	  
	  
	  String dot6 = request.getParameter("dot");
       ps27.setString(1,dot6);
        int cnt27 = ps27.executeUpdate();        
		  if(cnt27>0)
		   {
			   out.println("<center><font color=blue><h3>BANK TRANSACTIONS TO</h3></font></center>");
          ResultSet rs27 = ps27.executeQuery();
         out.println("<center>");
		 out.println("<table border=3 bgcolor=orange>");
		 out.println("<tr>");
		 out.println("<th>TRNO</th>");
		 out.println("<th>FACID</th>");
		 out.println("<th>FUND</th>");
		 out.println("<th>TACID</th>");
		 out.println("<th>TRM</th>");
		 out.println("<th>DOT</th>");
		 out.println("<th>TRM2</th>");

		 out.println("</tr>");
         while(rs27.next())
         {
            out.println("<tr>");         
			out.println("<td>"+rs27.getInt(1)+"</td>");
			out.println("<td>"+rs27.getInt(2)+"</td>");
			out.println("<td>"+rs27.getInt(3)+"</td>");
			out.println("<td>"+rs27.getInt(4)+"</td>");
			out.println("<td>"+rs27.getString(5)+"</td>");
            out.println("<td>"+rs27.getString(6)+"</td>");
			out.println("<td>"+rs27.getString(7)+"</td>");
            out.println("</tr>");
         }
          out.println("</table>");
		   out.println("</center>");
		  
		}
	  
  
	  
	  
	  
	  %>
		  
  
		  
		  </div>  
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id013');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>


<button onclick="document.getElementById('id014').style.display='block'" style="width:390;">WITHDRAW BY TRANSACTIONS TODAY-</button>

<div id="id014" class="modal">
  
  <form class="modal-content animate" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id014').style.display='none'" class="close" title="Close Modal">&times;</span>
     	  
		

<%
     
	    String dot7 = request.getParameter("dot");		       
		        ps28.setString(1,dot7);
			
  ResultSet rs28 = ps28.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=#fdf5e6 bordercolor=	#d3d3d3>");
		out.println("<tr>");
		out.println("<th>BANK WITHDRAWN TRANSACTIONS FROM</th>");
		//out.println("<th>PASSWORD</th>");
		out.println("</tr>");
         while(rs28.next())
        {
            out.println("<tr>");
		    out.println("<td>"+rs28.getInt(1)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");
      
	  
	  
	  String dot8 = request.getParameter("dot");
       ps29.setString(1,dot8);
        int cnt29 = ps29.executeUpdate();        
		  if(cnt29>0)
		   {
			   out.println("<center><font color=blue><h3>DEPOSITE BY BANK TRANSACTIONS FROM</h3></font></center>");
          ResultSet rs29 = ps29.executeQuery();
         out.println("<center>");
		 out.println("<table border=3 bgcolor=orange>");
		 out.println("<tr>");
		 out.println("<th>TRNO</th>");
		 out.println("<th>FACID</th>");
		 out.println("<th>FUND</th>");
		 out.println("<th>TACID</th>");
		 out.println("<th>TRM</th>");
		 out.println("<th>DOT</th>");
		 out.println("<th>TRM2</th>");

		 out.println("</tr>");
         while(rs29.next())
         {
            out.println("<tr>");         
			out.println("<td>"+rs29.getInt(1)+"</td>");
			out.println("<td>"+rs29.getInt(2)+"</td>");
			out.println("<td>"+rs29.getInt(3)+"</td>");
			out.println("<td>"+rs29.getInt(4)+"</td>");
			out.println("<td>"+rs29.getString(5)+"</td>");
            out.println("<td>"+rs29.getString(6)+"</td>");
			out.println("<td>"+rs29.getString(7)+"</td>");
            out.println("</tr>");
         }
          out.println("</table>");
		   out.println("</center>");
		  
		}
	  
  
	  
	  
	  
	  %>
		  
		 
		  </div>  
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id014');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>	
			
			<br>
			<br>
			<h3><font color="blue">End Of the Day The Bank Admin/Manager Will Easy to Calculate Those Transactioons Will Be Done In The Bank</font></h3><br>
           <p>Each people plan their Money To Deposte There Money in the bak here it is a Right place to deposte.</p>
	    	
	    </div>      
    </td>
    
    <td width="299" valign="top">
   <br>

<div class="panel">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>



<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%; //table styles
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>




  </form>
</div>



<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</div>

 

<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  });
}
</script>
	  

	  <br>
	  <br>
      	<div class="img"><img src="images/bank22.jpg" width="200" height="180" alt="Business"></div>
        
        <p>17,Nov,2022 Get your dream comes to deposit the money.</p>
      </div>
	  <br>	
     </td>
</tr></table>

<div id="footer_top">
  <div id="footer_navigation">
  

  </div>
  
  <div id="footer_copyright" >
 
    	    <center><img src="images/arch3.jpg"  alt="business"  width="196" height="106"></center><br>
		    <p>Each people plan their Money To deposit and to be a happy Life SKA Bank will Provide The Loans Include Home,Education,Bussiness,Personal and Gold.</p>
	  
  Copyright © SKA BANKING DEVELOPMENTS ALL RIGHTS RECEIVED 2023</div>
</div>

<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>
