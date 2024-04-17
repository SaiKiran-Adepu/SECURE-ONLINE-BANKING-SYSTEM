<html>
<head>
<title>Today Transactions</title>
</head>
<body>
<%@ include file="sessionval.jsp"%>
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps1,ps2,ps22,ps23,ps2b,ps2a,ps24,ps25,ps26,ps27,ps28,ps29;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
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

</body>
</html>