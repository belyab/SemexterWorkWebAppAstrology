<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 02.11.2021
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/predictionStyle.css">
</head>

<%
    String[] array = new String[]{"The love of your life is right in front of your eyes.", "Behind this fortune is the love of my life.", "You have a secret admirer.", "A dubious friend may be an enemy in camouflage.", "A friend is a present you give yourself."};
    int n = (int)Math.floor(Math.random() * array.length);
%>

<body>



<button id="open">
    click on me
</button>
<div class="modal-container" id="modal_container">
    <div class="modal">
        <h1>Prediction</h1>
        <p>
           <% out.print(array[n]); %>
        </p>
        <button id="close">
            close
        </button>
    </div>
</div>
</body>
<script src="prediction.js">
</script>
</html>

