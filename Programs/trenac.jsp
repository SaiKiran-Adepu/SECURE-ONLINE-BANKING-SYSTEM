<html>
<head>
<title>AC Transaction ENQ</title>
</head>
<body>
<%@ include file="sessionval.jsp"%>
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps2;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps2 = con.prepareStatement("select trno,acid,fund,tacid,trm,dot,trm2 from skatrns where acid=? order by dot DESC");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%

        int trno=Integer.parseInt(request.getParameter("actr"));
        ps2.setInt(1,trno); 
        int cnt = ps2.executeUpdate();
           if(cnt>0)
		   {
	    out.println("<center><font color=blue><h3>TRANSACTIONS DONE BETWEEN</h3></font></center>");
        ResultSet rs = ps2.executeQuery();
		 out.println("<center>");
          out.println("TRNO= Trasnsaction Number, FACID=From Ac, TACID=To AC, TRAM= Transaction Mode, DOT=Date of Transaction.");
		out.println("<table border=3 bgcolor=#ffefd5 height=30 width=700>");
		out.println("<tr>");
		out.println("<th>TRNO</th>");
		out.println("<th>FACID</th>");
		out.println("<th>FUND/RS</th>");
		out.println("<th>TACID</th>");
		out.println("<th>TRM</th>");
		out.println("<th>DOT</th>");
		out.println("<th>TRM2</th>");
		out.println("</tr>");
         while(rs.next())
        {
            out.println("<tr>");
			out.println("<td>"+rs.getInt(1)+"</td>");
			out.println("<td>"+rs.getInt(2)+"</td>");
			out.println("<td>"+rs.getInt(3)+"</td>");
			out.println("<td>"+rs.getInt(4)+"</td>");
		    out.println("<td>"+rs.getString(5)+"</td>");
			out.println("<td>"+rs.getString(6)+"</td>");
			out.println("<td>"+rs.getString(7)+"</td>");
			out.println("</tr>");
          }
        out.println("</table>");
		out.println("</center>");
		out.println("<br>");
		 

		 
		 }
		   else
		   {
			   out.println("<center><font color=blue><h3>INVALID TRANSACTION NOT EXIST!</h3></font></center>");
		   }
          //rs.close();
    
	%>
	<%!
    public void jspDestroy()
    {
        try
        {
            
            //ps1.close();
            ps2.close();
            con.close();
           //rs.close();
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
  width: 90%; //table styles
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