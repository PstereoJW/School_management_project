<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MJWmj
  Date: 2018/4/24
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>多表查询结果</title>
</head>
<body>
<h3 align="center" >学生列表</h3>
<table border="1" width="70%" align="center">

        <c:forEach items="${requestScope.list.get(0)}" var="subMap">
             <th>${subMap.key}</th>
        </c:forEach>

        <c:forEach items="${requestScope.list}" var="Map">
            <tr >
                <c:forEach items="${Map}" var="entry">
                    <td>${entry.value}</td>
                </c:forEach>
            </tr>
        </c:forEach>

</table>

</body>
</html>
