<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/details.css">
 <script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<title>Details</title>
</head>
<body>
<a href="/dashboard">Dashboard</a>

<table class="table table-dark">
  <thead>
    <tr>
     
      <th scope="col">Name</th>
      <th scope="col">artist</th>
      <th scope="col">rating</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
         <td><c:out value="${song.title}"/></td>
         <td><c:out value="${song.artist}"/></td>
         <td><c:out value="${song.rating}"/></td>
         <td><a href="/song/${song.id}">Delete</a></td>
    </tr>
  </tbody>
</table>


</body>
</html>