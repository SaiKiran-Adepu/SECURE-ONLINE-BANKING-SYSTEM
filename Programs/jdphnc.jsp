<html>
<head>
<title>Mobile Number Update</title>
</head>
<body onkeydown="return (event.keyCode == 154)">
<%@ include file="sessionvalu.jsp"%>
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
            ps1 = con.prepareStatement("update userreal set phone= ? where acid= ? and username=?");
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
            out.println("<td>"+rs.getString(2)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
        rs.close();
    }
    else
    {*/
       int acid=Integer.parseInt(request.getParameter("acid"));
        String phone = request.getParameter("phone");
		String username = request.getParameter("name");
        ps1.setString(1,phone);
        ps1.setInt(2,acid);
		ps1.setString(3,username);
		int cnt=ps1.executeUpdate();
		
		//con.close();
	     
		if(cnt>0)
		   {
			   out.println("<center><font color=blue><h3> User Mobile Number Update Successfull</h3></font></center>");
		        out.println("<center>");
			  out.println("<table border=2px bgcolor=	#b0c4de width=120>");
			  out.println("<tr>");
			  out.println("<th>ACID</th>");
			  out.println("<th>PHONE</th>");
			  out.println("</tr>");
			    out.println("<tr>");
			  out.println("<td>"+acid+"</td>");
			  out.println("<td>"+phone+"</td>");
			  out.println("</tr>");
			  out.println("</table>");
			  out.println("</center>");
				
				out.println("<center><img src=images/mobiles.jpg width=600 height=250></img></center>");
				out.println("<center><h2><font color=green>SKA BANKING</font></h2></center>");
				//out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
		   }
		   else
		   {
              out.println("<center><font color=blue><h3>User Mobile Update not Successfull/Wrong AC/AC NAME</h3></font></center>");
			   
		   }
       
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