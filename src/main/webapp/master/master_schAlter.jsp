<%--
  Created by IntelliJ IDEA.
  User: Yanea
  Date: 2022/3/18
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生排班管理</title>
</head>
<body>
<%
    String D_name = request.getParameter("D_name");
    String SUR_id = request.getParameter("SUR_id");
    String SCH_date = request.getParameter("SCH_date");
    String SCH_time = request.getParameter("SCH_time");
    String SCH_size = request.getParameter("SCH_size");
    String SCH_booked = request.getParameter("SCH_booked");
%>
<table>
    <tr>
        <td>医生姓名</td>
        <td>所属诊室id</td>
        <td>排班日期</td>
        <td>排班时间</td>
        <td>预约上限</td>
        <td>预约人数</td>
    </tr>
    <tr>
        <form action="http://localhost:8080/hospital/master/SCHAlterServlet" method="post">
            <td><input type="text" value="<%=D_name %>" name="D_name" readonly="readonly"></td>
            <td><input type="text" value="<%=SUR_id %>" name="SUR_id" readonly="readonly"></td>
            <td><input type="text" value="<%=SCH_date %>" name="DSCH_date" readonly="readonly"></td>
            <td><input type="text" value="<%=SCH_time %>" name="SCH_time" readonly="readonly"></td>
            <td><input type="text" value="<%=SCH_size %>" name="SCH_size"></td>
            <td><input type="text" value="<%=SCH_booked %>" name="SCH_booked" readonly="readonly"></td>
            <td><input type="submit" name="submit" value="修改"></td>
        </form>
    </tr>
    <tr>
        <form action="http://localhost:8080/hospital/master/SCHDELServlet" method="post">
            <td><input type="text" value="<%=D_name %>" name="D_name" readonly="readonly"></td>
            <td><input type="text" value="<%=SUR_id %>" name="SUR_id" readonly="readonly"></td>
            <td><input type="text" value="<%=SCH_date %>" name="DSCH_date" readonly="readonly"></td>
            <td><input type="text" value="<%=SCH_time %>" name="SCH_time" readonly="readonly"></td>
            <td><input type="text" value="<%=SCH_size %>" name="SCH_size"></td>
            <td><input type="text" value="<%=SCH_booked %>" name="SCH_booked" readonly="readonly"></td>
            <td><input type="submit" name="submit" value="删除"></td>
        </form>
    </tr>
</table>

</body>
</html>
