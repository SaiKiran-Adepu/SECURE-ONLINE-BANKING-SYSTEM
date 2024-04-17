<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps1,ps23;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps1 = con.prepareStatement("select acid,username,phone from userreal where acid = ? and pass=?");
		    ps23 = con.prepareStatement("select username,phone from userreal where acid=?");
			 // i just used a single table and just modified the query acid to tacid to show the transaction details
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
   /* response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
			 response.setHeader("Pragma","no-cache");
			 response.setHeader("Expires","0");
	*/		 
       int nt =Integer.parseInt(request.getParameter("acid"));
	          String pass = request.getParameter("pass");
        ps1.setInt(1,nt);
        ps1.setString(2,pass);
        ResultSet rs = ps1.executeQuery();
        int cnt=0;
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
		
            out.println("<form><fieldset style= width:20%;background-color:lightblue>");
			 out.println("<b><i><font size=4 color=blue>WELCOME TO SKA BANKING </font></i></b>");
			 out.println("<br>");
            out.println("<b><i><font color=red>AC NUMBER:</font></i></b> "+nt);
			out.println("<br>");
			   int no1=Integer.parseInt(request.getParameter("acid"));	
				   int n1=Integer.parseInt(request.getParameter("acid"));	//session variable
				   session.setAttribute("acidu",n1); 	   
                    ps23.setInt(1,no1);				   
				   ResultSet rs23 = ps23.executeQuery();

			while(rs23.next())
          {
            //out.println("<tr>");
			out.println("<b><i><font size=4 color=blue>AC NAME:</font></i></b> "+rs23.getString(1));
		   //out.println(rs23.getString(1));
		   out.println("<br>");
		   out.println("<b><i><font size=4 color=green>Mobile Number:</font></i></b> "+rs23.getString(2));
		   //out.println(rs23.getString(2));
		  }
            out.println("</fieldset></form>");
			
            
		}
			
	  /*no need directly shown in above ResultSet rs1 = ps1.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=#f5deb3 height=6 width=320>");
		out.println("<tr>");
		out.println("<th>ACID</th>");
		out.println("<th>AC NAME</th>");
		out.println("<th>MOBILE NUMBER</th>");
		out.println("</tr>");
         while(rs1.next())
        {
            out.println("<tr>");
	        out.println("<td>"+rs1.getInt(1)+"</td>");
			out.println("<td>"+rs1.getString(2)+"</td>");
            out.println("<td>"+rs1.getString(3)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");
		out.println("<br>");*/
%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
            ps1.close();
			//ps11.close();
          
		   ps23.close();
		   

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
<title>Welcome AC holder</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="datetime.js"></script>
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
<div class="navbar">
  <a href="Home">Home</a>
   <a href="Programs/balsu.jsp">Check Balance</a>
   <a href="Programs/sendmnu.jsp">Send Money</a>
     <div class="dropdown">
    <button class="dropbtn">Manage Account
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="Programs/pinuu.jsp">Update PIN</a>
     <a href="Programs/mbluu.jsp">Mobile Number Update</a>
      <a href="#">Link 3</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">AC History 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Programs/trnhu.jsp">Transaction History</a>
    	<a href="Programs/reqmnu.jsp">Request Money</a>
		<a href="Programs/mrequ.jsp">View Money Request's</a>
		<a href="Programs/ufeed.jsp">Feedback</a>
    </div>
  </div> 
      <a href="Programs/instractionsu.jsp">Intrsactions</a>
  <a id="lblTime"></a>
  <a href="logout.jsp"><img src="images/lo3.png" width="22"height="21" placeholder="logout" name="logout"></a>

</div>
	
<center>
 <h2><font color="blue">SKA</font></h2>
        <img src="images/bank.webp "width=580 height=380></img>
                
	</center>

<center>
<h3><font color="Meganta">This Site is Developed By SKA Developments &copy;2023 All Rights Received.</font></h3>

</center>
</body>
</html>