<%--
  Created by IntelliJ IDEA.
  User: codingBoy
  Date: 16/10/23
  Time: 下午12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style type="text/css">
    form.score{
        position: relative;
        left:30%;
        top:-30%;
    }
    form.teacher{
        position: relative;
        top:-20%;
    }
    form.course{
        position: relative;
        top:-53%;
        left: 30%;
    }
    form.teach{
        position: relative;
        top: -72%;
        left:56%;

    }
    h4.teacher{
        position: relative;
        top: -20%;
        left: 10%;
    }
    h4.score{
        position: relative;
        top:-30%;
        left:40%;
    }
    h4.student{
        position: relative;
        left: 10%;
    }
    h4.course{
        position: relative;
        top: -53%;
        left: 40%;
    }
    h4.teach{
        position: relative;
        top: -72%;
        left: 65%;
    }
</style>
<%--每一个查询的相对位置--%>
<html>
<head>
    <title></title>
</head>
<body>
    <h3 align="center">单表搜索</h3>
    <h4 class="student">学生表</h4>
    <form action="<c:url value="/StudentServlet"/>" method="post">
        <input type="hidden" name="method" value="query">
        <table border="0" align="center" width="20%" style="margin-left: 100px">
            <tr>
                <td width="100px">学生学号</td>
                <td width="40%">
                    <input type="text" name="sno">
                </td>
            </tr>
            <tr>
                <td width="100px">学生名称</td>
                <td width="40%">
                    <input type="text" name="sname">
                </td>
            </tr>
            <tr>
                <td>客户性别</td>
                <td>
                    <select name="ssex">
                        <option value="">==请选择性别==</option>
                        <option value="male">male</option>
                        <option value="female">female</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>学生班级</td>
                <td>
                    <input type="text" name="sclass"/>
                </td>
            </tr>
            <tr>
                <td>学生生日</td>
                <td>
                    <input type="date" name="sbirthday"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>

                    <input type="submit" value="搜索"/>
                    <input type="reset" value="重置"/>
                </td>
            </tr>

        </table>
    </form>
    <h4 class="score">成绩表</h4>
    <form action="<c:url value="/ScServlet"/>" method="post" class="score">
        <input type="hidden" name="method" value="query">
        <table border="0" align="center" width="20%" style="margin-left: 100px">

            <tr>
                <td width="100px">学生学号</td>
                <td width="40%">
                    <input type="text" name="sno">
                </td>
            </tr>
            <tr>
                <td width="100px">课程号</td>
                <td width="40%">
                    <input type="text" name="cno">
                </td>
            </tr>
            <tr>
                <td width="100px">分数</td>
                <td width="40%">
                    <input type="text" name="grade">
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>

                    <input type="submit" value="搜索"/>
                    <input type="reset" value="重置"/>
                </td>
            </tr>

        </table>
    </form>
    <h4 class="teacher">教师表</h4>
    <form action="<c:url value="/TeacherServlet"/>" method="post" class="teacher">
        <input type="hidden" name="method" value="query">
        <table border="0" align="center" width="20%" style="margin-left: 100px">

            <tr>
                <td width="100px">教师编号</td>
                <td width="40%">
                    <input type="text" name="tno">
                </td>
            </tr>
            <tr>
                <td width="100px">教师姓名</td>
                <td width="40%">
                    <input type="text" name="tname">
                </td>
            </tr>
            <tr>
                <td>教师性别</td>
                <td>
                    <select name="tsex">
                        <option value="">==请选择性别==</option>
                        <option value="male">male</option>
                        <option value="female">female</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>教师所在系</td>
                <td>
                    <input type="text" name="tdepart"/>
                </td>
            </tr>
            <tr>
                <td>职称</td>
                <td>
                    <input type="text" name="ttitle"/>
                </td>
            </tr>
            <tr>
                <td>教师生日</td>
                <td>
                    <input type="date" name="tbirthday"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>

                    <input type="submit" value="搜索"/>
                    <input type="reset" value="重置"/>
                </td>
            </tr>

        </table>
    </form>
    <h4 class="course">课程表</h4>
    <form action="<c:url value="/CoServlet"/>" method="post" class="course">
        <input type="hidden" name="method" value="query">
        <table border="0" align="center" width="20%" style="margin-left: 100px">

            <tr>
                <td width="100px">课程号</td>
                <td width="40%">
                    <input type="text" name="cno">
                </td>
            </tr>
            <tr>
                <td width="100px">课程名</td>
                <td width="40%">
                    <input type="text" name="cname">
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>

                    <input type="submit" value="搜索"/>
                    <input type="reset" value="重置"/>
                </td>
            </tr>

        </table>
    </form>
    <h4 class="teach">TEACH</h4>
    <form action="<c:url value="/TeachServlet"/>" method="post" class="teach">
        <input type="hidden" name="method" value="query">
        <table border="0" align="center" width="20%" style="margin-left: 100px">
            <tr>
                <td width="100px">教师编号</td>
                <td width="40%">
                    <input type="text" name="tno">
                </td>
            </tr>
            <tr>
                <td width="100px">课程号</td>
                <td width="40%">
                    <input type="text" name="cno">
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>

                    <input type="submit" value="搜索"/>
                    <input type="reset" value="重置"/>
                </td>
            </tr>

        </table>
    </form>

</body>
</html>
