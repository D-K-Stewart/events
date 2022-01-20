<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <%@ page isErrorPage="true" %> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Title</title>
	<!-- CSS only -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css"/>
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />
	<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
</head>
<body>
   	<div>	
		<div style="text-align:center; width:75%; margin-top:10px;margin-left:100px;border:solid"class="cantainer mt-4">
			<%-- <h1>Welcome, ${name}</h1>
			<p>Here are some of the events in your state:</p>
			<p><a href="/logout">Logout</a>
			<!-- <p><a href="/newEvent">Add an event</a> -->
			<table class="table table-striped">
				<thead>
					<tr>
						<td>Name</td>
						<td>Date</td>
						<td>Location</td>
						<td>Host</td>
						<td>Action / Status</td>
					</tr>
				</thead>
				<tbody>
						<c:forEach var="event" items="${events}">
							<tr>
								<td>
									<c:if test="${event.user.id == user.id}">
		                               <a href="/editEvent/${event.id}">Edit</a>
		                               <a href="/delete/${event.id}">Delete</a>
		                            </c:if>
								</td>
								
								<td>${expense.id}</td>
								<td><c:out value="${event.id}"></c:out></td>
								<td><a href="/oneEvent/${event.id}"><c:out value="${event.name}"></c:out></a></td>
								<td><c:out value="${event.date}"></c:out></td>
								<td><c:out value="${event.location}"></c:out></td>
								<td><c:out value="${event.user.firstName}"></c:out></td>
								<td>
									<c:if test="${event.user.id == user_id}">
		                               <a href="/editEvent/${event.id}">Edit</a>
		                               <a href="/delete/${event.id}">Delete</a>
		                            </c:if>
								</td>
							</tr>
						</c:forEach>
				</tbody>
			</table>
		</div>
		<div style="display:flex;margin-top:50px">   
	    <div style="width:75%; margin-top:10px;margin-left:100px;border:solid;padding:15px;background-color:lightgrey"class="cantainer mt-4">
		    <form:form action="/createEvent" method="post" modelAttribute="eventS">
		    <form:hidden path="user" value="${user_id }"/>
		        
		        <div style="background-color:black" "class="form-group">
		            <label style="font-weight:bold; font-size:30px; color:#062102; text-shadow: .5px .5px .5px white" >Name:</label>
		            <form:input path="name" class="form-control" />
		            <form:errors path="name" class="text-danger" />
		        </div>
		        <div class="form-group">
		            <label>Date:</label>
		            <form:input path="date" type="date" class="form-control" />
		            <form:errors path="date" class="text-danger" />
		        </div>
			    <div style="display:flex;justify-content: space-evenly">    
			        <div class="form-group">
			            <label>Location:</label>
			            <form:input path="location" class="form-control" />
			            <form:errors path="location" class="text-danger" />
			        </div>
			        <div style="margin-top:25px">
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
			    </div> 
		        <input type="submit" value="submit" class="btn btn-primary" />
		        <div style="margin-top:25px">
				</div>
		    </form:form>
	 	</div > --%>
	 		<div class="box">
	 			
				<div class="search_select_box">
					<select onchange="openWindow(this)" id="select_page" class="w-100" class="operator" data-live-search="true">
						<option value="">Select an airline..</option>
						<option value="https://www.airasia.com/en/gb">AirAsia</option>
						<option value="https://www.emirates.com/us/english/">Emirates Airlines</option>
						<option value="https://www.qatarairways.com/en/homepage.html">Qatar Airways</option>
						<option value="https://www.saudia.com">Saudie Arabian Airlines</option>
						<option value="https://www.airasia.com/en/gb">AirAsia</option>
						<option value="https://www.airchina.us/US/GB/Home">Air China</option>
						<option value="https://www.airnewzealand.co.nz">Air New Zealand Group</option>
						<option value="http://www.ana.co.jp">ANA - All Nippon Airways</option>
						<option value="https://flyasiana.com/C/US/EN/index">Asiana Airlines</option>
						<option value="https://www.cathaypacific.com/cx/en_US.html">Cathay Pacific</option>
						<option value="https://www.cebupacificair.com">Cebu Pacific Air</option>
						<option value="https://www.china-airlines.com/tw/en">China Airlines</option>
						<option value="https://us.ceair.com/en/">China Eastern Airlines</option>
						<option value="https://www.csair.com/cn/">China Southern Airlines</option>
						<option value="https://www.garuda-indonesia.com/other-countries/en/index">Garuda Indonesia</option>
						<option value="http://www.hnair.com">Hainan Group</option>
						<option value="https://www.jal.com/index.html">JAL Group(Japan Airlines)</option>
						<option value="https://www.jetstar.com/us/en/home?adults=1&children=0&flexible=1&flight-type=2&infants=0&origin=HNL&tab=1">Jetstar</option>
						<option value="http://flykingfisher.com">Kingfisher Airlines</option>
						<option value="https://www.koreanair.com/us/en">Korean Air</option>
						<option value="http://www.malaysiaairlines.com">Malaysia Airlines</option>
						<option value="http://www.qantas.com.au">Qantas</option>
						<option value="http://www.shenzhenair.com">Shenzhen Airlines</option>
						<option value="https://www.singaporeair.com/en_UK/us/home#/book/bookflight">Singapore Airlines</option>
						<option value="https://www.thaiairways.com">Thai Airways International</option>
						<option value="http://www.vietnamairlines.com">Vietnam Airlines</option>
						<option value="https://www.virginaustralia.com/us/en/#/">Virgin Australia</option>
						<option value="https://www.aerlingus.com/html/en-US/home.html">Aer Lingus</option>
						<option value="https://www.aeroflot.ru/ru-ru">Aeroflot Russian Airlines</option>
						<option value="http://www.airberlin.com">Air Berlins Group</option>
						<option value="https://www.airfrance.com/indexCom_en.html">Air France KLM</option>
						<option value="https://www.austrian.com/us/en/homepage">Austrian Airlines Group</option>
						<option value="https://www.britishairways.com/travel/home/public/en_us/">British AIrways</option>
						<option value="https://www.easyjet.com/en/">easyJet</option>
						<option value="http://www.iberia.com">Iberia Group</option>
						<option value="http://www.lufthansa.com">Lufthansa</option>
						<option value="https://www.norwegian.com">Norwegian Air Shuttle</option>
						<option value="https://www.ryanair.com/us/en">Ryanair</option>
						<option value="https://www.swiss.com/us/en/homepage">Swiss</option>
						<option value="http://flights.thomson.co.uk">Thomson Airways</option>
						<option value="https://www.turkishairlines.com">Turkish Airlines</option>
						<option value="https://www.vueling.com">Vueling</option>
						<option value="http://www.avianca.com">Avianca</option>
						<option value="http://www.voegol.com.br">Gol Linhas Aereas</option>
						<option value="https://www.latamairlines.com/us/en">TAM Linhas Aereas</option>
						<option value="http://www.aircanada.com">Air Canada</option>
						<option value="https://www.southwest.com/?ref=airtran.com">Southwest</option>
						<option value="https://www.alaskaair.com">Alaska Airlines</option>
						<option value="https://www.aa.com">American Airlines</option>
						<option value="https://www.united.com/en/us">United Airlines</option>
						<option value="https://www.delta.com">Delta Airlines</option>
						<option value="http://www.frontierairlines.com">Frontier Airlines</option>
						<option value="https://www.jetblue.com">JetBlue Airways</option>
						<option value="https://www.southwest.com">Southwest Airlines</option>
						<option value="http://www.usairways.com">US AIrways</option>
						<option value="https://www.westjet.com">WestJet</option>
						
					</select>
	        	</div>
			</div>	
	<script src="<c:url value="/resources/js/app.js" />"></script>
</body>
</html>