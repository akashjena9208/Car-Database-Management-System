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
