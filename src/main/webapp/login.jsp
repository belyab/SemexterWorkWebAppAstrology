<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 11.10.2021
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>JSP Page</title>
    <title>Join Us</title>
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
    <link href="css/styleLog.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
  <div class="container">
    <div class="box">
      <img class="avatar" src="css/img/logInImage.png">
      <h1>Login Account</h1>
      <form action="LoginServlet" method="post">
        <p>Username</p>
        <input type="text" placeholder="Login" name="login" required>
        <p>Password</p>
        <input type="password" placeholder="Password" name="password" required>
        <input type="submit" value="Login">
        <a href="registration.jsp">Create New Account</a>
      </form>
    </div>
  </div>
  </body>
</html>


