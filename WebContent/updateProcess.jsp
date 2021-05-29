<%@page import="java.sql.*"%>


<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://us-cdbr-east-04.cleardb.com:3306/heroku_82bd4eac5871c46";%>
<%!String user = "b83c5dac6a4a40";%>
<%!String psw = "1bbc4399";%>
<%

String id = request.getParameter("staff_id");
String name = request.getParameter("staff_name");
String gender = request.getParameter("staff_gender");
String address =request.getParameter("staff_address");
String phone = request.getParameter("staff_phone");
String category = request.getParameter("staff_category");

if(id != null)
{
	Connection con = null;
	PreparedStatement ps = null;
	int staffid = Integer.parseInt(id);
	
	try
	{
		Class.forName(driverName);
		con = DriverManager.getConnection(url,user,psw);
		
		String sql = "Update staff set staff_id=?, staff_name=? ,staff_gender=?, staff_address=?, staff_phone=? ,staff_category=? where staff_id="+id;
		ps = con.prepareStatement(sql);
		ps.setString(1,id);
		ps.setString(2, name);
		ps.setString(3, gender);
		ps.setString(4, address);
		ps.setString(5, phone);
		ps.setString(6, category);
		
		int i = ps.executeUpdate();
		if(i>0)
		{
		response.sendRedirect("view.jsp");
		}
		else
		{
		out.print("There is a problem in updating Record.");
		}
		}	
		catch(SQLException sql)
		{
			request.setAttribute("error",sql);
			out.println(sql);
		}
	}
%>
