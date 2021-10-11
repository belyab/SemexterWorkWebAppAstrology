<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 11.10.2021
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Register Account</title>
  <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
  <div class="regbox box">
    <img class="avatar" src="img/fortune-teller.png">
    <h1>Register Account</h1>
    <form action="RegisterServlet" method="post">
      <p> Login</p>
      <input type="text" placeholder="Login" name="name" required>
      <p>Password</p>
      <input type="password" placeholder="Password" name="password" required>
      <p>FirstName</p>
      <input type="text" placeholder="First name" name="firstName" required>
      <p>LastName</p>
      <input type="text" placeholder="Last name" name="lastName" required>
<%--      <p>Gender</p>--%>
<%--      <p><input type="radio" name="gender" id="male" value="male"><label for="male">Male</label>--%>
<%--        <input type="radio" name="gender" id="female" value="female"><label for="female">Female</label></p>--%>
      <p>BirthDate</p>
      <input type="date" placeholder="Birth date" name="birthDate" required>
      <p>BirthTime</p>
      <input type="time" placeholder="Birth time" name="birthTime" required>

      <input type="submit" value="Register">
      <a href="index.jsp">Already have Account?</a>
    </form>
  </div>
</div>
</body>
</html>

