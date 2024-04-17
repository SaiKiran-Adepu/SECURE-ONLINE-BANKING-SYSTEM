<html>
<head>
<title>Balance Enq By Mobile</title>
</head>
<body>
	<%@ include file="sessionval.jsp"%>
<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps1, ps2,ps3;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps2 = con.prepareStatement("select acid,username,amt,phone from userreal where phone= ? ORDER BY acid");
           ps3 = con.prepareStatement("select sum(amt) from userreal where phone=?");    
        
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


    //int no=Integer.parseInt(request.getParameter("accid"));
       String phone = request.getParameter("phone");
       ps2.setString(1,phone);
        int cnt = ps2.executeUpdate();        
		  if(cnt>0)
		   {
			   out.println("<center><font color=blue><h3>ACID NAME BALANCE MOBILE Is</h3></font></center>");
          ResultSet rs = ps2.executeQuery();
         out.println("<center>");
		 out.println("<table border=3 bgcolor=orange>");
		 out.println("<tr>");
		 out.println("<th>ACID</th>");
		 out.println("<th>AC NAME</th>");
		 out.println("<th>BALANCE</th>");
		 out.println("<th>Ac MOBILE NUM</th>");

		 out.println("</tr>");
         while(rs.next())
         {
            out.println("<tr>");         
			out.println("<td>"+rs.getInt(1)+"</td>");
			out.println("<td>"+rs.getString(2)+"</td>");
            out.println("<td>"+rs.getInt(3)+"</td>");
			out.println("<td>"+rs.getString(4)+"</td>");
            out.println("</tr>");
         }
          out.println("</table>");
		   out.println("</center>");
		   rs.close();
		}
		   else
		   {
		    out.println("<center><font color=blue><h3>INVALID AC MOBILE NUMBER</h3></font></center>");
		  }    
		  String phone1 = request.getParameter("phone");
       ps3.setString(1,phone1);
	   int cnt1 = ps3.executeUpdate();
        // int cnt1 = ps3.executeQuery();
		 if(cnt1>0)
		   {
			  
		out.println("<center><font color=blue><h3>Total BALANCE BY MOBILE NUMBER IN BANK</h3></font></center>"); 
		  ResultSet rs1 = ps3.executeQuery();
        out.println("<center>");
		out.println("<table border=3 bgcolor=orange>");
		out.println("<tr>");
		out.println("<th>Total BAL IN BANK BY MBL</th>");
		out.println("</tr>");
         while(rs1.next())
        {
            out.println("<tr>");
		    out.println("<td>"+rs1.getInt(1)+"</td>");
            //out.println("<td>"+rs1.getString(2)+"</td>");
            out.println("</tr>");
        }
        out.println("</table>");
		out.println("</center>");
		   }
		else
		   {
		    out.println("<center><font color=blue><h3>INVALID AC MOBILE NUMBER</h3></font></center>");
		  }  

       //rs1.close();
    
            
	%>
	<%!
    public void jspDestroy()
    {
        try
        {
            
            ps2.close();
			ps3.close();
			//rs1.close();
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

