<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2022/3/16
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>患者信息修改</title>
</head>
<body>
<form action="http://localhost:8080/hospital/patientAlterServlet" method="post">
    <table>
        <tr>
            <td>患者id</td>
            <td>患者密码</td>
            <td>患者姓名</td>
            <td>患者性别</td>
            <td>患者年龄</td>
        </tr>
        <tr>
            <%="<td>" + request.getParameter("P_id") + "</td>"%>
            <%="<td>" + request.getParameter("P_psd") + "</td>"%>
            <%="<td>" + request.getParameter("P_name") + "</td>"%>
            <%="<td>" + request.getParameter("P_sex") + "</td>"%>
            <%="<td>" + request.getParameter("P_age") + "</td>"%>
        </tr>
    </table>
    <input type="submit" value="修改">
</form>

<form action="http://localhost:8080/hospital/patientDeleteServlet">
    <table>
        <tr>
            <td>想要删除的患者的id</td>
            <td><input type="text" name="P_id" value="request.getParameter(" P_id")" disabled></td>
        </tr>
    </table>
    <input type="submit" value="删除">
</form>
</body>
</html>
