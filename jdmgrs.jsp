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
            //ps1 = con.prepareStatement("insert into userreg values(?,?)");
            ps2 = con.prepareStatement("select * from skaadm");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
   
        ResultSet rs = ps2.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=orange>");
		out.println("<tr>");
		out.println("<th>ADMIN NUMBER</th>");
		out.println("<th>ADMIN NAME</th>");
		out.println("<th>ADMIN PASS</th>");
		out.println("</tr>");
         while(rs.next())
        {
            out.println("<tr>");
            out.println("<td>"+rs.getInt(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td>");
			out.println("<td>"+rs.getString(3)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");

        rs.close();
    
	%>
	<%!
    public void jspDestroy()
    {
        try
        {
            //colse
            //ps1.close();
            ps2.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>