

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
</style>
    </head>
    <body>
        
<div class="topnav">
    <a class="active" href="index.jsp">Home</a>
  <a href="About.jsp">About</a>
  <a href="User_SelectCity.jsp">Search</a>
  <a href="feedback.jsp">Feedback</a>
  <a href="user_login.jsp">Logout</a>
</div>

    </body>
</html>
