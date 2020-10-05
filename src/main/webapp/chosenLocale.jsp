<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Wookie
  Date: 12.01.2020
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" href="styl.css"/>
    <title>LOCALE DEMO</title>
</head>
<body>
<%
    String locale = request.getParameter("Locale");
    Date date = new Date();
%>
<c:set var="setLocale" value="<%=locale%>"/>

<c:set var="polish" value="polish"/>
<c:set var="english_us" value="english_us"/>
<c:set var="english_gb" value="english_gb"/>
<c:set var="german" value="german"/>
<c:set var="russian" value="russian"/>
<c:set var="spanish" value="spanish"/>

<c:set var="myDate" value="<%=date%>"/>
<c:set var="myCurrency" value="100.00"/>
<c:choose>
    <c:when test="${setLocale.compareTo(polish) == 0}">
        <c:set var="Locale" value="model.PolishLocale"/>
        <fmt:setLocale value="pl_PL"/>
    </c:when>
    <c:when test="${setLocale.compareTo(english_us) == 0}">
        <c:set var="Locale" value="model.EnglishLocale"/>
        <fmt:setLocale value="en_US"/>
    </c:when>
    <c:when test="${setLocale.compareTo(english_gb) == 0}">
        <c:set var="Locale" value="model.EnglishLocale"/>
        <fmt:setLocale value="en_GB"/>
    </c:when>
    <c:when test="${setLocale.compareTo(german) == 0}">
        <c:set var="Locale" value="model.GermanLocale"/>
        <fmt:setLocale value="de_DE"/>
    </c:when>
    <c:when test="${setLocale.compareTo(russian) == 0}">
        <c:set var="Locale" value="model.RussianLocale"/>
        <fmt:setLocale value="ru_RU"/>
    </c:when>
    <c:when test="${setLocale.compareTo(spanish) == 0}">
        <c:set var="Locale" value="model.SpanishLocale"/>
        <fmt:setLocale value="es_ES"/>
    </c:when>
</c:choose>

<fmt:bundle basename="${Locale}">
    <p class="powitanie"><fmt:message key="welcome message"/>: <fmt:message key="welcome"/></p>
    <p class="data"><fmt:message key="date"/>: <fmt:formatDate value="${myDate}" type="date" dateStyle="medium"/></p>
    <p><fmt:message key="purchase price"/>: <fmt:formatNumber value="${myCurrency}" type="currency"/></p>
    <p class="coutries"><fmt:message key="countries names"/>:<br>
    <ul>
        <li>PL = <fmt:message key="PL"/></li>
        <li>US = <fmt:message key="US"/></li>
        <li>GB = <fmt:message key="GB"/></li>
        <li>DE = <fmt:message key="DE"/></li>
        <li>RU = <fmt:message key="RU"/></li>
        <li>ES = <fmt:message key="ES"/></li>
    </ul>
    </p>
    <p id="words"><fmt:message key="favorite words"/>: <fmt:message key="list of favorite words"/></p>
</fmt:bundle>
</body>
</html>