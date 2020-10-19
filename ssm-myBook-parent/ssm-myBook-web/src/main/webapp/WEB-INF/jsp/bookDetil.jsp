<%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/17
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<style>
    .img {
        width: 80px;
        height: 100px;
    }

</style>
<head>
    <title>书本详情</title>
</head>
<body>
<table align="center" border="1px" width="500px">
    <tr>
        <td>书名</td>
        <td>${book.bookName}</td>
    </tr>
    <tr>
        <td>作者</td>
        <td>${book.author}</td>
    </tr>
    <tr>
        <td>价格</td>
        <td>${book.price}</td>
    </tr>
    <tr>
        <td>类别</td>
        <td>${book.aClass.name}</td>
    </tr>
    <tr>
        <td>描述</td>
        <td>${book.descr}</td>
    </tr>
    <tr>
        <td>封面</td>
        <td>
            <img src="http://localhost:8083/upload/${book.path}" class="img">
        </td>
    </tr>
<%--    在此处加上加减图片,然后点击图片,数量跟随加减--%>
    <tr>
        <td>购买数量</td>
        <td></td>
    </tr>

<%--    a标签带着id传到controller,添加到购物车--%>
    <tr>
        <td colspan="2">
            <a href="#">加入购物车</a>
        </td>
    </tr>
</table>
</body>
</html>
