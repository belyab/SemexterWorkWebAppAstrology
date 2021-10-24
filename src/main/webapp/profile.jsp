<%@ page import="Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User" %>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("login.jsp");
    }
%>
<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 12.10.2021
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/styleProfile.css">
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
    <div class="profile_form">
        <div class="title">
            Profile
        </div>
        <form action="LogoutServlet" method="post">
            <div class="form_wrap">
                <div class="input_grp">
                    <div class="input_wrap">
                        <label>Welcome,
<%--                            <%= user.getFirst_name() %>--%>
                        </label>
                    </div>
                </div>
                <div class="input_wrap">
                    <input type="submit" value="Logout" class="submit_btn">
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>

