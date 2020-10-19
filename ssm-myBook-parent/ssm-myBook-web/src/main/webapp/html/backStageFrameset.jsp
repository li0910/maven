<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Title</title>
</head>
<!--<frameset rows="20%,*">-->


<!--    <frame src="backStageTop.jsp">-->
<frameset cols="15%,*" frameborder="no">
    <frame src="backStage/backStageLeft.html">
    <frameset rows="10%,*" frameborder="no">
        <frame src="backStageTop.jsp">
        <frame src="backStageRight.jsp" name="show"></frame>
    </frameset>
</frameset>
</html>