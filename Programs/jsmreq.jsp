<html>
<head>
<title>AC Fund Request</title>
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
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system","tiger");
            ps1 = con.prepareStatement("insert into mreq values(?,?,?)");
	     }//here we cant use backend validation because the money requests are directly inserting into mreq table data base
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
		int acid1=Integer.parseInt(request.getParameter("acid1"));
		//int amt1=Integer.parseInt(request.getParameter("amt1"));
	   String amt1 = request.getParameter("amt1");
		
		
		ps1.setInt(1,acid);
		ps1.setInt(2,acid1);
		ps1.setString(3,amt1);
		
		int cnt=ps1.executeUpdate();
           if(cnt>0)
		   {
			   out.println("<center><font color=blue><h3>AMT REQ Successfull TO</h3></font></center>");
		       out.println("<center>");
			  out.println("<table border=2px bgcolor=	#b0c4de width=80>");
			  out.println("<tr>");
			  out.println("<th>ACID</th>");
			  out.println("<th>FUND</th>");
			  out.println("</tr>");
			    out.println("<tr>");
			  out.println("<td>"+acid1+"</td>");
			  out.println("<td>"+amt1+"</td>");
			  out.println("</tr>");
			  out.println("</table>");
			  out.println("</center>");
     		  
			   
			   
			   //out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
     		  out.println("<center><img src=images/cash.jpg width=600 height=250></img></center>");
			   out.println("<center><font color=blue><h3>AMT REQ Successfull</h3></font></center>");
				//out.println("<center><h2><font color=green>Wel Come to SKA Developments</font></h2></center>");
			//	out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
		   
		   }
		  
		   
		  else
		   {
			   out.println("<center><font color=blue><h3>Requests GETS DECLIENED DUE TO WRONG ACID/PASSWORD</h3></font></center>");
		  
		   }
		   
%>
<%!
    public void jspDestroy()
    {
        try
        {
            ps1.close();
            ps2.close();
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
  width: 25%; //table styles
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

