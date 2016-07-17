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
        markMenu('weapons');
    });
</script>
<head>
    <link rel="shortcut icon" href="resources/favicon.gif" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="resources/default.css">
</head>
<body>
<div class="table2">
    <div class="row">
        <div class="cell7">
            <%@include file="menu.jsp" %>
        </div>
        <div class="cell">
            <div class="table" id="table_center">
                <div class="row">
                    <div class="cell" style="width: 920px; padding: 5px">

                    </div>
                </div>
                <div class="row">
                    <div class="cell4">
                        Lista broni
                    </div>
                </div>
                <div class="row">
                    <div class="cell">
                            <div class="table2">
                                    <div class="row2"><div class="cell6" style="width: 40px">Id</div><div class="cell6" style="width: 200px">Broń</div><div class="cell6" style="width: 50px">Stopień</div><div class="cell6" style="width: 110px">Obrażenia</div><div class="cell6" style="width: 60px">Ukrycie</div><div class="cell6" style="width: 40px">Siła</div><div class="cell6" style="width: 100px">Zasieg</div><div class="cell6" style="width: 120px">Szybkostrzelnosc</div></div>
                                <c:forEach var="p" items="${weapons}">
                                    <div class="row2"><div class="cell6" style="width: 40px">${p.id}.</div><div class="cell6" style="width: 200px">${p.bron}</div><div class="cell6" style="width: 50px">${p.stopien}</div><div class="cell6" style="width: 110px">${p.obrazenia}</div><div class="cell6" style="width: 60px">${p.ukrycie}</div><div class="cell6" style="width: 40px">${p.sila}</div><div class="cell6" style="width: 100px">${p.zasieg}</div><div class="cell6" style="width: 120px">${p.szybkostrzelnosc}</div></div>
                                </c:forEach>
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