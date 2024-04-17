<html>
<head>
<title>A/C Balance</title>
</head>
<body>
<%@ include file="sessionvalu.jsp"%>
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps1;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps1 = con.prepareStatement("select amt from userreal where acid = ? and pass=?");
		 }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
           int nt =Integer.parseInt(request.getParameter("acid"));
          String pass = request.getParameter("pass");
          ps1.setInt(1,nt);
          ps1.setString(2,pass);
		   //int cnt = ps1.exeuteUpdate();
                  int cnt = ps1.executeUpdate();
           if(cnt>0)
		   {
	    out.println("<center><font color=blue><h3>ACCOUNT Balance Is</h3></font></center>");
        ResultSet rs = ps1.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=orange>");
		out.println("<tr>");
		out.println("<th>BALANCE</th>");
		out.println("</tr>");
         while(rs.next())
        {
            out.println("<tr>");
		//out.println("\n ammount in bank");
            out.println("<td>"+rs.getInt(1)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");
		   }
		   else
		   {
			   out.println("<center><font color=blue><h3>Wrong A/c Password!</h3></font></center>");
		   }
%>
<%!
    public void jspDestroy()
    {
        try
        {
            
            ps1.close();
           // ps2.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
</body>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 15%; //table styles
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
</html>