<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/topsongs.css">
<script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<title>Top songs</title>
</head>
<body>
<h1>Top 10 Songs</h1>
<a href="/dashboard" class="settinglink">Dashboard</a>
<table class="table table-dark">
  <thead>
    <tr>
     
      <th scope="col">Name</th>
      <th scope="col">Artist</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach items="${songs}" var="song">
    <tr>
         <td><a href="/songs/${song.id}">${song.title}</a></td>
         <td>${song.artist}</td>
         
    </tr>
     </c:forEach>
  </tbody>
</table>
</body>
</html>