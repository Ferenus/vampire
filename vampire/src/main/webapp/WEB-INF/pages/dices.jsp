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
    function hideErrors() {
        $("#errors").css("display", "none");
    }
    $(document).ready(function () {
        markMenu('dices');
        var dices = "${dices}";
        var success = "${success}";
        if (dices != '') {
            $("#dices").removeAttr("style");
        } else {
            $("#dices").css("display", "none");
        }
        if (success != null) {
            $("#errors").removeAttr("style");
        } else {
            $("#errors").css("display", "none");
        }
        $("#errors").click(function () {
            $("#errors").fadeIn(500);
            $("#errors").fadeOut(500);
            $("#errors").fadeOut(500);
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
                        Kości
                    </div>
                </div>
                <div class="row">
                    <div class="cell" style="padding: 5px;">
                    </div>
                </div>
                <div class="row">
                    <div class="cell" style="text-align: center">
                        <form method="post" action="/vampire/dices">
                            <br>Iloma kościami K10 chcesz rzucić? :
                            <select name="number">
                                <c:forEach var="number" begin="1" end="10">
                                    <option value="${number}" ${displayNumber == number ? 'selected="selected"' : ''}>${number}</option>
                                </c:forEach>
                            </select><br><br><br>
                            <div class="show-block"><button>Rzuć</button></div>
                        </form>
                        <br>
                    </div>
                </div>
                <c:forEach var="p" items="${dices}">
                    <c:set var="updateDate" value="${p.sysUpdateDate}"/>
                    <%
                        Date updateDate = (Date) pageContext.getAttribute("updateDate");
                        int seconds = (int)((new Date()).getTime() - updateDate.getTime())/1000;
                        boolean isVisible=true;
                        if (seconds>=500){
                            isVisible = false;
                        }
                        pageContext.setAttribute("seconds", seconds);
                        pageContext.setAttribute("isVisible", isVisible);
                    %>
                    <div class="row">
                        <div class="cell">
                            <div class="info message" id="dices">
                                    ${p.imie} wyrzucił ${p.wynik} <c:if test="${isVisible}">- ${seconds} s temu</c:if>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <c:if test="${error}">
                    <div class="row">
                        <div class="cell">
                            <div class="error message" id="errors">
                                Nie możesz jeszcze rzucić kością.
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