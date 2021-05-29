
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("staff_id"));
		String name = request.getParameter("staff_name");
		String gender = request.getParameter("staff_gender");
		String address= request.getParameter("staff_address");
		String phone = request.getParameter("staff_phone");
		String category = request.getParameter("staff_category");

		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant", "root", "Eqmalzahri1@");
		Statement st = conn.createStatement();
		
		st.executeUpdate("insert into staff (staff_id, staff_name, staff_gender, staff_address, staff_phone, staff_category) values ('"+id+"','"+name+"','"+gender+"','"+address+"', '"+phone+"', '"+category+"')");
		response.sendRedirect("view.jsp");
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
	%>
</body>
</html>
