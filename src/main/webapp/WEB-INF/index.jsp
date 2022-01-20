<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login & Registration</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	 <header>
		<div class="navbar navbar-light bg-light box-shadow">
			<div class="container d-flex justify-content-between">
				<a href="/" class="navbar-brand d-flex align-items-center"> <strong
					class="text-warning">Book Club</strong>
				</a>
				<p><a href="/dashboard">back to the shelves</a>
			</div>
		</div>
	</header>
	 <div style="display:flex;margin-top:50px;">   
	    <div style="width:35%; margin-top:10px;margin-left:100px;border:solid;padding:15px;background-color:lightgrey"class="cantainer mt-4">
		    <form:form action="/register" method="post" modelAttribute="newUser">
		        <div class="form-group">
		            <label>First Name:</label>
		            <form:input path="firstName" class="form-control" />
		            <form:errors path="firstName" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Last Name:</label>
		            <form:input path="lastName" class="form-control" />
		            <form:errors path="lastName" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Email:</label>
		            <form:input path="email" class="form-control" />
		            <form:errors path="email" class="text-danger" />
		        </div>
			    <div style="display:flex">    
			        <div class="form-group">
			            <label>Location:</label>
			            <form:input path="location" class="form-control" />
			            <form:errors path="location" class="text-danger" />
			        </div>
			        <div style="display:flex">
				        <div style="margin-left:25px">    
				            <label >State:</label>
				            <br/>
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
			        </div>
			    </div>
		        <div class="form-group">
		            <label>Password:</label>
		            <form:password path="password" class="form-control" />
		            <form:errors path="password" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Confirm Password:</label>
		            <form:password path="confirm" class="form-control" />
		            <form:errors path="confirm" class="text-danger" />
		        </div>
		        <input type="submit" value="Submit" class="btn btn-primary" />
		    </form:form>
	 	</div>
		<div style="width:35%; margin-top:10px;margin-left:100px;border:solid;padding:15px;background-color:lightgrey"class="cantainer mt-4">   
		    <form:form action="/login" method="post" modelAttribute="newLogin">
		        <div class="form-group">
		            <label>Email:</label>
		            <form:input path="email" class="form-control" />
		            <form:errors path="email" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Password:</label>
		            <form:password path="password" class="form-control" />
		            <form:errors path="password" class="text-danger" />
		        </div>
		        <input type="submit" value="Login" class="btn btn-success" />
		    </form:form>
	    </div>
	</div>    
</body>
</html>