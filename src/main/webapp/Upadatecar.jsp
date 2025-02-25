<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Car</title>

<style>
  /* Background Styling */
  body {
    background-image: url("https://img.freepik.com/free-photo/dark-style-sky-nighttime_23-2151103593.jpg?t=st=1738178485~exp=1738182085~hmac=4a9ee7076f02f696fafcb6607f30adcde732fcf876e7cd4d9de90aacbdb8b435&w=1380");
    background-size: cover;
    background-position: center;
    text-align: center;
    font-family: 'Arial', sans-serif;
  }

  /* Centering the form */
  .form-container {
    width: 40%;
    margin: 80px auto;
    padding: 20px;
    background: rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(10px);
    border-radius: 15px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
  }

  h1 {
    color: orange;
  }

  /* Input Fields */
  input[type="text"], input[type="number"] {
    width: 90%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    font-size: 16px;
  }

  /* Readonly Field Styling */
  input[readonly] {
    background-color: #ddd;
    font-weight: bold;
  }

  /* Update Button */
  .update-btn {
    background: #4CAF50;
    color: white;
    padding: 12px 18px;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
  }

  .update-btn:hover {
    background: #45a049;
  }

  /* Error Message */
  .error-message {
    color: red;
    font-size: 18px;
    font-weight: bold;
  }
</style>

</head>
<body>

<% 
  ResultSet rs = (ResultSet) request.getAttribute("carObject"); 
  if(rs.next()) {
%>

<div class="form-container">
  <h1>Update Car Details</h1>  

  <form action="update-car" method="post">
    <input type="number" value="<%= rs.getInt(1) %>" name="carId" readonly>
    <input type="text" value="<%= rs.getString(2) %>" name="carBrand">
    <input type="text" value="<%= rs.getString(3) %>" name="carModel">
    <input type="text" value="<%= rs.getString(4) %>" name="carColor">
    <input type="number" value="<%= rs.getInt(5) %>" name="carPrice">
    <br>
    <input type="submit" value="Update" class="update-btn">
  </form>
</div>

<% } else { %>
  <h2 class="error-message">⚠️ Error Fetching Car Details</h2>
<% } %>

</body>
</html>
