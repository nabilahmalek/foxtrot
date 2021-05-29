<link rel="stylesheet" href="css/style.css"/>
<%@page import="java.sql.*"%>
<%@ include file="header.html"%>
	<%
	String id = request.getParameter("id");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://us-cdbr-east-04.cleardb.com:3306/heroku_82bd4eac5871c46";
	String userid = "b83c5dac6a4a40";
	String password = "1bbc4399";
	
	try {
	Class.forName(driver);
	} 
	catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	%>
	<%
	try{
	connection = DriverManager.getConnection(connectionUrl, userid, password);
	statement=connection.createStatement();
	String sql ="select * from staff where staff_id="+id;
	resultSet = statement.executeQuery(sql);
	
	while(resultSet.next()){
	%>
	
	<!DOCTYPE html>
	<html>
	<body>
	<h1>Update Staff Details</h1>
	<form method="post" action="updateProcess.jsp">
	<input type="hidden" name="staff_id" value="<%=resultSet.getString("staff_id") %>">
	<input type="text" name="staff_id" value="<%=resultSet.getString("staff_id") %>">
	<br>
	Name:<br>
	<input type="text" name="staff_name" value="<%=resultSet.getString("staff_name") %>">
	<br>
	Gender:<br>
	<input type="text" name="staff_gender" value="<%=resultSet.getString("staff_gender") %>">
	<br>
	Address:<br>
	<input type="text" name="staff_address" value="<%=resultSet.getString("staff_address") %>">
	<br>
	Phone:<br>
	<input type="email" name="staff_phone" value="<%=resultSet.getString("staff_phone") %>">
	<br><br>
	Category:<br>
	<input type="email" name="staff_category" value="<%=resultSet.getString("staff_category") %>">
	<br>
	<input type="submit" value="submit">
	</form>
	<%
	}
	connection.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	</body>
	</html>
