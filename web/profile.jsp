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
        response.sendRedirect("index.jsp");
    }
%>
<html>
<head>
    <title>JSP Page</title>
</head>
<body>
<h1>Welcome, <%= user.getFirst_name() %></h1>
<h3>Your Account ID: <%= user.getUser_profile_id() %> </h3>
<h3>Your Email: <%= user.getLogin() %> </h3>
<h3>Your Password: <%= user.getPassword() %></h3>
<button><a href="LogoutServlet">Log Out</a></button>
</body>
</html>

