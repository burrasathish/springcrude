<%@ page contentType="text/html;charset=UTF-8"  isELIgnored="false" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>

<div align="center">
    <h1> Customer table</h1>
    <form method="get" action="search">
        <input type="text" name="keyword">
        <input type="submit" value="submit">
    </form>
    <h3><a href="new">new Customer</a> </h3>
    <table border="1" padding="6">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>E-mail</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listCustomer}" var="customer">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td>
                    <a href="edit?id=${customer.id}">Edit</a>
                    &nbsp;&nbsp;&nbsp;
                    <a href="delete?id=${customer.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<h2>${message}</h2>
</body>
</html>
