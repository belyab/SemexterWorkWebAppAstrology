<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 24.10.2021
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="with=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleHome.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
</head>
<body>
<section class="sub-header">
    <%@include file="/WEB-INF/top_nav.jsp" %>
    <h1>Natal chart</h1>
</section>
<script>
    var widgetApp = "apro";
    var widgetLanguage = "ru";
    var widgetSize = 0;
</script>
<script src="https://astro-app.net/js/widget.js"></script>

</body>
</html>
