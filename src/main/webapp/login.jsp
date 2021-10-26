<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 11.10.2021
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Login</title>
    <link href="css/styleLog.css" rel="stylesheet" type="text/css"/>
</head>
<body>


<%@include file="/WEB-INF/top_nav.jsp" %>
<div class="wrapper">
    <div class="login_form">
        <div class="title">
            Login
        </div>
        <form action="login" method="post">
            <div class="alert-dangerous"><label><%= Objects.toString(request.getAttribute(Keys.ERROR), "")%>
            </label>
            </div>
            <div class="form_wrap">
                <div class="input_wrap">
                    <label>Login</label>
                    <input type="text" name="user-login-id">
                </div>
                <div class="input_wrap">
                    <label>Password</label>
                    <input type="password" name="user-login-password">
                </div>
                <div class="input_wrap">
                    <input type="submit" value="Login" class="submit_btn">
                </div>
                <a href="registration.jsp">Create New Account</a>

            </div>
        </form>
    </div>
</div>
</body>
</html>


