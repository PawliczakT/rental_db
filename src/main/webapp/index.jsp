<%--
  Created by IntelliJ IDEA.
  User: Dagi
  Date: 04.10.2020
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>DB</title>
</head>
<body>
<h2>Witaj w swiecie JSP</h2>
<sql:setDataSource var = "baza"
    driver = "com.mysql.jdbc.Driver"
    url = "jdbc:mysql://sql7.freemysqlhosting.net:3306/sql7368880?serverTimezone=UTC"
    user = "sql7368880" password="Bp1nSM3qcp"/>
<sql:query dataSource="${baza}" var = "result">
    SELECT * from car;

</sql:query>

<table border="1" width="100%">
    <tr>
        <th>Rejestracja</th>
        <th>Marka</th>
        <th>Model</th>
        <th>Ocena</th>
        <th>Istnieje?</th>
        <th>Imię</th>
    </tr>

    <c:forEach var = "row" items="${result.rows}">
        <tr>
            <td><c:out value="${row.reg_number}"/></td>
            <td><c:out value="${row.mark}"/></td>
            <td><c:out value="${row.model}"/></td>
            <td><c:out value="${row.rate}"/></td>
            <td><c:out value="${row.isDeleted}"/></td>
            <td><c:out value="${row.first_name}"/></td>
        </tr>
    </c:forEach>
</table>

<form action="insertCar.jsp">
    <label for="rej">Rejestracja:</label><br>
    <input type="text" id="rej" name="rej"><br>
    <label for="mark">Marka:</label><br>
    <input type="text" id="mark" name="mark"><br>
    <label for="model">Model:</label><br>
    <input type="text" id="model" name="model"><br>
    <label for="rat">Ocena:</label><br>
    <input type="text" id="rat" name="rat"><br>
    <input type="submit" value="Submit">
</form>



</body>
</html>
