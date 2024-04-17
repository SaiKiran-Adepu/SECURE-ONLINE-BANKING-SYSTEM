<html>
<head>
<title>New User AC</title>
</head>
<body onkeydown="return (event.keyCode == 154)">
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps1;//ps2;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps1 = con.prepareStatement("insert into userreal values(?,?,?,?,?,?,?,?,?,?)");
           // ps2 = con.prepareStatement("delete from userp where cuid=?");

            
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
 
        
        int acid=Integer.parseInt(request.getParameter("acid"));
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
		int amount=Integer.parseInt(request.getParameter("amt"));
		String trm = request.getParameter("trm");
		String address = request.getParameter("adderess");
		String phn = request.getParameter("phn");
		String gen = request.getParameter("gen");
        String dob=request.getParameter("dob");
		 String doo1=request.getParameter("doo1");
		
        ps1.setInt(1,acid);
        ps1.setString(2,username);
		ps1.setString(3,pass);
		//ps1.setString(4,repass);
		ps1.setInt(4,amount);
		ps1.setString(5,trm);
		ps1.setString(6,address);
		ps1.setString(7,phn);
		ps1.setString(8,gen);
        ps1.setString(9,dob);
		 ps1.setString(10,doo1);
	      int cnt = ps1.executeUpdate();
           if(cnt>0)
		   {
			  // out.println(user+id);
			   out.println("<center><font color=blue><h3>New Account opening Successfull</h3></font></center>");
		         out.println("<center>");
			  out.println("<table border=2px bgcolor=#b0c4de width=220>");
			  out.println("<tr>");
			  out.println("<th>Account Name</th>");
			  out.println("<th>PASSWORD</th>");
			  out.println("</tr>");
			    out.println("<tr>");
			  out.println("<td>"+username+"</td>");
			  out.println("<td>"+pass+"</td>");
			  out.println("</tr>");
			  out.println("</table>");
			  out.println("</center>");
     		  out.println("<center><img src=images/welcome.jpg width=600 height=250></img></center>");
			  out.println("<center><h2><font color=green>WelCome To SKA BANKING</font></h2></center>");
			   out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
				//out.println("<center><h2><font color=green>WelCome To SKA BANKING</font></h2></center>");
				//out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
		   /*
		      int cuid=Integer.parseInt(request.getParameter("acid"));		   
		     ps2.setInt(1,cuid);
			  int cnt22 = ps2.executeUpdate();
		         if(cnt22>0)
			    {
			    out.println("<center><font color=blue><h3>Partial AC Deleted and New Account Created In BANK DB</h3></font></center>");
		        		          //out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
     		      
			    }*/
		   
		   }
		   else 
		   {
			   out.println("<center><font color=blue><h3>New Account opening Not Successfull</h3></font></center>"+username);
		   }
     //}
%>
<%!
    public void jspDestroy()
    {
        try
        {
                 ps1.close();
				 //ps2.close();
            
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 40%; //table styles
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
</body>
</html>