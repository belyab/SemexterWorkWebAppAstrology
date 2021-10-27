<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 11.10.2021
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Keys" %>
<%@ page import="java.util.Objects" %>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register Account</title>
    <link href="css/styleReg.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%@include file="/WEB-INF/top_nav.jsp" %>
<div class="wrapper">
    <div class="registration_form">
        <div class="title">
            Registration Form
        </div>
        <div class="alert-dangerous"><label>${requestScope[Keys.ERROR]}
        </label>
        </div>
        <form action="register" method="post">
            <div class="form_wrap">
                <div class="input_grp">
                    <div class="input_wrap">
                        <label>First Name</label>
                        <input type="text" name="first_name"
                               value="${param["first_name"]}">
                    </div>
                    <div class="input_wrap">
                        <label>Last Name</label>
                        <input type="text" name="last_name"
                               value="${param["last_name"]}">
                    </div>
                </div>
                <div class="input_wrap">
                    <label>Login</label>
                    <input type="text" name="login" value="${param["login"]}">
                </div>
                <div class="input_wrap">
                    <label>Password</label>
                    <input type="password" name="password"
                           value="${param["password"]}">
                </div>
                <div class="input_wrap">
                    <label style="display:block;">Birthday</label>
                    <div class="input_wrap">
                        <select name="day" id="days">
                            <option>Day</option>
                        </select>
                        <select name="month" id="months">
                            <option>Month</option>
                        </select>
                        <select name="year" id="years">
                            <option>Year</option>
                        </select>
                    </div>
                </div>
                <div class="input_wrap">
                    <input type="submit" value="Register Now" class="submit_btn">
                </div>
                <a href="login.jsp">Already have Account?</a>
            </div>
        </form>
    </div>
</div>

<script>
    $(function () {
        let day = "${param["day"]}";
        let month = "${param["month"]}";
        let year = "${param["year"]}";
        for (var i = 1; i <= 31; i++) {
            if (i == day)
                $("#days").append("<option selected>" + i + "</option>");
            else
                $("#days").append("<option>" + i + "</option>");
        }

        for (var i = 1; i <= 12; i++) {
            if (i == month)
                $("#months").append("<option selected>" + i + "</option>");
            else
                $("#months").append("<option>" + i + "</option>");
        }

        for (var i = 2016; i >= 1905; i--) {
            if (i == year)
                $("#years").append("<option selected>" + i + "</option>");
            else
                $("#years").append("<option>" + i + "</option>");
        }
    });
</script>


</body>
</html>

