<%--
  Created by IntelliJ IDEA.
  User: Wookie
  Date: 12.01.2020
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Choose Locale</title>
</head>
<body>
<form action="chosenLocale.jsp" method="get">
    <select name="Locale">
        <option value="polish">Polski</option>
        <option value="english_us">English (US)</option>
        <option value="english_gb">English (GB)</option>
        <option value="german">Deutsch</option>
        <option value="russian">Русский</option>
        <option value="spanish">Espaniol</option>
        <input type="submit" value="SET">
    </select>
</form>
</body>
</html>