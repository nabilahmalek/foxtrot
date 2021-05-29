<%@page import="java.sql.*"%>
<link rel="stylesheet" href="css/style.css"/>
<%@ include file="header.html"%>
<h2 align="center"><font><strong>STAFF DETAILS LIST</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>ID</b></td>
<td><b>NAME</b></td>
<td><b>GENDER</b></td>
<td><b>ADDRESS</b></td>
<td><b>PHONE</b></td>
<td><b>CATEGORY</b></td>
<td><b>ACTIONS</b></td>
</tr>
	<%
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","Eqmalzahri1@");
	Statement st = con.createStatement();
	
	String sql ="SELECT * FROM staff";
	
	ResultSet resultSet = st.executeQuery(sql);
	while(resultSet.next()){
	%>
	<tr bgcolor="#DEB887">
	
	<td><%=resultSet.getString("staff_id") %></td>
	<td><%=resultSet.getString("staff_name") %></td>
	<td><%=resultSet.getString("staff_gender") %></td>
	<td><%=resultSet.getString("staff_address") %></td>
	<td><%=resultSet.getString("staff_phone") %></td>
	<td><%=resultSet.getString("staff_category") %></td>
	
		<td align="center">
		<a href="updateDetails.jsp"?id=<%=resultSet.getString("staff_id")%>"><button type="button" class="update">Update</button></a>
		&nbsp;
		<a href="delete.jsp?id=<%=resultSet.getString("staff_id") %>"><button type="button" class="delete">Delete</button></a>
		</td>
	</tr>
	
	<% 
	}
	
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	</table>	