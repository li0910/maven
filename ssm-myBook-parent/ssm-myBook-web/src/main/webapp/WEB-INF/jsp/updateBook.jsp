<%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/14
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
    <meta name="renderer" content="webkit">
    <!--国产浏览器高速模式-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 公共样式 开始 -->
    <link rel="stylesheet" type="text/css" href="../css/base.css">
    <link rel="stylesheet" type="text/css" href="../css/iconfont.css">
    <script type="text/javascript" src="../framework/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="../js/base.js"></script>
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
    <script type="text/javascript" src="../layui/layui.js"></script>
    <!-- 滚动条插件 -->
    <link rel="stylesheet" type="text/css" href="../css/jquery.mCustomScrollbar.css">
    <script src="../framework/jquery-ui-1.10.4.min.js"></script>
    <script src="../framework/jquery.mousewheel.min.js"></script>
    <script src="../framework/jquery.mCustomScrollbar.min.js"></script>
    <script src="../framework/cframe.js"></script>
    <!-- 仅供所有子页面使用 -->
    <!-- 公共样式 结束 -->
    <title>Title</title>
</head>
<style>
    body {
        background-color: #1C1C1C;
        background-size: 100%;
        color: #BDC2C8;
    }
</style>
<body>

<form action="/book/modifyBook?id=${book.id}" method="post">
    <table align="center" width="500px" border="2px">
        <tr>
            <th colspan="7" align="center">
                请在下方输入要修改的内容
            </th>
        </tr>
        <tr>
            <td>序号</td>
            <td>封面</td>
            <td>书名</td>
            <td>作者</td>
            <td>价格</td>
            <td>分类</td>
            <td>说明</td>
        </tr>
        <td>${book.id}</td>
        <td><img src="/img/${book.path}" class="img"></td>
        <td>${book.bookName}</td>
        <td>${book.author}</td>
        <td>${book.price}</td>
        <td>${book.aClass.name}</td>
        <td>${book.descr}</td>
        <tr>

        </tr>
        <tr>
            <td>${book.id}</td>
            <td>
                <input type="file" name="path" value="${book.path}">
            </td>
            <td>
                <input type="text" name="bookName" value="${book.bookName}">
            </td>
            <td>
                <input type="text" name="author" value="${book.author}">
            </td>
            <td>
                <input type="text" name="price" value="${book.price}">
            </td>
            <td>
                <select name="classId">
                    <option value="1">悬疑</option>
                    <option value="2">人文社科</option>
                    <option value="3">经管</option>
                    <option value="4">生活</option>
                    <option value="5">科技</option>
                    <option value="6">小说</option>
                </select>
            </td>
            <td>
                <textarea  name="descr" >${goods.intro}</textarea>
            </td>
        </tr>
        <tr>
            <td colspan="7" align="center">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
