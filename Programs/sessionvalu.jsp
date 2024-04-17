<%@ include file="packages.jsp"%>
  <%
  
       //HttpSession session = request.getSession(true);
        //String name1=(String)session.getAttribute("nmec");  
		Integer n1=(Integer)session.getAttribute("acidu"); 
        //setting number as a session for the users because there are multiple users need to be validated...
        if(n1==null)
		{
			response.sendRedirect("una1.jsp");
		}
		else //sessions for redirection and direct url accessing
		{
	    //out.println("<textarea rows1 cols=15  hidden>"+nme+"</textarea>"); 				
		 //response.sendRedirect("una1.jsp");// at buttom of form like train added by admin
		}
 %>