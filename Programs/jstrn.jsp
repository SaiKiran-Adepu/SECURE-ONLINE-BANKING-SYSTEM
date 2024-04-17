<html>
<head>
<title>Fund Trasnsfer</title>
</head>
<body onkeydown="return (event.keyCode == 154)">
<%@ include file="packages.jsp"%>
<%@ page errorPage="error.jsp" %> 
<%! 
    //on Controll Transaction for  Admin/Cashier controll
	
	Connection con;
    PreparedStatement ps1,ps2,ps4,ps24;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps1 = con.prepareStatement("update userreal set amt=amt-?,trm=? where acid=?");
			ps2 = con.prepareStatement("update userreal set amt=amt+?,trm=? where acid=?");
            ps4 = con.prepareStatement("insert into skatrns values(?,?,?,?,?,?,?,?)");
            ps24 = con.prepareStatement("select trno,acid,fund,tacid,dot from skatrns where dot=? order by dot DESC");
           
            //ps2 = con.prepareStatement("select * from userreal");
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
        
		int amt=Integer.parseInt(request.getParameter("amt1"));
	    String trm = request.getParameter("trm");
        int acid=Integer.parseInt(request.getParameter("acid"));
		int amt1=Integer.parseInt(request.getParameter("amt1"));
	    String trm1 = request.getParameter("trm1");
		int acid1=Integer.parseInt(request.getParameter("acid1"));
		ps1.setInt(1,amt);
		ps1.setString(2,trm);
		ps1.setInt(3,acid);
		
		ps2.setInt(1,amt1);
		ps2.setString(2,trm1);
		ps2.setInt(3,acid1);
		
		
        int trno=Integer.parseInt(request.getParameter("trnno13"));
		int acidf=Integer.parseInt(request.getParameter("acid"));
		int amtt=Integer.parseInt(request.getParameter("amt1"));
		int acidt=Integer.parseInt(request.getParameter("acid1"));
		      String trm131= request.getParameter("trm131");
		           String dot = request.getParameter("dot5");
					   String dota = request.getParameter("dot6");
					    String trmt132 = request.getParameter("trm132");

		                    ps4.setInt(1,trno);
	                     	ps4.setInt(2,acidf);
		                    ps4.setInt(3,amtt);
		                    ps4.setInt(4,acidt);
		                    ps4.setString(5,trm131);
		                    ps4.setString(6,dot);
							ps4.setString(7,dota);
							ps4.setString(8,trmt132);
	
		
		int cnt=ps1.executeUpdate();
		
           if(cnt>0)
		   {
			   // ResultSet rs1= ps1.executeQuery();
			    out.println("<center><font color=blue><h3>FUND Successfully Trasnsferred TO</h3></font></center>");
		       
			   out.println("<center>");
			  out.println("<table border=2px bgcolor=#b0c4de width=80>");
			  out.println("<tr>");
			  out.println("<th>ACID</th>");
			  out.println("<th>FUND</th>");
			  out.println("</tr>");
			    out.println("<tr>");
			  out.println("<td>"+acid1+"</td>");
			  out.println("<td>"+amt+"</td>");
			  out.println("</tr>");
			  out.println("</table>");
			  out.println("</center>");
     		 
			   
			   
			   
			   //out.println("<center><img src=http://192.168.43.42:8181/bank/images/arch3.jpg width=600 height=250></img></center>");
     		  out.println("<center><img src=images/cash.jpg width=600 height=250></img></center>");
			  out.println("<center><font color=red><h3>Dont Refresh This Page again GO BACK</h3></font></center>");
				//out.println("<center><h2><font color=green>Wel Come to SKA Developments</font></h2></center>");
				//out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
		       int cnt1=ps2.executeUpdate();
			   if(cnt1>0)
			   {
			   //ResultSet rs2 = ps2.executeQuery();
			   out.println("<center><font color=blue><h3>FUND Credited Successfully FROM</h3></font></center>");
		       out.println("<center>");
			  out.println("<table border=2px bgcolor=	#b0c4de width=80>");
			  out.println("<tr>");
			  out.println("<th>ACID</th>");
			  out.println("<th>FUND</th>");
			  out.println("</tr>");
			    out.println("<tr>");
			  out.println("<td>"+acid+"</td>");
			  out.println("<td>"+amt+"</td>");
			  out.println("</tr>");
			  out.println("</table>");
			  out.println("</center>");
     			   
			   //out.println("<center><img src=http://192.168.43.42:8181/bank/images/arch3.jpg width=600 height=250></img></center>");
     		 // out.println("<center><img src=images/cash.jpg width=600 height=250></img></center>");
			  //out.println("<center><font color=red><h3>Dont Refresh This Page again GO BACK</h3></font></center>");
				//out.println("<center><h2><font color=green>Wel Come to SKA Developments</font></h2></center>");
			 //out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
   		     
			    int cntt = ps4.executeUpdate();
		        if(cntt>0)
		         {
			       out.println("<center><font color=blue><h3>Transaction Successfully Recorded</h3></font></center>");
		          //out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
     		     
				 
				 
				 String dot1 = request.getParameter("dot5");		       
			    ps24.setString(1,dot1);
				 ResultSet rs24 = ps24.executeQuery();
		 
		 out.println("<center>");
		out.println("<table border=3 bgcolor=#ffefd5 height=10 width=500>");
		out.println("<tr>");
		out.println("<th>TRNO</th>");
		out.println("<th>FACID</th>");
		out.println("<th>FUND/RS</th>");
		out.println("<th>TACID</th>");
		out.println("<th>DOT</th>");
		out.println("</tr>");
         while(rs24.next())
        {
            out.println("<tr>");
			out.println("<td>"+rs24.getInt(1)+"</td>");
		    out.println("<td>"+rs24.getInt(2)+"</td>");
			out.println("<td>"+rs24.getInt(3)+"</td>");
			out.println("<td>"+rs24.getInt(4)+"</td>");
		    out.println("<td>"+rs24.getString(5)+"</td>");
		    out.println("</tr>");
          }
        out.println("</table>");
		out.println("</center>");
		out.println("<br>");
	
				 
				 
				 

				 }
				 

			 
          		 } 
		   }
	
		        	       else
		   {
			   out.println("<center><font color=blue><h3>PAYMENT GETS DECLIENED DUE TO WRONG ACID</h3></font></center>");
		  
		   }
		   
%>
<%!
    public void jspDestroy()
    {
        try
        {
            ps1.close();
            ps2.close();
			ps4.close();
			ps24.close();
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

