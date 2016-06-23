<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>customers</title>
</head>
<body bgcolor="#ffffff" text="##FF66CC" link="##FF66CC" vlink="##FF66CC" alink="##FF66CC">
<table align=left >
<tr><td><a href="index.jsp" target="_self">Home</a></td></tr>
<tr><td><a href="products.jsp" target="_self">products</a></td></tr>
<tr><td><a href="customer.jsp" target="_self">customers</a></td></tr>
<tr><td><a href="contact.jsp" target="_self">Contact us</a></td>
</table>

<sql:setDataSource var="jdbc/pc_builder" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/pc_builder"
     user="root"  password="nbuser"/>
 
<sql:query dataSource="jdbc/pc_builder" var="result">
SELECT * from customer;
</sql:query>
 
<table align=center border="1" width="100%">
<tr>
   <th>ID</th>
   <th>Name</th>
   <th>age</th>
   <th>address</th>
   <th>lastName</th>
   <th>firstname</th>
   <th>city</th>
   <th>province</th>
   <th>country</th>
   <th>postalcode</th>
   <th>reference no</th>
   <th>credit limit</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.ID}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.age}"/></td>
   <td><c:out value="${row.address}"/></td>
   <td><c:out value="${row.lastname}"/></td>
   <td><c:out value="${row.firstname}"/></td>
   <td><c:out value="${row.city}"/></td>
   <td><c:out value="${row.province}"/></td>
   <td><c:out value="${row.country}"/></td>
   <td><c:out value="${row.postalcode}"/></td>
   <td><c:out value="${row.referenceno}"/></td>
   <td><c:out value="${row.creditlimit}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>