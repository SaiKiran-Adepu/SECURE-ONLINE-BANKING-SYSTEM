<html>
<head>
<title>View Money Request's</title>
</head>
<body>
<%@ include file="sessionvalu.jsp"%>
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps22;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
          	ps22 = con.prepareStatement("select facid,mreq from mreq where acid=?");
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
            //colse
           
           ps22.close();
          con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>

<%	  //int a=Integer.parseInt(request.getParameter("acid"));
		 ps22.setInt(1,n1);//n1 is a session global variable directly
		 ResultSet rs11 = ps22.executeQuery();
		 
		 out.println("<center>");
		out.println("<table border=3 bgcolor=orange height=6 width=490>");
		out.println("<tr>");
		out.println("<th> Money Req From ACID</th>");
		out.println("<th>Requested Money RS</th>");
		out.println("</tr>");
         while(rs11.next())
        {
            out.println("<tr>");
		    out.println("<td>"+rs11.getString(1)+"</td>");
			out.println("<td>"+rs11.getString(2)+"</td>");
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
  width: 70%; //table styles
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

 