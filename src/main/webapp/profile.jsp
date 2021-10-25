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
<%@include file="/WEB-INF/top_nav.jsp" %>
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

