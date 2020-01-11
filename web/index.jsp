<%--
  Created by IntelliJ IDEA.
  User: shree
  Date: 12/27/2019
  Time: 8:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.Connection" %>
<%@page import="com.test.dao.DBConnection" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
  <title>DataBase Connection</title>
</head>
<body>
<h1>
  This is list of product.
</h1>
<table>
    <tr>
      <th>Id</th>
      <th>Name</th>
    </tr>
    <%
        Connection connection = DBConnection.getConnectionToDatabase();
        String returnProduct = "select * from product";
        java.sql.Statement statement = connection.createStatement();
        ResultSet rs = statement.executeQuery(returnProduct);
        while (rs.next()) {
          int id = rs.getInt("productId");
         String name= rs.getString("productName");
    %>
  <tr>
    <td><%=id%></td>
    <td><%=name%></td>
  </tr>
  <%}%>
</table>
<h1>
  This is list of user.
</h1>
<table>
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Location</th>
    <th>Profession</th>
  </tr>
  <%
    String returnUser = "select * from user";
    ResultSet ru = statement.executeQuery(returnUser);
    while (ru.next()) {
      int id = ru.getInt("iduser");
      String name= ru.getString("name");
      String location =  ru.getString("location");
      String profession = ru.getString("profession");
  %>
  <tr>
    <td><%=id%></td>
    <td><%=name%></td>
    <td><%=location%></td>
    <td><%=profession%></td>
  </tr>
  <%}%>
</table>
<form action="login" method="post">
  <input type="text" name="userName" >
  <input type="password" name="password">
  <input type="submit" value="Login">
</form>
</body>
</html>
