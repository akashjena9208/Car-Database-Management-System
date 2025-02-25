<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Car - Dashboard</title>

<style>
  /* Background styling */
  body {
    background-image: url("https://img.freepik.com/free-photo/dark-style-sky-nighttime_23-2151103593.jpg?t=st=1738178485~exp=1738182085~hmac=4a9ee7076f02f696fafcb6607f30adcde732fcf876e7cd4d9de90aacbdb8b435&w=1380");
    background-size: cover;
    background-position: center;
    text-align: center;
    font-family: 'Arial', sans-serif;
  }

  /* Centering the form */
  .form-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
  }

  /* Glassmorphism effect for the form */
  .form-box {
    background: rgba(255, 255, 255, 0.15);
    backdrop-filter: blur(10px);
    border-radius: 12px;
    padding: 30px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
    width: 350px;
    text-align: center;
  }

  /* Heading */
  .form-box h2 {
    color: #ffcc00;
    margin-bottom: 20px;
  }

  /* Input fields styling */
  .form-box input {
    width: 90%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    outline: none;
    font-size: 16px;
    background: rgba(255, 255, 255, 0.2);
    color: white;
  }

  /* Placeholder text color */
  .form-box input::placeholder {
    color: white;
    opacity: 0.7;
  }

  /* Submit button */
  .form-box input[type="submit"] {
    background-color: #ffcc00;
    color: black;
    font-size: 18px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
  }

  .form-box input[type="submit"]:hover {
    background-color: #ffaa00;
  }
</style>
</head>
<body>

  <div class="form-container">
    <div class="form-box">
      <h2>Add New Car</h2>
      <form action="add-car" method="post">
        <input type="number" placeholder="Enter ID" name="carID" required><br>
        <input type="text" placeholder="Enter Model" name="carModel" required><br>
        <input type="text" placeholder="Enter Brand" name="carBrand" required><br>
        <input type="text" placeholder="Enter Colour" name="carColour" required><br>
        <input type="number" placeholder="Enter Price" name="carPrice" required><br>
        <input type="submit" value="Add Car">
      </form>
    </div>
  </div>

</body>
</html>
