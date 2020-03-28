<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 27/03/20
  Time: 11:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8"  isELIgnored="false" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <h1> Search table</h1>
    <h3><a href="new">new Customer</a> </h3>
    <table border="1" cellpadding="6">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>E-mail</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${result}" var="customer">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
