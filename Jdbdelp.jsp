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
            ps1 = con.prepareStatement("delete from userreg where name= ?");
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
        
        String user = request.getParameter("name");
       // String pass = request.getParameter("pass");
        
        ps1.setString(1,user);
        //ps1.setString(2,pass);
        
        int cnt = ps1.executeUpdate();
           if(cnt>0)
			   out.println("<center><font color=blue><h3>User delete Successfull</h3></font></center>");
		       out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
     		 // out.println("<center><img src=http://192.168.43.42:8181/uservaljsp/jsplog/lp/images/welcome.jpg width=600 height=250></img></center>");
				//out.println("<center><h2><font color=green> SKA Developments</font></h2></center>");
				out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
				
     //}
%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
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