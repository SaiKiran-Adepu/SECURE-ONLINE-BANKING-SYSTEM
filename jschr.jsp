<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps1, ps2,ps2b,ps2a;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps1 = con.prepareStatement("select count(*) from skaadm where adname = ? and adpass=?");
            ps2 = con.prepareStatement("select * from skaadm");
            ps2b = con.prepareStatement("select sum(amt) from userreal");
		    ps2a = con.prepareStatement("select acid,username,gender,amt,trm,address,phone from userreal ORDER BY acid");
       
		}
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
    
	

        String user1 = request.getParameter("namec");
        String pass = request.getParameter("passc");
        
        ps1.setString(1,user1);
        ps1.setString(2,pass);
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

			 //session.setAttribute("session","TRUE");  
             //int no1 =Integer.parseInt(request.getParameter("number"));
             String name1 = request.getParameter("namec");
			 // out.print("Welcome "+name1);  
              session.setAttribute("nmec",name1);//setting session
            out.println("<form><fieldset style= width:25%; >");
            out.println("<b><i><font color=red>Wel come Cashier</font></i></b>: "+user1+"<br>");
            out.println("<b><i><font size=4 color=blue>To SKA BANK</font></i></b>");
            out.println("</fieldset></form>");
			
        
		//response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
			
		
		}
	
%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
            ps1.close();
            ps2.close();
			ps2b.close();
			//ps2a.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<html>
<head>
<title>Welcome Cashier</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="datetime.js"></script>
</head>
<body style="background-color:white;">
<style>
    body {
      background-image: url('images/arch3.jpg');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }
    
    </style>
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
  background-color: purple;
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
</head>
<body>

<div class="navbar">
  <a href="Home">HOME</a>
    <div class="dropdown">
    <button class="dropbtn">BALANCE ENQUIRY
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Programs/balenq.jsp">Balance Enquiry</a>
      <a href="Programs/balenqmbl.jsp">Balance Enquiry Mobile</a>
      <a href="Programs/balenqnames.jsp">Balance Enq Names</a>
      <a href="Programs/acdetl.jsp">AC Full Details</a>
      <a href="#">Link 3</a>
    </div>
  </div>
   <div class="dropdown">
    <button class="dropbtn">TRANSACTION ENQ
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="Programs/trnenq.jsp">Transaction Enquiry</a>
     <a href="Programs/actranenq.jsp">AC Transaction Enquiry</a>
      
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">AC UPDATE 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Programs/mblup.jsp">Mobile Number Update</a>
      <a href="Programs/pinup.jsp">PIN Update</a>
      <a href="Programs/acdel.jsp"><font color="red">Close AC Caution!!</font></a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">FUND 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
    <a href="Programs/deposite.jsp">Fund Deposite</a>
    <a href="Programs/transfer.jsp">Fund Transfer</a>
   <a href="Programs/withdraw.jsp">Fund Withdraw</a>
    </div>
  </div> 
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
   <a href="Programs/newac.jsp">NEW AC OPEN</a>
    <a href="Programs/instractionsa.jsp">INSTRUCTIONS</a>
    <a id="lblTime"></a>
  <a href="logout.jsp"><img src="images/lo3.png" width="22"height="21" placeholder="logout" name="logout"></a>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>

		   <center>
    	      <font color="white"><p>Each people plan their Money To Deposte There Money in the bak here it is a Right place to deposte.</p>
	    		
   	    <h2>Nov. 2, 2022.</h2>
        <p>Get your dream To deposit In SKA Bank at this website</p>
		    
                <h2>Nov. 10, 2022.</h2>
                 <p>Get your dream Comes True At SKA Bank.</p></font></center> 
	 
          <div id="footer_copyright" >

			 <font color="white">
    	    <p>Each people plan their Money To deposit Bank and to be a happy Life.</p>
         Copyright © SKA BANKING DEVELOPMENTS ALL RIGHTS RECEIVED 2023<br>
          THIS SITE IS DEVELOPED BY SKA DEVELOPMENTS ALL RIGHTS RECEIVED 2023
			   </font>
	   		
	</body>
</html>
