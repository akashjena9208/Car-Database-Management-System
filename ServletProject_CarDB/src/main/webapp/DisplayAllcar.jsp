<%-- <%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All CAR</title>
<style>
body
{
 background-image: url("https://img.freepik.com/free-photo/dark-style-sky-nighttime_23-2151103593.jpg?t=st=1738178485~exp=1738182085~hmac=4a9ee7076f02f696fafcb6607f30adcde732fcf876e7cd4d9de90aacbdb8b435&w=1380");
 /* url("https://img.freepik.com/free-photo/black-white-view-off-road-vehicle-driven-rough-terrain_23-2151476150.jpg?t=st=1738177645~exp=1738181245~hmac=2f1ee5fec84e1591696091da8cc004dbba3eaa16a29898930ee9c0c192c68389&w=1380"); */
 text-align: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.center {
  margin-left: auto;
  margin-right: auto;
}

tr,th
{
color: white;
}
a
{
color: red;
}


</style>
</head>
<body>
<!-- All Come as a Object -->
	<%ResultSet rs=(ResultSet) request.getAttribute("carList"); %>
	<table border="3" class="center">
	<tr>
	<th>CarId</th>
	<th>CarModel</th>
	<th>CarBrand</th>
	<th>CarColour</th>
	<th>CarPrice</th>
	<th>Update</th>
	<th>Delete</th>
	
	</tr>
	
	<% while(rs.next())
	{ 
	%>
	<tr>
	
	<td><%=rs.getInt(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getInt(5)%></td>
	<th><a href="find-car-by-id?carId=<%=rs.getInt(1)%>">Update</a></th>
	<th><a href="dlt-car-by-id?carId=<%=rs.getInt(1)%>">Delete</a></th>
	</tr>
	
	<% } %>
	</table>
	
	<h2><a href="index.jsp">Go Back To DashBoard</a></h2>
	
	
	
</body>
</html> --%>


<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Cars</title>

<style>
  /* Background Styling */
  body {
    background-image: url("https://images.unsplash.com/photo-1498887960847-2a5e46312788?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fGNhcnxlbnwwfHwwfHx8MA%3D%3D");
    background-size: cover;
    background-repeat: no-repeat;
   /*  background-position: center; */
    text-align: center;
    font-family: 'Arial', sans-serif;
  }

  /* Table Styling */
  .car-table {
    width: 80%;
    margin: 50px auto;
    border-collapse: collapse;
    backdrop-filter: blur(10px);
    background: rgba(255, 255, 255, 0.15);
    border-radius: 12px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
  }

  .car-table th, .car-table td {
    padding: 12px;
    border: 2px solid rgba(255, 255, 255, 0.3);
    text-align: center;
    color: white;
  }

  .car-table th {
    background-color: rgba(255, 165, 0, 0.6);
  }

  .car-table tr:hover {
    background-color: rgba(255, 255, 255, 0.2);
    transition: 0.3s;
  }

  /* Stylish buttons */
  .btn {
    text-decoration: none;
    padding: 8px 12px;
    border-radius: 5px;
    font-size: 14px;
    transition: 0.3s;
  }

  .update-btn {
    background-color: #4CAF50;
    color: white;
  }

  .update-btn:hover {
    background-color: #45a049;
  }

  .delete-btn {
    background-color: #ff3333;
    color: white;
  }

  .delete-btn:hover {
    background-color: #cc0000;
  }

  /* Go Back Button */
  .back-link {
    text-decoration: none;
    font-size: 18px;
    font-weight: bold;
    background: #ffa500;
    padding: 10px 20px;
    border-radius: 5px;
    color: black;
    transition: 0.3s;
  }

  .back-link:hover {
    background: #ff7700;
  }

</style>
</head>
<body>

<% ResultSet rs = (ResultSet) request.getAttribute("carList"); %>

<!-- Table with Improved UI -->
<table class="car-table">
  <tr>
    <th>Car ID</th>
    <th>Model</th>
    <th>Brand</th>
    <th>Color</th>
    <th>Price</th>
    <th>Update</th>
    <th>Delete</th>
  </tr>

  <% while(rs.next()) { %>
  <tr>
    <td><%= rs.getInt(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getString(4) %></td>
    <td>₹<%= rs.getInt(5) %></td>
    <td><a href="find-car-by-id?carId=<%= rs.getInt(1) %>" class="btn update-btn">Update</a></td>
    <td><a href="dlt-car-by-id?carId=<%= rs.getInt(1) %>" class="btn delete-btn">Delete</a></td>
  </tr>
  <% } %>
</table>

<!-- Go Back to Dashboard -->
<h2><a href="index.jsp" class="back-link">Go Back to Dashboard</a></h2>

</body>
</html>
