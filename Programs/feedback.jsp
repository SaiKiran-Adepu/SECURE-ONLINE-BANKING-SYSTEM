<html>
<head>
<title>Feedback</title>
</head>
<body onkeydown="return (event.keyCode == 154)">
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
            ps1 = con.prepareStatement("insert into feedback values(?,?)");

           // ps2 = con.prepareStatement("select * from userreg");
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
        
       //int cuid=Integer.parseInt(request.getParameter("cuid"));
        String na = request.getParameter("name");
        String fe = request.getParameter("feed");
		
       // ps1.setInt(1,cuid);
        ps1.setString(1,na);
		ps1.setString(2,fe);
		
		
	    int cnt = ps1.executeUpdate();
           if(cnt>0)
			   out.println("<center><font color=blue><h3>FEEDBACK Submited Successfull</h3></font></center>");
		   out.println("<center><font color=orange><h3>Let Wait For Admin Confirm </h3></font></center>");
		       //out.println("<center><img src=http://192.168.43.42:8181/bank/images/arch3.jpg width=600 height=250></img></center>");
     		  out.println("<center><img src=images/thank.jpg width=600 height=250></img></center>");
				out.println("<center><h2><font color=green>Thanks For Submited Your FeedBack</font></h2></center>");
				out.println("<center><h2><font color=blue>This Site Is Developed By SKA Developments</font></h2></center>");
				
     //}
%>
<%!
    public void jspDestroy()
    {
        try
        {
                 ps1.close();
            //ps2.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
</body>
</html>