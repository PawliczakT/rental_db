<%--
  Created by IntelliJ IDEA.
  User: Dagi
  Date: 04.10.2020
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>InsertCar</title>
</head>
<body>
<sql:setDataSource var = "baza"
                   driver = "com.mysql.jdbc.Driver"
                   url = "jdbc:mysql://sql7.freemysqlhosting.net:3306/sql7368880?serverTimezone=UTC"
                   user = "sql7368880" password="Bp1nSM3qcp"/>
<%
    String rej = request.getParameter("rej");
    String mark = request.getParameter("mark");
    String model = request.getParameter("model");
    String rat = request.getParameter("rat");
    out.print(rej + mark + model + rat);
    String query = "    Insert into car (reg_number, mark, model, rate) values\n" +
            "    ('" + rej + "', '" + mark + "','" + model + "'," + rat + ");";
    application.setAttribute("query", query);
    out.print(query);
%>

<sql:update dataSource="${baza}" var ="result2">
${applicationScope.query}
</sql:update>
<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>
