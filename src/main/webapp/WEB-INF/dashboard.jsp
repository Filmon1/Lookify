<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/dashboard.css">
 <script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<title>Lookify!</title>
</head>
<body>

	<a href="/songs/new">Add New</a>
	<a href="/search/topTen">Top Songs</a>
	
	<div class="form">
  <form action="/search" method="get">
  <input type="search" placeholder="Search" name="search"/>
  <input type="submit" value="Search" class="btn btn-info">
</form>
</div>
	
	<table class="table table-dark">
  <thead>
    <tr>
     
      <th scope="col">Name</th>
      <th scope="col">Rating</th>
      <th scope="col">action</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach items="${songs}" var="song">
    <tr>
         <td><a href="/songs/${song.id}">${song.title}</a></td>
         <td>${song.rating}</td>
         <td><a href="/song/${song.id}">Delete</a></td>
    </tr>
     </c:forEach>
  </tbody>
</table>

<a href="/dashboard">Dashboard</a>
</body>
</html>