<%--
  Created by IntelliJ IDEA.
  User: 李博
  Date: 2020/10/14
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    .img {
        width: 80px;
        height: 100px;
    }

     body {
         background-color: #1C1C1C;
         background-size: 100%;
         color: #BDC2C8;
     }


</style>

<body>

<center>
    <form id="queryForm" action="/book/findAll">
        书名:<input name="queryBookName" value="${queryVo.queryBookName}">&nbsp;
        作者:<input name="queryAuthor" value="${queryVo.queryAuthor}">&nbsp;
        分类:<select name="queryBookClassName">
        <option value="">--请选择--</option>
        <c:forEach items="${classes}" var="aClass">
            <option value="${aClass.id}" ${aClass.id==queryVo.queryBookClassName?'selected':''}>${aClass.name}</option>
        </c:forEach>
    </select>
        <input type="hidden" name="pageNum" id="pageNum">

        <input type="submit" value="查询">
    </form>
</center>
<table align="center" width="800px" border="2px">
    <tr>
        <th colspan="9">书籍列表</th>
    </tr>
    <form id="listForm" action="/book/delAll">
        <tr align="center">
            <td>序号</td>
            <td>封面</td>
            <td>书名</td>
            <td>作者</td>
            <td>价格</td>
            <td>分类</td>
            <td>说明</td>
            <td>管理</td>
            <td>全选 <input type="checkbox" class="item" id="all" onclick="checkAll(this)"></td>
        </tr>

        <c:forEach items="${pageInfo.list}" var="book">
            <tr align="center">
                <td>${book.id}</td>
                <td><img src="http://localhost:8083/upload/${book.path}" class="img"></td>
                <td>${book.bookName}</td>
                <td>${book.author}</td>
                <td>${book.price}</td>
                <td>${book.aClass.name}</td>
                <td>${book.descr}</td>
                <td>
                    <a href="/book/updateBook?id=${book.id}">修改</a>
                    <a href="/book/deleteBook?id=${book.id}">删除</a>
                </td>
                <td><input type="checkbox" name="ids" class="item" value="${book.id}"></td>
            </tr>
        </c:forEach>
    </form>

    <tr align="center">
        <td colspan="8">
            <c:if test="${pageInfo.hasPreviousPage }">
                <a href="#" onclick="queryBook(1)">首页</a>
                <a href="#" onclick="queryBook(${pageInfo.pageNum-1})">上一页</a>
                <a href="#" onclick="queryBook(${pageInfo.pageNum-1})">${pageInfo.prePage}</a>&nbsp;
            </c:if>
            <span style="color: blue">${pageInfo.pageNum}</span>&nbsp;

            <c:if test="${pageInfo.hasNextPage }">
                <a href="#" onclick="queryBook(${pageInfo.pageNum+1})">${pageInfo.nextPage}</a>&nbsp;
                <a href="#" onclick="queryBook(${pageInfo.pageNum+1})">下一页</a>&nbsp;
                <a href="#" onclick="queryBook(${pageInfo.pages})">末页</a>
            </c:if>
            共&nbsp;${requestScope.pageInfo.pages}&nbsp;页
        </td>
        <td><input type="button" value="批量删除" onclick="delAll()"></td>
    </tr>
</table>
</body>


<script src="/js/jquery-1.8.3.min.js"></script>
<script>
    function queryBook(pageNum) {
        $("#pageNum").val(pageNum);
        $("#queryForm").submit();
    }

    function checkAll(allNode) {
        var itemNodes = document.getElementsByClassName("item");

        for (var i = 0; i < itemNodes.length; i++) {
            itemNodes[i].checked = allNode.checked;
        }
    }

    function delAll() {
        $("#listForm").submit();
    }
</script>


</html>
