<html>
<head>
<title>New AC Request</title>
</head>
<body onkeydown="return (event.keyCode == 154)">
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps1,ps2;
    public void jspInit()
    {
        try
        { 
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps1 = con.prepareStatement("insert into userp(CUID,USERNAME,PASS,AMT,TRM,ADDR,PHN,GENDER,DOB,DoO)values(?,?,?,?,?,?,?,?,?,?)");
			ps2 = con.prepareStatement("select cuid,username from userp where username= ? and Doo=? order by CUID DESC");
			


           
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
        
        int cuid=Integer.parseInt(request.getParameter("cuid"));
        String uname = request.getParameter("username");
        String pass = request.getParameter("pass");
		int amount=Integer.parseInt(request.getParameter("amt"));
		String trm = request.getParameter("trm");
		String address = request.getParameter("addr");
		String phone = request.getParameter("phn");
		String gen = request.getParameter("gen");
		String dob = request.getParameter("dob");
		String doo = request.getParameter("doo");
		ps1.setInt(1,cuid);
        ps1.setString(2,uname);
		ps1.setString(3,pass);
		ps1.setInt(4,amount);
		ps1.setString(5,trm);
		ps1.setString(6,address);
		ps1.setString(7,phone);
		ps1.setString(8,gen);
		ps1.setString(9,dob);
		ps1.setString(10,doo);

	    int cnt = ps1.executeUpdate();
		  if(cnt>0)
		  {
			   out.println("<center><h2><font color=green>WelCome to SKA BANKING</font></h2></center>");
			   out.println("<center><font color=blue><h3>New Account opening Successfull</h3></font></center>");
		      out.println("<center><font color=blue><h3>Please Wait For Bank Admin Confirm within 24hrs </h3></font></center>");
		       out.println("<center><img src=images/welcome.jpg width=600 height=250></img></center>");
				out.println("<center><h2><font color=green>Your Account number is </font></h2></center>");
				out.println("<center><h2><font color=orange>Please Keep Account Number and Password For Further Steps</font></h2></center>");
				
       	
       String uname1 = request.getParameter("username");
       ps2.setString(1,uname1);
	   String doo1 = request.getParameter("doo");
      ps2.setString(2,doo1);
	    //int tr=Integer.parseInt(request.getParameter("cuid"));
		  //ps2.setInt(2,tr);
	
		ResultSet rs2 = ps2.executeQuery();
		
        out.println("<center>");
		out.println("<table border=3 bgcolor=#ffefd5 height=10 width=500>");
		out.println("<tr>");
		out.println("<th>ACID/ACCOUNT NUMBER</th>");
		out.println("<th>AC NAME</th>");
		
		
		out.println("</tr>");
         while(rs2.next())
        {
            out.println("<tr>");
            out.println("<td>"+rs2.getInt(1)+"</td>");
            out.println("<td>"+rs2.getString(2)+"</td>");
			
		    			
			 out.println("</tr>");
        }
        out.println("</table>");
		out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
		 	  
		out.println("</center>");
		
		    }
		 
		     else
		   {
			  
			   out.println("<center><font color=blue><h3>NEW AC REQUEST UN SUCCESSFULL</h3></font></center>");
		       
		   }
		   
		   
		   
		  
		   
		   
     
%>
<%!
    public void jspDestroy()
    {
        try
        {
                 ps1.close();
				 ps2.close();
                 con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
</body>
</html>