<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/addsongs.css">
 <script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<title>Add Song</title>
</head>
<body>
<a href="/dashboard">Dashboard</a>

	<div class="row">
	<div class="col-sm-4">
	<form:form action="/dashboard" method="post" modelAttribute="newSongs">
	<div class ="form-group">
    <p>
        <form:label  path="title" >Title</form:label>
        <form:errors path="title" class="text-danger"/>
        <form:input path="title"  class="form-control"/>
    </p>
    </div>
    <div class ="form-group">
    <p>
        <form:label path="artist" class="col-sm-2 col-form-label">Artist</form:label>
        <form:errors path="artist" class="text-danger"/>
        <form:textarea path="artist"  class="form-control"/>
    </p> 
    <p>
         <form:label path="rating" class="col-sm-2 col-form-label">Rating</form:label>
    	<form:input path="rating" type="number" class="form-control"/>
    	<form:errors path="rating" class="text-danger" />
    </p>
    </div>
         <input type="submit" value="Submit"  class="btn btn-outline-dark"/>
</form:form> 
</div>
</div>


</body>
</html>