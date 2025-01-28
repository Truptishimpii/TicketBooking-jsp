<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

<%@page import="Tbook.UserDao,Tbook.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="header.html"></jsp:include>

<div class="px-4 py-5 my-5">
    <div class="col-lg-6 mx-auto">
    <h4 class="display-5 fw-bold text-body-emphasis">All Users</h4>
   
   
<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<table class="table table-bordered border-dark table-striped">
<tr><th>Id</th><th>UserName</th><th>Destination</th><th>Date</th><th>Quantity</th><th>Gender</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
 <tr><td>${u.getId()}</td><td>${u.getUsername()}</td><td>${u.getDestination()}</td><td>${u.getDate()}</td><td>${u.getQuantity()}</td><td>${u.getGender()}</td>
 <td><a class="btn btn-success" href="editform.jsp?id=${u.getId()}">Edit</a>
 </td><td><a class="btn btn-danger" href="deleteuser.jsp?id=${u.getId()}">Delete</a>
 </td></tr>
</c:forEach>
</table>
 </div>
  </div>

</body>
</html>