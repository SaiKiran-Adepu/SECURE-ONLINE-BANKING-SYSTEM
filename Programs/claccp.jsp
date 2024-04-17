<html>
<head>
<title>All Accounts</title>
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
            ps1 = con.prepareStatement("delete from userp where cuid=?");
            //ps2 = con.prepareStatement("select * from userreg");
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
            out.println("<td>"+rs.getString(2)+"</td");
            out.println("</tr>");
        }
        out.println("</table>");
        rs.close();
    }
    else
    {*/
        int cuid=Integer.parseInt(request.getParameter("cuid"));
       // String username = request.getParameter("name");
       
        
        ps1.setInt(1,cuid);
        
        
        int cnt = ps1.executeUpdate();
           if(cnt>0)
		   {
			   out.println("<center><font color=blue><h3>Partial Account Holder delete Successfull</h3></font></center>");
		       //out.println("<center><img src=http://192.168.43.42:8181/uservaljsp/jsplog/lp/images/arch3.jpg width=600 height=250></img></center>");
     		 // out.println("<center><img src=http://192.168.43.42:8181/uservaljsp/jsplog/lp/images/welcome.jpg width=600 height=250></img></center>");
				out.println("<center><h2><font color=green> SKA BANKING</font></h2></center>");
				//out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
		   }
				else 
				{
					out.println("<center><font color=blue><h3>Partial Account Holder Not deleted,Not Exist</h3></font></center>");
				}
     //}
%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
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

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 40%; //table styles
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