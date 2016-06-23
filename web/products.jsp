<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>products</title>
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
SELECT * from products;
</sql:query>
 
<table align=center border="1" width="100%">
<tr>
   <th>productcode</th>
   <th>productname</th>
   <th>productline</th>
   <th>productscale</th>
   <th>productvendor</th>
   <th>productdescription</th>
   <th>quantityinstock</th>
   <th>buyprice</th>
   <th>msrp</th>
   
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.productcode}"/></td>
   <td><c:out value="${row.productname}"/></td>
   <td><c:out value="${row.productline}"/></td>
   <td><c:out value="${row.productscale}"/></td>
   <td><c:out value="${row.productvendor}"/></td>
   <td><c:out value="${row.productdescription}"/></td>
   <td><c:out value="${row.quantityinstock}"/></td>
   <td><c:out value="${row.buyprice}"/></td>
   <td><c:out value="${row.msrp}"/></td>
   </tr>
</c:forEach>
</table>
 
</body>
</html>