<%--
  Created by IntelliJ IDEA.
  User: Yanea
  Date: 2022/3/19
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String SUR_id = request.getParameter("SUR_id");
    String O_id = request.getParameter("O_id");
    String SUR_site = request.getParameter("SUR_site");
%>
<div align="center">
    <table>
        <tr>
            <td>诊室id</td>
            <td>所属科室</td>
            <td>诊室地址</td>
        </tr>
        <tr>
            <form action="http://localhost:8080/hospital/master/SURAlterServlet" method="post">
                <td><input type="text" name="SUR_id" value="<%=SUR_id%>" readonly="readonly"></td>
                <td><input type="text" name="O_id" value="<%=O_id%>" readonly="readonly"></td>
                <td><input type="text" name="SUR_site" value="<%=SUR_site%>"></td>
                <td><input type="submit" value="修改"></td>
            </form>
        </tr>
        <tr>
            <form action="http://localhost:8080/hospital/master/SURDELServlet" method="post">
                <td><input type="text" name="SUR_id" value="<%=SUR_id%>" readonly="readonly"></td>
                <td><input type="text" name="O_id" value="<%=O_id%>" readonly="readonly"></td>
                <td><input type="text" name="SUR_site" value="<%=SUR_site%>" readonly="readonly"></td>
                <td><input type="submit" value="删除"></td>
            </form>
        </tr>




    </table>

</div>
</body>
</html>
