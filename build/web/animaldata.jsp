<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>customer</title>
</head>
<body bgcolor="#ffffff" text="##FF66CC" link="##FF66CC" vlink="##FF66CC" alink="##FF66CC">
<table align=left >
<tr><td><a href="index.jsp" target="_self">Home</a></td></tr>
<tr><td><a href="products.jsp" target="_self">products</a></td></tr>
<tr><td><a href="customer.jsp" target="_self">customers</a></td></tr>
<tr><td><a href="contact.jsp" target="_self">Contact us</a></td>
<tr><td><a href="animaldata.jsp" target="_self">animaldata</a></td>   
</table>

<sql:setDataSource var="jdbc/pc_builder" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/pc_builder?zeroDateTimeBehavior=convertToNull"
     user="root"  password="nbuser"/>

<sql:update dataSource="jdbc/pc_builder" var="result">
INSERT INTO animaldata VALUES('Fluffy','Harold','cat','f','1993-02-04',NULL);
</sql:update>


<sql:query dataSource="jdbc/pc_builder" var="result">
SELECT * from animaldata;
</sql:query>
 



<table align=center border="1" width="100%">
<tr>
   <th>name</th>
   <th>owner</th>
   <th>species</th>
   <th>sex</th>
   <th>birth</th>
   <th>death</th>
   </tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.owner}"/></td>
   <td><c:out value="${row.species}"/></td>
   <td><c:out value="${row.sex}"/></td>
   <td><c:out value="${row.birth}"/></td>
   <td><c:out value="${row.death}"/></td>
   </tr>
</c:forEach>
</table>

 
</body>
</html>