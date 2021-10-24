<%--
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
  <%
    Cookie[] cookies=request.getCookies();
    String login = "", password = "",rememberVal="";
    if (cookies != null) {
      for (Cookie cookie : cookies) {
        if(cookie.getName().equals("cooklogin")) {
          login = cookie.getValue();
        }
        if(cookie.getName().equals("cookpass")){
          password = cookie.getValue();
        }
        if(cookie.getName().equals("cookrem")){
          rememberVal = cookie.getValue();
        }
      }
    }
  %>


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
    <div class="login_form">
      <div class="title">
        Login
      </div>
      <%=request.getAttribute("msg") != null ? request.getAttribute("msg") : ""%>
      <form action="LoginServlet" method="post">
        <div class="form_wrap">
          <div class="input_wrap">
            <label>Login</label>
            <input type="text" name="login" autocomplete="off" value="<%=login%>" />
          </div>
          <div class="input_wrap">
            <label>Password</label>
            <input type="password" name="password"
                   autocomplete="off" value="<%=password%>" />
          </div>
          <div class="input_wrap">
            <label>Remember me?</label>
            <input type="checkbox" name="remember"
                   value="1"
                    <%= "1".equals(rememberVal.trim()) ? "checked=\"checked\"" : "" %> />
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


