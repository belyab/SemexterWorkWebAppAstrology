<%@ page import="Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Keys" %>
<%@ page import="Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User" %>
<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 25.10.2021
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta name="viewport" content="with=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleHome.css">
</head>
<nav>
    <a href="home.jsp"><img src="css/img/Astologo_PNG_white.png"></a>
    <div class="nav-links">
        <ul>

            <li><a href="home.jsp">HOME</a></li>
            <li><a href="horoscope.jsp">HOROSCOPE</a></li>
            <li><a href="natalChart.jsp">NATAL CHART</a></li>
            <li><a href="blog.jsp">BLOG</a></li>
            ${sessionScope[Keys.USER] != null ? "<li> <a href='profile.jsp'>PROFILE</a></li>" : ""}
            <li><a href="login.jsp">LOGIN</a></li>
            <div id="search-box">
                <input type="text" name="search-friend">
                <button><i class="fa fa-search"></i></button>
            </div>

            ${sessionScope[Keys.USER] != null ? "<li><a href='logout'>Logout</a></li>" : ""}

        </ul>
    </div>
</nav>
</html>
