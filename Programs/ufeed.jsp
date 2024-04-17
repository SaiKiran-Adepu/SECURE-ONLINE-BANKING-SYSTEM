<%@ include file="sessionvalu.jsp"%>
 <!doctype html>
<html lang="en">
    <head>
        <title>User Feedback</title>
		<script LANGUAGE="JavaScript">
         
         function login(form)
         {
             var name = document.getElementById("name").value;
             var feed = document.getElementById("feed").value;
             if(name =='')
             {
                 alert("please enter Your Name");
                 return false;
             }
             else if(feed=='')
             {
                 alert("Enter Your FeedBack");
                 return false;
             }
             else
             {
               //alert("please fill corect details");
               //window.location.href =ul;
              //const myWindow.document.open(+<form method = post action = "http://192.168.43.42:8181/test/Jdbin.jsp"); 
               //document.writeln("<form method = post action = http://192.168.43.42:8181/uservaljsp/Jdbin.jsp ">
             }
         }
             function clearFunc()
         {
             document.getElementById("email").value="";
             document.getElementById("pwd1").value="";
         }	
             </script>
             </head>
             <body>
         <br>
         <center>
             <form method = "post" onSubmit="return login(this)" action = "feedback.jsp">
                 <fieldset style="width:23%; background-color:lightblue">
                     <h3><center>FeedBack Page</center></h3>
                     <hr>
                     <table>
                         <tr>
                            /*<%
                              //int no13 =Integer.parseInt(request.getParameter("acid"));
                           // session.setAttribute("acid",no1);
                             out.println("<textarea rows1 cols=15 name = acid hidden>"+n1+"</textarea>");
                             
                             %> */
                             <td>Name:</td>
                             <td> <input type = "text" name = "name" id="name" Placeholder="NAME"></td>
                         </tr>
                         <tr>
                             <td>FeedBack:</td>
                             <td><textarea name = "feed" id="feed"  Placeholder="YOUR FEEDBACK HERE"></textarea></td>
                         </tr>
                         <tr>
                             <td></td>
                             <td><input type = "Submit" value="Submit FeedBack" name = "s1" onClick ="login(this.form)">
                             <input type="reset" value="Reset" onclick="clearFunc()">
                             
                             </td>
                         </tr>
                     </table>
                 </fieldset>
             </form>	
                </center>
                </body>
                </html>
     