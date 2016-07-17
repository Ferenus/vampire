<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en">
<script src="resources/jquery-2.1.4.min.js"></script>
<script>
    function markMenu(id) {
        document.getElementById(id).className = 'active';
    }
    $(document).ready(function() {
        if ('${sheet.login}'=='${login}') {
            markMenu('player1');
        } else {
            markMenu('otherPlayer');
        }
    })
    function displayValue(id, number, perc) {
        var percentage = (number * 100) / perc;
        if (percentage>100){
            percentage=100;
        }
        var t = percentage.toString().concat("%");
        document.getElementById(id).style.width = t;
        document.getElementById(id).innerHTML = number;
    }
    function markRed(id, stan) {
        if (parseInt(id.slice(-1)) <= stan){
            document.getElementById(id).style.color = "red";
            document.getElementById(id).style.fontWeight = "bold";
            document.getElementById(id).style.textDecoration = "underline";
        }
    }
    function displayExperience(exp) {
        for (i = 0; i < exp; i++) {
            $("#experience").append("I ");
        }
    }
</script>
<head>
    <link rel="shortcut icon" href="resources/favicon.gif" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="resources/default.css">
    <link rel="stylesheet" type="text/css" href="resources/effects.css">
</head>
<body>
<div class="table2">
    <div class="row">
        <div class="cell7">
            <%@include file="menu.jsp" %>
        </div>
        <div id="blood_splash">
        <div class="cell" style="width: 20px;">

        </div>
        <div class="cell">
            <div class="table">
                <div class="row">
                    <div class="cell2" style="padding: 5px">

                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        Imię: <span class="font-sheet">${sheet.imie}</span>
                    </div>
                    <div class="cell2">
                        Natura: <span class="font-sheet">${sheet.natura}</span>
                    </div>
                    <div class="cell2">
                        Pokolenie: <span class="font-sheet">${sheet.pokolenie}</span>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        Gracz: <span class="font-sheet">${sheet.gracz}</span>
                    </div>
                    <div class="cell2">
                        Postawa: <span class="font-sheet">${sheet.postawa}</span>
                    </div>
                    <div class="cell2">
                        Schronienie: <span class="font-sheet">${sheet.schronienie}</span>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        Ułomność: <span class="font-sheet">${sheet.ulomnosc}</span>
                    </div>
                    <div class="cell2">
                        Klan: <span class="font-sheet">${sheet.klan}</span>
                    </div>
                    <div class="cell2">
                        Rola: <span class="font-sheet">${sheet.rola}</span>
                    </div>
                </div>
            </div>
            <div class="table">
                <div class="row">
                    <div class="cell4">
                        Atrybuty
                    </div>
                </div>
            </div>
            <div class="table">
                <div class="row">
                    <div class="cell3">
                        Fizyczne
                    </div>
                    <div class="cell3">
                        Społeczne
                    </div>
                    <div class="cell3">
                        Umysłowe
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Alucard'||sheet.imie=='Dalinar'}">Siła <span class="font-spec">Żylaste mięśnie</span></c:when><c:otherwise>Siła</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="sila" style="width: 0%"><script>setTimeout(function(){displayValue("sila", ${sheet.sila}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Charyzma
                        <div class="progress-bar red stripes"><span id="charyzma" style="width: 0%"><script>setTimeout(function(){displayValue("charyzma", ${sheet.charyzma}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Xarion'}">Percepcja <span class="font-spec">Sokoli wzrok</span></c:when><c:otherwise>Percepcja</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="percepcja" style="width: 0%"><script>setTimeout(function(){displayValue("percepcja", ${sheet.percepcja}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Alucard'}">Zręczność <span class="font-spec">Koci Refleks</span></c:when><c:otherwise>Zręczność</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="zrecznosc" style="width: 0%"><script>setTimeout(function(){displayValue("zrecznosc", ${sheet.zrecznosc}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Asael'}">Oddziaływ.<span class="font-spec">Przekupstwo</span></c:when><c:otherwise>Oddziaływanie</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="oddzialywanie" style="width: 0%"><script>setTimeout(function(){displayValue("oddzialywanie", ${sheet.oddzialywanie}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Inteligencja
                        <div class="progress-bar red stripes"><span id="inteligencja" style="width: 0%"><script>setTimeout(function(){displayValue("inteligencja", ${sheet.inteligencja}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Dalinar'}">Wytrzym. <span class="font-spec">Odporność</span></c:when><c:otherwise>Wytrzymałość</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="wytrzymalosc" style="width: 0%"><script>setTimeout(function(){displayValue("wytrzymalosc", ${sheet.wytrzymalosc}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Wygląd
                        <div class="progress-bar red stripes"><span id="wyglad" style="width: 0%"><script>setTimeout(function(){displayValue("wyglad", ${sheet.wyglad}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Spryt
                        <div class="progress-bar red stripes"><span id="spryt" style="width: 0%"><script>setTimeout(function(){displayValue("spryt", ${sheet.spryt}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table">
                <div class="row">
                    <div class="cell4">
                        Zdolności
                    </div>
                </div>
            </div>
            <div class="table">
                <div class="row">
                    <div class="cell3">
                        Talenty
                    </div>
                    <div class="cell3">
                        Umiejętności
                    </div>
                    <div class="cell3">
                        Wiedza
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        Aktorstwo
                        <div class="progress-bar red stripes"><span id="aktorstwo" style="width: 0%"><script>setTimeout(function(){displayValue("aktorstwo", ${sheet.aktorstwo}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Etykieta
                        <div class="progress-bar red stripes"><span id="etykieta" style="width: 0%"><script>setTimeout(function(){displayValue("etykieta", ${sheet.etykieta}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Lingwistka
                        <div class="progress-bar red stripes"><span id="lingwistyka" style="width: 0%"><script>setTimeout(function(){displayValue("lingwistyka", ${sheet.lingwistyka}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Asael'}">Autorytet <span class="font-spec">Przyjaźń</span></c:when><c:otherwise>Autorytet</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="autorytet" style="width: 0%"><script>setTimeout(function(){displayValue("autorytet", ${sheet.autorytet}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Dalinar'}">Jeździe. <span class="font-spec">Walka z siodła</span></c:when><c:otherwise>Jeździectwo</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="jezdziectwo" style="width: 0%"><script>setTimeout(function(){displayValue("jezdziectwo", ${sheet.jezdziectwo}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Dalinar'}">Medycy. <span class="font-spec">Bitewne rany</span></c:when><c:otherwise>Medycyna</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="medycyna" style="width: 0%"><script>setTimeout(function(){displayValue("medycyna", ${sheet.medycyna}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Dalinar'}">Bójka <span class="font-spec">Zapasy</span></c:when><c:otherwise>Bójka</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="bojka" style="width: 0%"><script>setTimeout(function(){displayValue("bojka", ${sheet.bojka}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Alucard'}">Krycie się <span class="font-spec">Skradanie</span></c:when><c:otherwise>Krycie się</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="krycie" style="width: 0%"><script>setTimeout(function(){displayValue("krycie", ${sheet.krycie}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Nauka
                        <div class="progress-bar red stripes"><span id="nauka" style="width: 0%"><script>setTimeout(function(){displayValue("nauka", ${sheet.nauka}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        Czujność
                        <div class="progress-bar red stripes"><span id="czujnosc" style="width: 0%"><script>setTimeout(function(){displayValue("czujnosc", ${sheet.czujnosc}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Dalinar'}"><span style="font-family: 'Times New Roman'">Ł</span>ucznic. <span class="font-spec">Kusze</span></c:when><c:when test="${sheet.imie=='Xarion'}"><span style="font-family: 'Times New Roman'">Ł</span>ucznic. <span class="font-spec">Szybkostrzel.</span></c:when><c:otherwise><span style="font-family: 'Times New Roman'">Ł</span>ucznictwo</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="lucznictwo" style="width: 0%"><script>setTimeout(function(){displayValue("lucznictwo", ${sheet.lucznictwo}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Okultyzm
                        <div class="progress-bar red stripes"><span id="okultyzm" style="width: 0%"><script>setTimeout(function(){displayValue("okultyzm", ${sheet.okultyzm}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        Empatia
                        <div class="progress-bar red stripes"><span id="empatia" style="width: 0%"><script>setTimeout(function(){displayValue("empatia", ${sheet.empatia}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Asael'}">Muzyka <span class="font-spec">Lutnia</span></c:when><c:otherwise>Muzyka</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="muzyka" style="width: 0%"><script>setTimeout(function(){displayValue("muzyka", ${sheet.muzyka}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Asael'}">Polityka <span class="font-spec">Hier. Wamp.</span></c:when><c:otherwise>Polityka</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="polityka" style="width: 0%"><script>setTimeout(function(){displayValue("polityka", ${sheet.polityka}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        Przebiegłość
                        <div class="progress-bar red stripes"><span id="przebieglosc" style="width: 0%"><script>setTimeout(function(){displayValue("przebieglosc", ${sheet.przebieglosc}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Dalinar'}">Oswajanie <span class="font-spec">Konie</span></c:when><c:otherwise>Oswajanie</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="oswajanie" style="width: 0%"><script>setTimeout(function(){displayValue("oswajanie", ${sheet.oswajanie}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Asael'}">Prawo <span class="font-spec">Prawo własności</span></c:when><c:otherwise>Prawo</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="prawo" style="width: 0%"><script>setTimeout(function(){displayValue("prawo", ${sheet.prawo}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Alucard'}">Uniki <span class="font-spec">Uchylanie się</span></c:when><c:when test="${sheet.imie=='Dalinar'}">Uniki <span class="font-spec">Zasłona tarczą</span></c:when><c:otherwise>Uniki</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="uniki" style="width: 0%"><script>setTimeout(function(){displayValue("uniki", ${sheet.uniki}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Rzemiosło
                        <div class="progress-bar red stripes"><span id="rzemioslo" style="width: 0%"><script>setTimeout(function(){displayValue("rzemioslo", ${sheet.rzemioslo}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Alucard'}">Śledztwo <span class="font-spec">Skanowanie</span></c:when><c:otherwise>Śledztwo</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="sledztwo" style="width: 0%"><script>setTimeout(function(){displayValue("sledztwo", ${sheet.sledztwo}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Alucard'}">Wysp. <span class="font-spec">Rzut sztyletami</span></c:when><c:when test="${sheet.imie=='Dalinar'}">Wysp. <span class="font-spec">Natych. wstawa.</span></c:when><c:otherwise>Wysportowanie</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="wysportowanie" style="width: 0%"><script>setTimeout(function(){displayValue("wysportowanie", ${sheet.wysportowanie}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Sztuka przetrwania
                        <div class="progress-bar red stripes"><span id="sztuka" style="width: 0%"><script>setTimeout(function(){displayValue("sztuka", ${sheet.sztuka}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Wiejska Mądrość
                        <div class="progress-bar red stripes"><span id="wiejska" style="width: 0%"><script>setTimeout(function(){displayValue("wiejska", ${sheet.wiejska}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        Zastraszanie
                        <div class="progress-bar red stripes"><span id="zastraszanie" style="width: 0%"><script>setTimeout(function(){displayValue("zastraszanie", ${sheet.zastraszanie}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Dalinar'}">Walka Wręcz <span class="font-spec">Szable</span></c:when><c:when test="${sheet.imie=='Alucard'}">Walka Wręcz <span class="font-spec">Sztylety</span></c:when><c:otherwise>Walka Wręcz</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="walka" style="width: 0%"><script>setTimeout(function(){displayValue("walka", ${sheet.walka}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Wykształcenie
                        <div class="progress-bar red stripes"><span id="wyksztalcenie" style="width: 0%"><script>setTimeout(function(){displayValue("wyksztalcenie", ${sheet.wyksztalcenie}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Alucard'}">Złodziejstwo <span class="font-spec">Wytrych</span></c:when><c:when test="${sheet.imie=='Asael'}">Złodziejstwo <span class="font-spec">Kieszon.</span></c:when><c:otherwise>Złodziejstwo</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="zlodziejstwo" style="width: 0%"><script>setTimeout(function(){displayValue("zlodziejstwo", ${sheet.zlodziejstwo}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Zielarstwo
                        <div class="progress-bar red stripes"><span id="zielarstwo" style="width: 0%"><script>setTimeout(function(){displayValue("zielarstwo", ${sheet.zielarstwo}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose><c:when test="${sheet.imie=='Asael'}">Zarządzanie <span class="font-spec">Trucizny</span></c:when><c:otherwise>Zarządzanie</c:otherwise></c:choose>
                        <div class="progress-bar red stripes"><span id="zarzadzanie" style="width: 0%"><script>setTimeout(function(){displayValue("zarzadzanie", ${sheet.zarzadzanie}, 6);}, 500);</script></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="table">
                <div class="row">
                    <div class="cell4">
                        Atuty
                    </div>
                </div>
            </div>
            <div class="table">
                <div class="row">
                    <div class="cell3">
                        Dyscypliny
                    </div>
                    <div class="cell3">
                        Pozycja
                    </div>
                    <div class="cell3">
                        Charakter
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.dyscypliny1_opis}
                        <div class="progress-bar red stripes"><span id="dyscypliny1" style="width: 0%"><script>setTimeout(function(){displayValue("dyscypliny1", ${sheet.dyscypliny1}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        ${sheet.pozycja1_opis}
                        <div class="progress-bar red stripes"><span id="pozycja1" style="width: 0%"><script>setTimeout(function(){displayValue("pozycja1", ${sheet.pozycja1}, 5);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose>
                            <c:when test="${sheet.osad}">
                                <s>Sumienie</s>/Osąd
                            </c:when>
                            <c:otherwise>
                                Sumienie/<s>Osąd</s>
                            </c:otherwise>
                        </c:choose>
                        <div class="progress-bar red stripes"><span id="sumienie" style="width: 0%"><script>setTimeout(function(){displayValue("sumienie", ${sheet.sumienie}, 5);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.dyscypliny2_opis}
                        <div class="progress-bar red stripes"><span id="dyscypliny2" style="width: 0%"><script>setTimeout(function(){displayValue("dyscypliny2", ${sheet.dyscypliny2}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        ${sheet.pozycja2_opis}
                        <div class="progress-bar red stripes"><span id="pozycja2" style="width: 0%"><script>setTimeout(function(){displayValue("pozycja2", ${sheet.pozycja2}, 5);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <c:choose>
                            <c:when test="${sheet.instynkt}">
                                <s>Samokon.</s>/Instynkt
                            </c:when>
                            <c:otherwise>
                                Samokon./<s>Instynkt</s>
                            </c:otherwise>
                        </c:choose>
                        <div class="progress-bar red stripes"><span id="samokontrola" style="width: 0%"><script>setTimeout(function(){displayValue("samokontrola", ${sheet.samokontrola}, 5);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.dyscypliny3_opis}
                        <div class="progress-bar red stripes"><span id="dyscypliny3" style="width: 0%"><script>setTimeout(function(){displayValue("dyscypliny3", ${sheet.dyscypliny3}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        ${sheet.pozycja3_opis}
                        <div class="progress-bar red stripes"><span id="pozycja3" style="width: 0%"><script>setTimeout(function(){displayValue("pozycja3", ${sheet.pozycja3}, 5);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        Odwaga
                        <div class="progress-bar red stripes"><span id="odwaga" style="width: 0%"><script>setTimeout(function(){displayValue("odwaga", ${sheet.odwaga}, 5);}, 500);</script></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.dyscypliny4_opis}
                        <div class="progress-bar red stripes"><span id="dyscypliny4" style="width: 0%"><script>setTimeout(function(){displayValue("dyscypliny4", ${sheet.dyscypliny4}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        ${sheet.pozycja4_opis}
                        <div class="progress-bar red stripes"><span id="pozycja4" style="width: 0%"><script>setTimeout(function(){displayValue("pozycja4", ${sheet.pozycja4}, 5);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">

                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.dyscypliny5_opis}
                        <div class="progress-bar red stripes"><span id="dyscypliny5" style="width: 0%"><script>setTimeout(function(){displayValue("dyscypliny5", ${sheet.dyscypliny5}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        ${sheet.pozycja5_opis}
                        <div class="progress-bar red stripes"><span id="pozycja5" style="width: 0%"><script>setTimeout(function(){displayValue("pozycja5", ${sheet.pozycja5}, 5);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">

                    </div>
                </div>
            </div>
            <div class="table">
                <div class="row">
                    <div class="cell4">
                        Pozostałe
                    </div>
                </div>
            </div>
            <div class="table">
                <div class="row">
                    <div class="cell3">
                        Inne Cechy
                    </div>
                    <div class="cell3">
                        Droga
                    </div>
                    <div class="cell3">
                        Stan Zdrowia
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.inne1_opis}
                        <div class="progress-bar red stripes"><span id="inne1" style="width: 0%"><script>setTimeout(function(){displayValue("inne1", ${sheet.inne1}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                    </div>
                    <div class="cell2" id="poobijany1">
                        Poobijany<script>setTimeout(function(){markRed("poobijany1", ${sheet.stan});}, 500);</script>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.inne2_opis}
                        <div class="progress-bar red stripes"><span id="inne2" style="width: 0%"><script>setTimeout(function(){displayValue("inne2", ${sheet.inne2}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2" style="text-align: center">
                        Droga <span style="color: darkred">${sheet.droga_nazwa}</span>
                    </div>
                    <div class="cell2" id="zraniony2">
                        Zraniony (-1)<script>setTimeout(function(){markRed("zraniony2", ${sheet.stan});}, 600);</script>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.inne3_opis}
                        <div class="progress-bar red stripes"><span id="inne3" style="width: 0%"><script>setTimeout(function(){displayValue("inne3", ${sheet.inne3}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">
                        <div class="progress-bar2 red stripes"><span id="droga" style="width: 0%"><script>setTimeout(function(){displayValue("droga", ${sheet.droga}, 10);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2" id="lekko3">
                        Lekko ranny (-1)<script>setTimeout(function(){markRed("lekko3", ${sheet.stan});}, 700);</script>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.inne4_opis}
                        <div class="progress-bar red stripes"><span id="inne4" style="width: 0%"><script>setTimeout(function(){displayValue("inne4", ${sheet.inne3}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">

                    </div>
                    <div class="cell2" id="ciezko4">
                        Ciężko ranny (-2)<script>setTimeout(function(){markRed("ciezko4", ${sheet.stan});}, 800);</script>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        ${sheet.inne5_opis}
                        <div class="progress-bar red stripes"><span id="inne5" style="width: 0%"><script>setTimeout(function(){displayValue("inne5", ${sheet.inne5}, 6);}, 500);</script></span>
                        </div>
                    </div>
                    <div class="cell2">

                    </div>
                    <div class="cell2" id="zmaltr5">
                        Zmaltretowany (-2)<script>setTimeout(function(){markRed("zmaltr5", ${sheet.stan});}, 900);</script>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">

                    </div>
                    <div class="cell2">

                    </div>
                    <div class="cell2" id="okaleczony6">
                        Okaleczony (-5)<script>setTimeout(function(){markRed("okaleczony6", ${sheet.stan});}, 1000);</script>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">

                    </div>
                    <div class="cell2">

                    </div>
                    <div class="cell2" id="zmasakrowany7">
                        Zmasakrowany<script>setTimeout(function(){markRed("zmasakrowany7", ${sheet.stan});}, 1100);</script>
                    </div>
                </div>
                <div class="row">
                    <div class="cell3">
                        Walka
                    </div>
                    <div class="cell3">
                        Siła Woli
                    </div>
                    <div class="cell3">
                        Doświadczenie
                    </div>
                </div>
                <div class="row">
                    <div class="cell2">
                        <div class="table2">
                            <div class="row">
                                <div class="cell5">
                                    Broń
                                </div>
                                <div class="cell5">
                                    Stopień
                                </div>
                                <div class="cell5">
                                    Obrażenia
                                </div>
                            </div>
                            <div class="row">
                                <div class="cell5">
                                    <span class="font-sheet"><c:out value="${weapon1.bron==null? 'puste':weapon1.bron}"/></span>
                                </div>
                                <div class="cell5">
                                    <span class="font-sheet">${weapon1.stopien}</span>
                                </div>
                                <div class="cell5">
                                    <span class="font-sheet">${weapon1.obrazenia}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="cell5">
                                    <span class="font-sheet"><c:out value="${weapon2.bron==null? 'puste':weapon2.bron}"/></span>
                                </div>
                                <div class="cell5">
                                    <span class="font-sheet">${weapon2.stopien}</span>
                                </div>
                                <div class="cell5">
                                    <span class="font-sheet">${weapon2.obrazenia}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="cell5">
                                    <span class="font-sheet"><c:out value="${weapon3.bron==null? 'puste':weapon3.bron}"/></span>
                                </div>
                                <div class="cell5">
                                    <span class="font-sheet">${weapon3.stopien}</span>
                                </div>
                                <div class="cell5">
                                    <span class="font-sheet">${weapon3.obrazenia}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="cell5">
                                    <span class="font-sheet"><c:out value="${weapon4.bron==null? 'puste':weapon4.bron}"/></span>
                                </div>
                                <div class="cell5">
                                    <span class="font-sheet">${weapon4.stopien}</span>
                                </div>
                                <div class="cell5">
                                    <span class="font-sheet">${weapon4.obrazenia}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cell2">
                        <div class="table">
                            <div class="row">
                                <div class="cell">
                                    <div class="progress-bar2 red stripes"><span id="wola" style="width: 0%"><script>setTimeout(function(){displayValue("wola", ${sheet.wola}, ${sheet.wolaMax});}, 500);</script></span></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="cell" style="float: right; margin-right: 50px;">
                                    <span >Max: ${sheet.wolaMax}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="cell3">
                                    Poziom Krwi
                                </div>
                            </div>
                            <div class="row">
                                <div class="cell">
                                    <div class="progress-bar2 red stripes"><span id="krew" style="width: 0%"><script>setTimeout(function(){displayValue("krew", ${sheet.krew}, ${sheet.krewMax});}, 500);</script></span></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="cell">
                                    <span style="float: right; margin-right: 50px;">Max: ${sheet.krewMax}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cell2">
                        <span id="experience"></span>
                        <script>displayExperience(${sheet.doswiadczenie})</script>
                    </div>
                </div>
                <div class="row">
                    <div class="cell2" style="padding: 5px">

                    </div>
                </div>
            </div>
            <span class="items">Przedmioty:</span><span class="font-sheet"> ${sheet.przedmioty}</span>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>