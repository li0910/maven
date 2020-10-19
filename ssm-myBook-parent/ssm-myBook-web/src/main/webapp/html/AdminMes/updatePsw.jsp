<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/16
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
<form id="updatePsw" action="/admin/updateAdmin?id=${admin.id}&name=${admin.name}" method="post">
    <table align="center" width="800px">
        <tr>
            <td>请输入原来的密码</td>
            <td>
                <input type="password" name="psw1" id="prePsw">
            </td>
        </tr>
        <tr>
            <td>请输入新的密码:</td>
            <td>
                <input type="password" name="psw" id="password1">
            </td>
        </tr>
        <tr>
            <td>请再次输入新密码:</td>
            <td>
                <input type="password" name="psw_r" id="password2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="button" value="提交" onclick="return updatePsw()">
            </td>
        </tr>
    </table>
</form>
</body>
<script src="../../js/jquery-1.8.3.min.js">
</script>
<script language="JavaScript">
<%--    修改密码,首先判断是否与原密码一致.然后判断输入的两次新密码是否一致 --%>
    function updatePsw() {
        // 获取session域中的admin的值

        var psw = ${sessionScope.admin.psw};

        var prePsw = document.getElementById("prePsw").value;

        var password1 = document.getElementById("password1").value;
        var password2 = document.getElementById("password2").value;
        if (psw == prePsw) {

            if (!(password1 === (password2))) {
                alert("两次输入密码不一致,请重新输入");
            } else {
                confirm("确定修改密码吗?"),
                    $("#updatePsw").submit();
            }
        } else {
            alert("输入的密码和初始密码不一致,请重新输入");
            input.reset();
        }
    }
</script>
</html>
