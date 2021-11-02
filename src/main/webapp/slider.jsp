<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 03.11.2021
  Time: 00:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="css/styleHome.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/sliderStyle.css">
</head>

<body>

<section class="sub-header">
  <%@include file="/WEB-INF/top_nav.jsp" %>
  <h1>Slider</h1>

</section>
<div class="container">
  <h1>Support</h1>

  <div class="slider">
    <div class="slider-line">
      <img src="css/img/1fac1319fb36b411597ce9190d41d1c0.jpeg" alt="">
      <img src="css/img/4a514d97cd531a81055e946bd15ae962.jpeg" alt="">
      <img src="css/img/fb7f2926749235eaae9667431dff8cd8.jpeg" alt="">
      <img src="css/img/ac21342398ef5121c7f06c07d1fa4cf8.jpeg" alt="">
    </div>
  </div>
  <button class="slider-prev">Prev</button>
  <button class="slider-next">Next</button>
</div>
<script src="slider.js"></script>
</body>

</html>
