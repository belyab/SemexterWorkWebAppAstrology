<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 11.10.2021
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Register Account</title>
  <link href="css/styleReg.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<nav>
    <a href="home.jsp"><img src="css/img/Astologo_PNG_white.png"></a>
    <div class="nav-links">
        <ul>
            <li><a href="home.jsp">HOME</a></li>
            <li><a href="horoscope.jsp">HOROSCOPE</a></li>
            <li><a href="astroservices.jsp">ASTROSERVICES</a></li>
            <li><a href="blog.jsp">BLOG</a></li>
            <li><a href="login.jsp">LOGIN</a></li>
        </ul>
    </div>
</nav>
<div class="wrapper">
    <div class="registration_form">
        <div class="title">
            Registration Form
        </div>
        <form action="RegisterServlet" method="post">
            <div class="form_wrap">
                <div class="input_grp">
                    <div class="input_wrap">
                    <label>First Name</label>
                    <input type="text" name="first_name" required>
                </div>
                <div class="input_wrap">
                    <label>Last Name</label>
                    <input type="text" name="last_name" required>
                </div>
                </div>
                <div class="input_wrap">
                    <label>Login</label>
                    <input type="text" name="login" required>
                </div>
                <div class="input_wrap">
                    <label>Password</label>
                    <input type="password" name="password" required>
                </div>
                <div class="input_wrap">
                    <label>Birth date</label>
                    <input type="date" name="birth_date" required>
                </div>
                <div class="input_wrap">
                    <input type="submit" value="Register Now" class="submit_btn">
                </div>
                <a href="login.jsp">Already have Account?</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>

