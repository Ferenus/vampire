<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <link rel="shortcut icon" href="resources/favicon.gif" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="resources/default.css">
    <link rel="stylesheet" type="text/css" href="resources/effects.css">
</head>
<body>
<div style="min-height: 1019px">
&nbsp;
<div class="font-menu-bigger">Karty:</div>
<ul>
    <c:if test="${login!=null}">
        <li><a id="player1" href="player1">
            Twoja karta
        </a></li>
    </c:if>
    <li><a id="otherPlayer" href="otherPlayer">
    Karta innego gracza
    </a></li>
&nbsp;
<div class="font-menu-bigger">Inne:</div>
    <li><a id="login" href="login">
    Logowanie
    </a></li>
    <li><a href="weapons" id="weapons">
    Lista broni
    </a></li>
    <li><a href="dices" id="dices">
    Kości
    </a></li>
<c:if test="${login=='ferenus'}">
    <li><a href="admin" id="admin">
        Admin
    </a></li>
</c:if>
</ul>
</div>
</body>
</html>