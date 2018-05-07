<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MJWmj
  Date: 2018/4/27
  Time: 18:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程列表</title>
</head>
<body>
<h3 align="center" >课程列表</h3>
<table border="1" width="70%" align="center">
    <tr>
        <th>课程号</th>
        <th>课程名</th>
    </tr>
    <c:forEach items="${requestScope.coList}" var="co">
        <tr>
            <td>${co.cno}</td>
            <td>${co.cname}</td>
            <td>
                <a href="<c:url value='/CoServlet?method=preEdit&cno=${co.cno}'/> ">编辑</a>
                <a href="<c:url value='/CoServlet?method=delete&cno=${co.cno}'/> ">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>

</html>

