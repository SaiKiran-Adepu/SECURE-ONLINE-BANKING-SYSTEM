<html>
<head>
<title>AC Fund Transfer</title>
</head>
<body onkeydown="return (event.keyCode == 154)">
<%@ include file="sessionvalu.jsp"%>
<%@ include file="packages.jsp"%>
<%@ page errorPage="error.jsp" %> 
<%!
    Connection con;
    PreparedStatement ps1,ps2,ps3,ps4,ps24;//ps5;
    public void jspInit()
    {
        try
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
            ps1 = con.prepareStatement("update userreal set amt=amt-? where acid =? and pass=?");
			ps2 = con.prepareStatement("update userreal set amt=amt+? where acid =?");
			ps3 = con.prepareStatement("delete from mreq where facid= ?");
			ps4 = con.prepareStatement("insert into skatrns values(?,?,?,?,?,?,?,?)");
			ps24 = con.prepareStatement("select trno,acid,fund,tacid,dot from skatrns where acid=? and dot=? order by dot DESC");
            //ps5 = con.prepareStatement("insert into skatrns2 values(?,?,?,?,?,?)");
		}
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
 
        
        int acid=Integer.parseInt(request.getParameter("acid"));
		int amt=Integer.parseInt(request.getParameter("amt1"));
		String pass = request.getParameter("pass");
		int acid1=Integer.parseInt(request.getParameter("acid1"));
		int amt1=Integer.parseInt(request.getParameter("amt1"));
		
	
			  
		ps1.setInt(1,amt);
		ps1.setInt(2,acid);
		ps1.setString(3,pass);
		ps2.setInt(1,amt1);
		ps2.setInt(2,acid1);
		
		
		
		
		     int cnt=ps1.executeUpdate();
		 	 int acid2=Integer.parseInt(request.getParameter("acid1"));		   
		     ps3.setInt(1,acid2);
			 
			                  	int trno=Integer.parseInt(request.getParameter("trnno"));
		int acidf=Integer.parseInt(request.getParameter("acid"));
		int amtt=Integer.parseInt(request.getParameter("amt1"));
		int acidt=Integer.parseInt(request.getParameter("acid1"));
		             String trm = request.getParameter("trm");
		               String dot = request.getParameter("dot");
					   String dota = request.getParameter("dot1");
					    String trmt = request.getParameter("trm1");

		                    ps4.setInt(1,trno);
	                     	ps4.setInt(2,acidf);
		                    ps4.setInt(3,amtt);
		                    ps4.setInt(4,acidt);
		                    ps4.setString(5,trm);
		                    ps4.setString(6,dot);
							ps4.setString(7,dota);
							ps4.setString(8,trmt);
		       
			   /*
			   int trno1=Integer.parseInt(request.getParameter("trnno"));
		int acidf1=Integer.parseInt(request.getParameter("acid"));
		int amtt1=Integer.parseInt(request.getParameter("amt1"));
		int acidt1=Integer.parseInt(request.getParameter("acid1"));
		             String trm1 = request.getParameter("trm1");
		               String dot11 = request.getParameter("dot");

		                    ps5.setInt(1,trno1);
	                     	ps5.setInt(2,acidf1);
		                    ps5.setInt(3,amtt1);
		                    ps5.setInt(4,acidt1);
		                    ps5.setString(5,trm1);
		                    ps5.setString(6,dot11);
		*/
			   
			 
			 
			
           if(cnt>0)
		   {
			   out.println("<center><font color=blue><h3>AMT transfer Successfull TO</h3></font></center>");
		       //out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
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
     		  out.println("<center><img src=images/cash.jpg width=600 height=250></img></center>");
			  //out.println("<center><font color=blue><h3>Don't Refresh This Page Again! GO BACK</h3></font></center>");
				//out.println("<center><h2><font color=green>Wel Come to SKA Developments</font></h2></center>");
				//out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
		        int cnt1=ps2.executeUpdate();
			      if(cnt1>0)
			     {
					 
			      out.println("<center><font color=blue><h3>AMT credited Successfull FROM</h3></font></center>");
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
		          //out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
     		      //out.println("<center><img src=images/cash.jpg width=600 height=250></img></center>");
			      out.println("<center><font color=blue><h3>Don't Refresh This Page Again! GO BACK</h3></font></center>");
				  //out.println("<center><h2><font color=green>Wel Come to SKA Developments</font></h2></center>");
		     		 //out.println("<center><h2><font color=orange>This Site Is Developed By SKA Developments</font></h2></center>");
			        int cnt22 = ps3.executeUpdate();
		         if(cnt22>0)
			    {
			    out.println("<center><font color=blue><h3>PAYMENT Successfull</h3></font></center>");
		        		          //out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
     		      
			    }
			       int cntt = ps4.executeUpdate();
		        if(cntt>0)
		         {
			       out.println("<center><font color=blue><h3>Transaction Successfully Recorded</h3></font></center>");
		        		          //out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
     		     
				 
				 /*
				 int cntt1 = ps5.executeUpdate();
		        if(cntt1>0)
		         {
			      // out.println("<center><font color=blue><h3>Transaction Successfully Recorded </h3></font></center>");
		        		          //out.println("<center><img src=images/arch3.jpg width=600 height=250></img></center>");
     		   */
				 
				int t=Integer.parseInt(request.getParameter("acid"));
               String dot1 = request.getParameter("dot");		       
			   ps24.setInt(1,t);
		        ps24.setString(2,dot1);
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
			  
			   out.println("<center><font color=blue><h3>PAYMENT GETS DECLIENED DUE TO WRONG PASSWORD</h3></font></center>");
		       //return false;
		   }
			
	
		   
		   
		   
		   
		     
%>
<%!
    public void jspDestroy()
    {
        try
        {
            ps1.close();
            ps2.close();
			ps3.close();
			ps4.close();
			ps24.close();
			//ps5.close();
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
  width: 50%; //table styles
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

