<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在此处插入标题</title>
</head>
<body>
	<%
		String I_id = request.getParameter("I_id");
		String P_name = request.getParameter("P_name");
		String D_name = request.getParameter("D_name");
		String I_date = request.getParameter("I_date");
		String I_time = request.getParameter("I_time");
	%>
	<table>
		<tr>
			<td>预约信息id</td>
			<td>患者姓名</td>
			<td>医生姓名</td>
			<td>预约日期</td>
			<td>预约时间</td>
		</tr>
		<tr>
			<form action="http://localhost:8080/hospital/master/InterviewAlterServlet">
				<td><input type="text" value="<%=I_id %>" name="I_id" unselectable="on"></td>
				<td><input type="text" value="<%=P_name %>" name="P_name" unselectable="on"></td>
				<td><input type="text" value="<%=D_name %>" name="D_name" unselectable="on"></td>
				<td><input type="text" value="<%=I_date %>" name="I_date"></td>
				<td><input type="text" value="<%=I_time %>" name="I_time"></td>
				<td><input type="submit" name="submit" value="修改"></td>
			</form>
		</tr>
		<tr>
			<form action="http://localhost:8080/hospital/master/InterviewDelServlet" method="post">
				<td><input type="text" value="<%=I_id %>" name="I_id" unselectable="on"></td>
				<td><input type="text" value="<%=P_name %>" name="P_name" unselectable="on"></td>
				<td><input type="text" value="<%=D_name %>" name="D_name" unselectable="on"></td>
				<td><input type="text" value="<%=I_date %>" name="I_date"></td>
				<td><input type="text" value="<%=I_time %>" name="I_time"></td>
				<td><input type="submit" name="submit" value="删除"></td>
			</form>
		</tr>
	</table>
	
</body>
</html>