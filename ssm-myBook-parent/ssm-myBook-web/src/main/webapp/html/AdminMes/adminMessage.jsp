<%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/16
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<style>
    body {
        background-color: #1C1C1C;
        background-size: 100%;
        color: #BDC2C8;
    }
</style>
<head>
    <title>Title</title>
</head>
<body>
<form id="updateAdmin" action="/admin/updateAdmin?id=${admin.id}" method="post">
    <table align="center" width="800px" border="2px">
        <tr align="center">
            <td>查看</td>
            <td>修改</td>
        </tr>
        <tr align="center">
            <td>${admin.id}</td>
            <td>${admin.id}</td>
        </tr>
        <tr align="center">
            <td>${admin.name}</td>
            <td>
                <input type="text" name="name" value="${admin.name}">
            </td>
        </tr>
        <tr align="center">
            <td>${admin.psw}</td>
            <td>
                <input type="password" name="psw" value="${admin.psw}">
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="button" value="提交" onclick="return updataMes()">
            </td>
        </tr>
    </table>
</form>
</body>
<script src="../../js/jquery-1.8.3.min.js"></script>
<script>
    function updataMes() {

      if (confirm("确定要提交吗?")) {
          $("#updateAdmin").submit();
      } else {
          alert("已取消提交");
      }
    }
</script>
</html>
