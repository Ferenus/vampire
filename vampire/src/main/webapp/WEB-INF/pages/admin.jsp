<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<script src="resources/jquery-2.1.4.min.js"></script>
<script>
    function markMenu(id) {
        document.getElementById(id).className = 'active';
    }
    $(document).ready(function() {
        markMenu('admin');
    });
</script>
<head>
    <link rel="shortcut icon" href="/vampire/resources/favicon.gif" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="resources/default.css">
</head>
<body>
<div class="table2">
    <div class="row">
        <div class="cell7">
            <%@include file="menu.jsp" %>
        </div>
        <div class="cell" style="width: 20px;">

        </div>
        <div class="cell">
            <div class="table">
                <div class="row">
                    <div class="cell2" style="width: 900px; padding: 5px">

                    </div>
                </div>
                <div class="row">
                    <div class="cell4">
                        Admin menu
                    </div>
                </div>
                <div class="row">
                    <div class="cell">
                        <c:if test="${login=='ferenus'}">
                            <form method="post" action="/vampire/admin">
                                Gracz :
                                <select name="name">
                                    <c:forEach items="${names}" var="name">
                                        <option value="${name}" ${displayName == name ? 'selected="selected"' : ''}>${name}</option>
                                    </c:forEach>
                                </select><br>
                                Parametr :
                                <select name="parameter">
                                    <c:forEach items="${sheet}" var="parameter">
                                        <option value="${parameter}" ${displayParameter == parameter ? 'selected="selected"' : ''}>${parameter}</option>
                                    </c:forEach>
                                </select><br>
                                Wartość :
                                <select name="value">
                                    <c:forEach var="value" begin="0" end="20">
                                        <option value="${value}">${value}</option>
                                    </c:forEach>
                                </select><br><br>
                                <input type="submit" value="Zmień"/>
                                <br><br>
                            </form>

                            <form method="post" action="/vampire/incOne">
                                Gracz :
                                <select name="name">
                                    <c:forEach items="${names}" var="name">
                                        <option value="${name}" ${displayName == name ? 'selected="selected"' : ''}>${name}</option>
                                    </c:forEach>
                                </select><br>
                                Parametr :
                                <select name="parameter">
                                    <c:forEach items="${variables}" var="variable">
                                        <option value="${variable}" ${displayVariable == variable ? 'selected="selected"' : ''}>${variable}</option>
                                    </c:forEach>
                                </select><br><br>
                                <input type="submit" name="action" value="Zwieksz o 1"/>
                                <input type="submit" name="action" value="Zmniejsz o 1"/>
                            </form>
                        </c:if>
                    </div>
                </div>
                <c:if test="${success}">
                    <div class="row">
                        <div class="cell">
                            <div class="info message" id="success">
                                Sukces!
                            </div>
                        </div>
                    </div>
                </c:if>

            </div>
        </div>
    </div>
</div>
<div class="cell" style="width: 20px;">

</div>
</body>
</html>