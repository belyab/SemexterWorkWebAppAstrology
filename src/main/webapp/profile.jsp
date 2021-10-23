<%@ page import="Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User" %><%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 12.10.2021
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("login.jsp");
    }
%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="bootstrap-4.5.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styleProfile.css">
</head>
<body>
<div class="container">
    <div class="main">
        <div class="topbar">
            <a href="">Home</a>
            <a href="">Horoscopes</a>
            <a href="">Astroservices</a>
            <a href="">Articles</a>
            <a href="">Zodiac signs</a>
            <a href="">Logout</a>
        </div>
        <div class="row">
            <div class="col-md-4 mt-1">
                <div class="card text-center sidebar">
                    <div class="card-body">
                        <img src="img/logInImage.png" class="rounded-circle" width="150">
                        <div class="mt-3">
                            <h3>Burk Macklin</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 mt-1">
                <div class="card  mb-3 content">
                    <h1 class="m-3 pt-3">About</h1>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <h5>First Name</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                                Burt
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Last Name</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                                Macklin
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Birth Date</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                                07.01.2003
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<%--<h1>Welcome, <%= user.getFirst_name() %></h1>--%>
<%--<h3>Your Account ID: <%= user.getUser_profile_id() %> </h3>--%>
<%--<h3>Your Login: <%= user.getLogin() %> </h3>--%>
<%--<h3>Your Password: <%= user.getPassword() %></h3>--%>
<%--<button><a href="LogoutServlet">Log Out</a></button>--%>
</body>
</html>

