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
<%--  <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">--%>
  <link href="css/styleReg.css" rel="stylesheet" type="text/css"/>
</head>
<body>
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

<%--<div class="container">--%>
<%--  <div class="regbox box">--%>
<%--    <img class="avatar" src="css/img/fortune-teller.png">--%>
<%--    <h1>Register Account</h1>--%>
<%--    <form action="RegisterServlet" method="post">--%>
<%--      <p> Login</p>--%>
<%--      <input type="text" placeholder="Login" name="login" required>--%>
<%--      <p>Password</p>--%>
<%--      <input type="password" placeholder="Password" name="password" required>--%>
<%--      <p>FirstName</p>--%>
<%--      <input type="text" placeholder="First name" name="first_name" required>--%>
<%--      <p>LastName</p>--%>
<%--      <input type="text" placeholder="Last name" name="last_name" required>--%>
<%--&lt;%&ndash;      <p>Gender</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;      <p><input type="radio" name="gender" id="male" value="male"><label for="male">Male</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input type="radio" name="gender" id="female" value="female"><label for="female">Female</label></p>&ndash;%&gt;--%>
<%--      <p>BirthDate</p>--%>
<%--      <input type="date" placeholder="Birth date" name="birth_date" required>--%>
<%--      <input type="submit" value="Register">--%>
<%--      <a href="login.jsp">Already have Account?</a>--%>
<%--    </form>--%>
<%--  </div>--%>
<%--</div>--%>
</body>
</html>

