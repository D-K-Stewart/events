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
				
				<p><a href="/dashboard" class="btn">Home</a></p>
			</div>
		</div>
	</header>
	 <div style="display:flex;margin-top:50px">   
	    <div style="width:35%; margin-top:10px;margin-left:100px;border:solid;padding:15px;"class="cantainer mt-4">
		    <form:form action="/editedEvent/${event.id }" method="post" modelAttribute="event">
		    	<input type="hidden" name="_method" value="put">
		    	<form:hidden path="user" value="${event.user.id }"/>
		        <h1>Edit Event</h1>
		        <div class="form-group">
		            <label>Title:</label>
		            <form:input path="name" class="form-control" />
		            <form:errors path="name" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Date:</label>
		            <form:input path="date" type="date" class="form-control" />
		            <form:errors path="date" class="text-danger" />
		        </div>
			    <div style="display:flex">  
			        <div class="form-group">
			            <label>Location:</label>
			            <form:input path="location" class="form-control" />
			            <form:errors path="location" class="text-danger" />
			        </div>
			        <div class="form-select">
				            <label>State:</label>
				            <form:select path="state" class="form-option" >
				            		<form:option value=""></form:option>
									<form:option value="AL">Alabama</form:option>
									<form:option value="AK">Alaska</form:option>
									<form:option value="AZ">Arizona</form:option>
									<form:option value="AR">Arkansas</form:option>
									<form:option value="CA">California</form:option>
									<form:option value="CO">Colorado</form:option>
									<form:option value="CT">Connecticut</form:option>
									<form:option value="DE">Delaware</form:option>
									<form:option value="DC">District Of Columbia</form:option>
									<form:option value="FL">Florida</form:option>
									<form:option value="GA">Georgia</form:option>
									<form:option value="HI">Hawaii</form:option>
									<form:option value="ID">Idaho</form:option>
									<form:option value="IL">Illinois</form:option>
									<form:option value="IN">Indiana</form:option>
									<form:option value="IA">Iowa</form:option>
									<form:option value="KS">Kansas</form:option>
									<form:option value="KY">Kentucky</form:option>
									<form:option value="LA">Louisiana</form:option>
									<form:option value="ME">Maine</form:option>
									<form:option value="MD">Maryland</form:option>
									<form:option value="MA">Massachusetts</form:option>
									<form:option value="MI">Michigan</form:option>
									<form:option value="MN">Minnesota</form:option>
									<form:option value="MS">Mississippi</form:option>
									<form:option value="MO">Missouri</form:option>
									<form:option value="MT">Montana</form:option>
									<form:option value="NE">Nebraska</form:option>
									<form:option value="NV">Nevada</form:option>
									<form:option value="NH">New Hampshire</form:option>
									<form:option value="NJ">New Jersey</form:option>
									<form:option value="NM">New Mexico</form:option>
									<form:option value="NY">New York</form:option>
									<form:option value="NC">North Carolina</form:option>
									<form:option value="ND">North Dakota</form:option>
									<form:option value="OH">Ohio</form:option>
									<form:option value="OK">Oklahoma</form:option>
									<form:option value="OR">Oregon</form:option>
									<form:option value="PA">Pennsylvania</form:option>
									<form:option value="RI">Rhode Island</form:option>
									<form:option value="SC">South Carolina</form:option>
									<form:option value="SD">South Dakota</form:option>
									<form:option value="TN">Tennessee</form:option>
									<form:option value="TX">Texas</form:option>
									<form:option value="UT">Utah</form:option>
									<form:option value="VT">Vermont</form:option>
									<form:option value="VA">Virginia</form:option>
									<form:option value="WA">Washington</form:option>
									<form:option value="WV">West Virginia</form:option>
									<form:option value="WI">Wisconsin</form:option>
									<form:option value="WY">Wyoming</form:option>
								</form:select>
				            <form:errors path="state" class="text-danger" />
				        </div>
			        <input type="submit" value="Submit" class="btn btn-primary" />
			    </form:form>
		 	</div>
		 </div>
	 </div>
</body>
</html>