<%@ include file="sessionval.jsp"%>
<%@ include file="packages.jsp"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Total Bank Balance</title>
</head>
<body>
<%!
    Connection con;
    PreparedStatement ps2b;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps2b = con.prepareStatement("select sum(amt) from userreal");
		   
		}
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>

<%
   
        ResultSet rs2b = ps2b.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=orange bordercolor=red>");
		out.println("<tr>");
		out.println("<th>Total Cash In Bank</th>");
		//out.println("<th>PASSWORD</th>");
		out.println("</tr>");
         while(rs2b.next())
        {
            out.println("<tr>");
		//out.println("\n ammount in bank");
            out.println("<td>"+rs2b.getString(1)+"</td>");
            //out.println("<td>"+rs2b.getString(2)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");

        rs2b.close();
    
	%>

<%!
    public void jspDestroy()
    {
        try
        {
           
           
			ps2b.close();
			
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
  width: 20%; //table styles
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