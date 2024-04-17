<html>
<head>
<title>Balance in AC</title>
</head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 60%;
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
<body>
<%@ include file="sessionval.jsp"%>
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps1, ps2;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps2 = con.prepareStatement("select acid,username,gender,amt from userreal where acid= ? ORDER BY acid");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
        /* String param = request.getParameter("s1");
    if(param =="link")
    {
        ResultSet rs = ps2.executeQuery();
        out.println("<table>");
        while(rs.next())
        {
            out.println("<tr>");
            out.println("<td>"+rs.getString(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
        rs.close();
    }
    else
    {*/
        int acid=Integer.parseInt(request.getParameter("accid"));
       //String pass = request.getParameter("pass");
        
        ps2.setInt(1,acid);
        //ps1.setString(2,pass);
        
        int cnt = ps2.executeUpdate();
           if(cnt>0)
		   {
	    out.println("<center><font color=blue><h3>ACCOUNT Balance Is</h3></font></center>");
        ResultSet rs = ps2.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=orange>");
		out.println("<tr>");
		out.println("<th>ACID</th>");
		out.println("<th>Account Holder</th>");
		out.println("<th>Gender</th>");
		out.println("<th>BALANCE</th>");
		out.println("</tr>");
         while(rs.next())
        {
            out.println("<tr>");
		//out.println("\n ammount in bank");
            out.println("<td>"+rs.getInt(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td>");
			out.println("<td>"+rs.getString(3)+"</td>");
			out.println("<td>"+rs.getInt(4)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");
		   }
		   else
		   {
			   out.println("<center><font color=blue><h3>INVALID ACID/ACCOUNT NOT EXIST!</h3></font></center>");
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
</body>
</html>