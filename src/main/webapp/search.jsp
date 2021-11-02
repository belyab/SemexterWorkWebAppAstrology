<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 03.11.2021
  Time: 02:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleHome.css">
    <link href="css/styleLog.css" rel="stylesheet" type="text/css"/>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
<section class="sub-header">
    <%@include file="/WEB-INF/top_nav.jsp" %>
    <h1>Search</h1>

</section>
<div class="container">

    <br>
    <div class="form-group">
        <form method="get" action="/search">
            <div class="form-group">
                <h3>Select the zodiac sign</h3>
                <%
                    PreparedStatement pst;
                    ResultSet rs;
                    try
                    {
                        Class.forName("org.postgresql.Driver");
                        Connection c = DriverManager.getConnection("jdbc:postgresql://localhost:5433/AstrologyWebAppDatabase", "postgres", "postgres");
                        pst = c.prepareStatement("select distinct zodiac_sign_name from zodiac_signs");
                        rs=pst.executeQuery();

                        if(rs.next())
                        {
                            out.println("<tr>");
                            out.println("<td>Choose zodiac sign</td>");
                            out.println("<td>");
                            out.println("<select name='combo'>");
                            do{
                                String zodiac_sign_name = rs.getString("zodiac_sign_name");
                                out.println("<option value='"+ zodiac_sign_name   +"'>" +  zodiac_sign_name +  "</option>");
                            }
                            while(rs.next());
                            out.println("</select>");
                            rs.close();
                            out.println("</td></tr>");
                            out.println("</tr><td colspan=2 align=center><input type=submit  value=Search></td></tr>");
                        }
                        else
                        {
                            out.println("<tr>");
                            out.println("<td colspan=2 align=right>");
                            out.println("Sorry table is Empty");
                            out.println("</td>");
                        }

                        out.println("</form>");
                    }
                    catch(Exception e)
                    {
                        e.printStackTrace();
                    }

                %>
            </div>
        </form>

    </div>

</div>

</body>
</html>
