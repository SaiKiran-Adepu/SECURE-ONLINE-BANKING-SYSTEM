<html>
<head>
<title>All Accounts</title>
</head>
<body>
<%@ include file="sessionval.jsp"%>
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps2a;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
		    ps2a = con.prepareStatement("select acid,username,gender,amt,trm,address,phone from userreal ORDER BY acid");
       
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
           
			ps2a.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>

<%
   
        ResultSet rs2a = ps2a.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=orange>");
		out.println("<tr>");
		out.println("<th>AC NUMBER</th>");
		out.println("<th>USER NAME</th>");
		out.println("<th>GENDER</th>");
		out.println("<th>BALANCE</th>");
		out.println("<th>TRM</th>");
		out.println("<th>ADDRESS</th>");
		out.println("<th>MOBILE NUMBER</th>");

		out.println("</tr>");
         while(rs2a.next())
        {
            out.println("<tr>");
		//out.println("\n ammount in bank");
            out.println("<td>"+rs2a.getInt(1)+"</td>");
            out.println("<td>"+rs2a.getString(2)+"</td>");
			out.println("<td>"+rs2a.getString(3)+"</td>");
			out.println("<td>"+rs2a.getInt(4)+"</td>");
			out.println("<td>"+rs2a.getString(5)+"</td>");
			out.println("<td>"+rs2a.getString(6)+"</td>");
			out.println("<td>"+rs2a.getString(7)+"</td>");
			//out.println("<td>"+rs2a.getString(8)+"</td>");

            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");

        rs2a.close();
    
	%>
    
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 80%; //table styles
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