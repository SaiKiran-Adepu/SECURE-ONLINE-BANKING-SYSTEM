<html>
<head>
<title>Transaction History</title>
</head>
<body>
<%@ include file="sessionvalu.jsp"%>
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps24,ps25;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps24 = con.prepareStatement("select trno,acid,fund,tacid,trm,dot from skatrns where acid=? order by trno DESC");
			ps25 = con.prepareStatement("select trno,acid,fund,trm2,dot from skatrns where tacid=? order by trno DESC");
            // i just used a single table and just modified the query acid to tacid to show the transaction details
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
         
		   ps24.close();
		   ps25.close();

            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>

<%	 
    //int t=Integer.parseInt(request.getParameter("acid"));
		 ps24.setInt(1,n1);// n1 is a session global variable directly from seeeion
		 ResultSet rs24 = ps24.executeQuery();
		  out.println("<center><font color=Red>TRANSACTIONS TO</font></center>");
		 out.println("<center>");
		 out.println("TRNO= Trasnsaction Number, FACID=From Ac, TACID=To AC, TRAM= Transaction Mode, DOT=Date of Transaction.");
		out.println("<table border=3 bgcolor=#ffefd5 height=20 width=700>");
		out.println("<tr>");
		out.println("<th>TRNO</th>");
		out.println("<th>FACID</th>");
		out.println("<th>FUND/RS</th>");
		out.println("<th>TACID</th>");
		out.println("<th>TRM</th>");
		out.println("<th>DOT</th>");
		out.println("</tr>");
         while(rs24.next())
        {
            out.println("<tr>");
			out.println("<td>"+rs24.getInt(1)+"</td>");
			out.println("<td>"+rs24.getInt(2)+"</td>");
			out.println("<td>"+rs24.getInt(3)+"</td>");
			out.println("<td>"+rs24.getInt(4)+"</td>");
		    out.println("<td>"+rs24.getString(5)+"</td>");
			out.println("<td>"+rs24.getString(6)+"</td>");
			out.println("</tr>");
          }
        out.println("</table>");
		out.println("</center>");
		out.println("<br>");
      out.println("<center><font color=	#0000ff>TRANSACTIONS FROM</font></center>");
 
    //int t1=Integer.parseInt(request.getParameter("acid"));
		 ps25.setInt(1,n1);
		 ResultSet rs25 = ps25.executeQuery();
		 
		 out.println("<center>");

		out.println("<table border=3 bgcolor=#ffefd5 height=20 width=700>");
		out.println("<tr>");
		out.println("<th>TRNO</th>");
		out.println("<th>FACID</th>");
		out.println("<th>FUND/RS</th>");
		//out.println("<th>TACID</th>");
		out.println("<th>TRM</th>");
		out.println("<th>DOT</th>");
		out.println("</tr>");
         while(rs25.next())
        {
            out.println("<tr>");
			out.println("<td>"+rs25.getInt(1)+"</td>");
			out.println("<td>"+rs25.getInt(2)+"</td>");
			out.println("<td>"+rs25.getInt(3)+"</td>");
			out.println("<td>"+rs25.getString(4)+"</td>");
			out.println("<td>"+rs25.getString(5)+"</td>");
			out.println("</tr>");
          }
        out.println("</table>");
		out.println("</center>");
		out.println("<br>");



%>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%; //table styles
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
 
 
 
 