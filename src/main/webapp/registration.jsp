<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 11.10.2021
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Users.elmirabajgulova.IdeaProjects.SemexterWorkWebAppAstrology.Helper.Keys" %>
<%@ page import="java.util.Objects" %>

<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register Account</title>
    <link href="css/styleReg.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%@include file="/WEB-INF/top_nav.jsp" %>
<div class="wrapper">
    <div class="registration_form">
        <div class="title">
            Registration Form
        </div>
        <div class="alert-dangerous"><label>${requestScope[Keys.ERROR]}
        </label>
        </div>
        <form action="register" method="post">
            <div class="form_wrap">
                <div class="input_grp">
                    <div class="input_wrap">
                        <label>First Name</label>
                        <input type="text" name="first_name"
                               value="${param["first_name"]}">
                    </div>
                    <div class="input_wrap">
                        <label>Last Name</label>
                        <input type="text" name="last_name"
                               value="${param["last_name"]}">
                    </div>
                </div>
                <div class="input_wrap">
                    <label>Login</label>
                    <input type="text" name="login" value="${param["login"]}">
                </div>
                <div class="input_wrap">
                    <label>Password</label>
                    <input type="password" name="password"
                           value="${param["password"]}">
                </div>
                <div class="reg-input">
                    <select name="day" id="days">
                        <option>Day</option>
                        <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option><option>21</option><option>22</option><option>23</option><option>24</option><option>25</option><option>26</option><option>27</option><option>28</option><option>29</option><option>30</option><option>31</option></select>
                    <select name="month" id="months">
                        <option>Month</option>
                        <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option></select>
                    <select name="year" id="years">
                        <option>Year</option>
                        <option>2021</option><option>2020</option><option>2019</option><option>2018</option><option>2017</option><option>2016</option><option>2015</option><option>2014</option><option>2013</option><option>2012</option><option>2011</option><option>2010</option><option>2009</option><option>2008</option><option>2007</option><option>2006</option><option>2005</option><option>2004</option><option>2003</option><option>2002</option><option>2001</option><option>2000</option><option>1999</option><option>1998</option><option>1997</option><option>1996</option><option>1995</option><option>1994</option><option>1993</option><option>1992</option><option>1991</option><option>1990</option><option>1989</option><option>1988</option><option>1987</option><option>1986</option><option>1985</option><option>1984</option><option>1983</option><option>1982</option><option>1981</option><option>1980</option><option>1979</option><option>1978</option><option>1977</option><option>1976</option><option>1975</option><option>1974</option><option>1973</option><option>1972</option><option>1971</option><option>1970</option><option>1969</option><option>1968</option><option>1967</option><option>1966</option><option>1965</option><option>1964</option><option>1963</option><option>1962</option><option>1961</option><option>1960</option><option>1959</option><option>1958</option><option>1957</option><option>1956</option><option>1955</option><option>1954</option><option>1953</option><option>1952</option><option>1951</option><option>1950</option><option>1949</option><option>1948</option><option>1947</option><option>1946</option><option>1945</option><option>1944</option><option>1943</option><option>1942</option><option>1941</option><option>1940</option><option>1939</option><option>1938</option><option>1937</option><option>1936</option><option>1935</option><option>1934</option><option>1933</option><option>1932</option><option>1931</option><option>1930</option><option>1929</option><option>1928</option><option>1927</option><option>1926</option><option>1925</option><option>1924</option><option>1923</option><option>1922</option><option>1921</option><option>1920</option><option>1919</option><option>1918</option><option>1917</option><option>1916</option><option>1915</option><option>1914</option><option>1913</option><option>1912</option><option>1911</option><option>1910</option><option>1909</option><option>1908</option><option>1907</option><option>1906</option><option>1905</option></select>
                </div>
                <div class="input_wrap">
                    <input type="submit" value="Register Now" class="submit_btn">
                </div>
                <a href="login.jsp">Already have Account?</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>

