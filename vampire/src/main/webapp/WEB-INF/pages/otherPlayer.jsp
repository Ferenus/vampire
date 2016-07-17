<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <link rel="shortcut icon" href="resources/favicon.gif" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="resources/default.css">
    <link rel="stylesheet" type="text/css" href="resources/messages.css">
</head>
<script src="resources/jquery-2.1.4.min.js"></script>
<script>
    function markMenu(id) {
        document.getElementById(id).className = 'active';
    }
    $(document).ready(function () {
        markMenu('otherPlayer');
        $("#error").click(function () {
            $("#error").fadeIn(500);
            $("#error").fadeOut(500);
            $("#error").fadeOut(500);
        });
    })
</script>
<body>
<div class="table2">
    <div class="row">
        <div class="cell7">
            <%@include file="menu.jsp" %>
        </div>
        <div class="cell">
            <div class="table">
                <div class="row">
                    <div class="cell2" style="padding: 5px; width: 920px;">

                    </div>
                </div>
                <div class="row">
                    <div class="cell4">
                        Karta innego gracza
                    </div>
                </div>
                <div class="row">
                    <div class="cell" style="padding: 5px;">
                    </div>
                </div>
                <div class="row">
                    <div class="cell" style="text-align: center">
                        <form method="post" action="/vampire/otherPlayer">
                            <br>Kartę którego gracza chcesz zobaczyć? :
                            <select name="name">
                                <c:forEach items="${names}" var="name">
                                    <option value="${name}">${name}</option>
                                </c:forEach>
                            </select><br><br><br>

                            <div class="show-block">
                                <button>Pokaż</button>
                            </div>
                        </form>

                    </div>
                </div>
                <c:if test="${error}">
                    <div class="row">
                        <div class="cell">
                            <div class="error message" id="errors">
                                Nie masz mocy przeglądać karty tego gracza.
                            </div>
                        </div>
                    </div>
                </c:if>
                <div class="row">
                    <div class="cell" style="padding: 5px;">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="cell" style="width: 20px;">

</div>
</body>
</html>