<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car</title>
<style>
body
{
 background-image: url("https://img.freepik.com/free-vector/lightened-luxury-sedan-car-against-night-city-with-headlamps-rear-tail-lights-lit_1284-28804.jpg?t=st=1738176933~exp=1738180533~hmac=892034d2ec2f72bcf21a0e7fc0a93fca52981f434b4b6b463d0f0597d2132802&w=996");
 text-align: center;

}
h1 {
  color: orange;
  
}

h2,a
{
color: white;
}

</style>

</head>
<body >
	<h1>Welcome To  Car DashBord:-</h1>
	<h2><a href="AddCar.jsp">Add New CAR</a></h2>
	<h2><a href="display-all-cars">DISPLAY ALL CARS</a></h2>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Dashboard</title>
<style>
  /* Video Background */
  .video-container {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
    z-index: -1;
  }

  .video-container video {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  /* Page Styling */
  body {
    font-family: 'Arial', sans-serif;
    text-align: center;
    color: white;
    margin: 0;
    padding: 0;
  }

  /* Dashboard Container */
  .dashboard-container {
    position: relative;
    width: 50%;
    margin: 150px auto;
    padding: 20px;
    background: rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(10px);
    border-radius: 15px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
  }

  .dashboard-title {
    color: orange;
    font-size: 28px;
    margin-bottom: 20px;
  }

  /* Buttons */
  .dashboard-options {
    margin-top: 20px;
  }

  .dashboard-options a {
    color: white;
    text-decoration: none;
    background: linear-gradient(45deg, #ff6600, #ff9900);
    padding: 12px 20px;
    border-radius: 8px;
    margin: 10px;
    display: inline-block;
    font-size: 18px;
    transition: 0.3s;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  }

  .dashboard-options a:hover {
    background: linear-gradient(45deg, #ff9900, #ff6600);
    transform: scale(1.05);
  }
</style>
</head>
<body>

<!-- Video Background -->
<div class="video-container">
  <video autoplay loop muted>
    <source src="https://media.istockphoto.com/id/1988727641/video/happy-couple-signing-the-paperwork-to-buy-a-car-at-the-dealership-looking-very-excited.mp4?s=mp4-640x640-is&k=20&c=UdGzSomRlrU1OkM5aM3yZ2yAGUGSSonsAFfWivfVV0g=" type="video/mp4">
    Your browser does not support the video tag.
  </video>
</div>

<div class="dashboard-container">
  <h1 class="dashboard-title">🚗 Welcome To Car Dashboard</h1>
  <div class="dashboard-options">
    <a href="AddCar.jsp">➕ Add New Car</a>
    <a href="display-all-cars">📋 Display All Cars</a>
  </div>
</div>

</body>
</html>
