<html>
<head>
<title>All A/C Details</title>
</head>
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
            ps2 = con.prepareStatement("select acid,username,gender,pass,amt,phone,address,dob,doo from userreal where acid= ?");
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
        
        ps2.setInt(1,acid);//bussiness logic 
        //ps1.setString(2,pass);
        
        int cnt = ps2.executeUpdate();
           if(cnt>0)
		   {
			   out.println("<center><font color=blue><h3>DETAILS ARE</h3></font></center>");
        ResultSet rs = ps2.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=orange>");
		out.println("<tr>");
		out.println("<th>ACID</th>");
		out.println("<th>USER NAME</th>");
		out.println("<th>GENDER</th>");
		out.println("<th>PASSWORD</th>");
		out.println("<th>BALANCE</th>");
		out.println("<th>MOBILE</th>");
		out.println("<th>ADDRESS</th>");
		out.println("<th>DOB</th>");
        out.println("<th>DOO</th>");

		out.println("</tr>");
         while(rs.next())
        {
            out.println("<tr>");
		//out.println("\n ammount in bank");
            out.println("<td>"+rs.getInt(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td>");
			out.println("<td>"+rs.getString(3)+"</td>");
			out.println("<td>"+rs.getString(4)+"</td>");//bissiness logic
			out.println("<td>"+rs.getInt(5)+"</td>");
			out.println("<td>"+rs.getString(6)+"</td>");
			out.println("<td>"+rs.getString(7)+"</td>");
			out.println("<td>"+rs.getString(8)+"</td>");
            out.println("<td>"+rs.getString(9)+"</td>");

            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");
		   }
		   else
		   {
			   out.println("<center><font color=blue><h3>INVALID ACID</h3></font></center>");
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