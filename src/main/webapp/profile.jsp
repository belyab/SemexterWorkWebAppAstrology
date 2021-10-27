<%@ page import="Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Model.User" %>
<%@ page import="java.util.Objects" %>
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
    <link href="css/styleLog.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%@include file="/WEB-INF/top_nav.jsp" %>
<section class="container-fluid" id="main-body">
    <div class="row no-pad">
        <div class="col-md-8 no-pad">
            <div class="profile-body">
                <div class="profile-body-header">
                    <h3><i class="fa fa-user" aria-hidden="true"></i> About</h3>
                </div>
                <div class="profile-body-content">
                    <div class="row no-pad">
                        <div class="col-md-4 profile-body-content-tool no-pad">
                            <a href="/" class="active">Overview</a>
                        </div>
                        <div class="col-md-8 profile-body-content-editing">
                            <h4>Overview</h4>
                            <div class="overview-form">
                                <div class="alert-danger">
                                    <%= Objects.toString(session.getAttribute(Keys.ERROR), "")  %>
                                </div>
                                <div class="alert-success">
                                    <%= Objects.toString(session.getAttribute(Keys.SUCCESS), "")  %>
                                </div>
                                <form action="profile" method="post">
                                    <label>First Name:</label>
                                    <input required type="text" name="first_name"
                                           value="<%= user.getFirst_name()%>"/>

                                    <label>Last Name:</label>
                                    <input required type="text" name="last_name"
                                           value="<%= user.getLast_name() %>"/>

                                    <label>Login:</label>
                                    <input required type="text" name="login"
                                           value="<%= user.getLogin() %>"/>

                                    <label>Password:</label>
                                    <input required type="password" name="password"
                                           value="<%=user.getPassword() %>"/>

                                    <label style="display:block;">Birthday</label>
                                    <div class="reg-input">
                                        <select name="day" id="days">
                                            <option>Day</option>
                                        </select>
                                        <select name="month" id="months">
                                            <option>Month</option>
                                        </select>
                                        <select name="year" id="years">
                                            <option>Year</option>
                                        </select>
                                    </div>

                                    <button name="action" value="update-profile"
                                            type="submit">Save Changes
                                    </button>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
        String[] birthday = user.getBirth_date().split("-");
        String d = birthday[0];
        String m = birthday[1];
        String y = birthday[2];
    %>
</section>
<script>
    $(function () {
        let day = "<%= d %>";
        let month = "<%= m %>";
        let year = "<%= y %>";
        for (var i = 1; i <= 31; i++) {
            if (i == day) $("#days").append("<option selected>" + i + "</option>");
            else $("#days").append("<option>" + i + "</option>");
        }
        for (var i = 1; i <= 12; i++) {
            if (i == month) $("#months").append("<option selected>" + i + "</option>");
            else $("#months").append("<option>" + i + "</option>");
        }
        for (var i = 2016; i >= 1905; i--) {
            if (i == year) $("#years").append("<option selected>" + i + "</option>");
            else $("#years").append("<option>" + i + "</option>");
        }

        var viewportHeight = $(window).height();
        $("#online-list").css("max-height", viewportHeight);
    });
</script>

</body>

</html>
