<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
   	<header>
		<div class="navbar navbar-light bg-light box-shadow">
			<div class="container d-flex justify-content-between">
				<!-- <a href="/dashboard" class="col-8 navbar-brand"> <strong
					class="text-warning">Events</strong>
				</a> -->
				<div style="display:flex" class="col-4 row align-items-center">
					<%-- <h1 class="col m-2">${ user.firstName }</h1> --%>
					<p><a href="/dashboard" class="btn">Home</a></p>
					<p><a href="/logout" class="btn">Logout</a></p>
				</div>
			</div>
		</div>
		<main style="margin-top:40px;width:35%;margin-left:200px;border:solid">
			<div>
			<h1 style="background-color:lightgrey; padding-left:10px">${event.name}</h1>
				<div style="margin-top:10px; padding:10px;margin-left:100px;">
					<p>Host: ${ user.firstName } ${ user.lastName}</p>
					<p>Date: ${ event.date }</p>
					<p>Here are ${ event.location }'s, ${event.state}</p>
					<p>People who are attending this event: </p>
					
					<%-- <table class="table table-striped">
						<thead>
							<tr>
								<td>Name</td><td>Date</td>
								<td>Location</td>
							</tr>
						</thead>
						<tbody>
								<c:forEach var="event" items="${events}">
							<tr>
								<td><c:out value="${event.user.firstName} ${event.user.lastName}"></c:out></td>
								<td><c:out value="${event.user.location}"></c:out></td>
							</tr>
								</c:forEach>
						</tbody>
					</table> --%>
					<p style="display:flex;">
		            	<form action="/editBelt/${event.id}"><button type="submit" class="button">Edit</button></form>
		            	<form action="/delete/${event.id}" method="post"><input type="hidden" name="_method" value="delete" class="button"/><input type="submit" value="Delete"/></form>
		        	<p/>
				</div>
			</div>
			<%-- <div>
				<h1>Message Wall</h1>
				<textarea></textarea>
				<br/>
				<label>Add Comments:</label>
		        <form:input path=" comment" class="form-control" />
				<!-- <input type="submit" value="comment" class="btn btn-success" /> -->
			
			</div> --%>
		</main>
	</header>
</body>
</html>