<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://us-cdbr-east-04.cleardb.com:3306/heroku_82bd4eac5871c46", "b83c5dac6a4a40", "1bbc4399");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM staff WHERE staff_id="+id);
response.sendRedirect("view.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
