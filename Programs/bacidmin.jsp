<%@ include file="packages.jsp"%>
<%!
    Connection con;
    PreparedStatement ps2l;
    public void jspInit() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "system", "tiger");
           ps2l = con.prepareStatement("select acid from userreal where acid=(select min(acid) from userreal)");
        } 
		catch (Exception ex) {
            ex.printStackTrace();
        }
    }
%>
<%
//in this holding the ACID from and to in a bank with a single program 
// and it can imported in user window include send money and request money and 
//in cashier depoiste transfer fund and withdraw fund.....
    ResultSet rs2l = ps2l.executeQuery();
    String minacid;
   
	while(rs2l.next())
	 {
        minacid = rs2l.getString(1);
    }
    
    
%>

<%!
    public void jspDestroy() {
        try {
           
            con.close();
        } 
		catch (Exception ex) {
            ex.printStackTrace();
        }
    }
%>
<html>
<head>
<title>Bank Acid from to</title>
</head>
<body>
<script>
    // Assign the JSP variables to JavaScript variables
    var minAcid = '<%= minacid %>';
	document.write("<p> You can Send Money In Between");
	document.write("From Acid:" + minAcid);
	document.write("&nbsp");
    
</script>
</body>
</html>
