<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="/vampire/resources/favicon.gif" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/vampire/resources/default.css">
    <link rel="stylesheet" type="text/css" href="/vampire/resources/messages.css">
    <link rel="stylesheet" type="text/css" href="/vampire/resources/effects.css">
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
</head>
<script src="/vampire/resources/jquery-2.1.4.min.js"></script>
<script>
    function markMenu(id) {
        document.getElementById(id).className = 'active';
    }
    function hideMessage() {
        $("#errors").css("display", "none");
    }
    function showMessage() {
        $("#errors").removeAttr("style");
    }
    $(document).ready(function () {
        markMenu('login');
        var errorMessage = "${errorMessage}";
        if (errorMessage != '') {
            showMessage()
        } else {
            hideMessage()
        }
        $("#errors").click(function () {
            $("#errors").fadeIn(500).fadeOut(500).fadeOut(500);
        });
    })
</script>
<body>
<div class="table2">
    <div class="row">
        <div class="cell7">
            <%@include file="menu.jsp" %>
        </div>
        <div class="cell" id="login_background">
            <div class="table">
                <div class="row">
                    <div class="cell" style="padding: 5px; width: 920px; height: 20px">

                    </div>
                </div>
                <div class="table">
                    <div class="row">
                        <c:choose>
                            <c:when test="${login==null}">
                                <div class="cell" style="text-align: center; width: 920px;">
                                    <div class="login-block">
                                        <h1>Witaj Kainito!</h1>

                                        <form method="post" action="/vampire/logIn">
                                            <input type="text" name="login" placeholder="Użytkownik" id="username"/>
                                            <input type="password" name="password" placeholder="Hasło" id="password"/>
                                            <button>Zaloguj się</button>
                                        </form>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="cell" style="text-align: center; width: 920px;">
                                    <div class="login-block">
                                        <form method="post" action="/vampire/logOut">
                                            <br><br><br>
                                            <button>Wyloguj się</button>
                                        </form>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
                <div class="row">
                    <div class="cell" style="text-align: center; width: 920px;">
                        <br>

                        <div class="error message" id="errors">
                            <p>${errorMessage}</p>
                        </div>
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