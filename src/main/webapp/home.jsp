<%--
  Created by IntelliJ IDEA.
  User: elmirabajgulova
  Date: 21.10.2021
  Time: 12:08
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
<section class="header">
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

    <div class="text-box">
        <h1>WELCOME TO ASTRLOGO</h1>
        <p>Know yourself together with us. The star map will help you build the right one and change your destiny.</p>
        <a href="login.jsp" class="hero-btn">LOGIN</a>
    </div>

</section>

<section class="astroservices">
    <h1>Available astroservices</h1>
    <p>The most essential astroservices to answer your questions.</p>

    <div class="row">
        <div class="astroservices-col">
            <h3>Zodiac compatibility</h3>
            <p>Find out if you and your love interest or partner are soul mates, best friends, or a recipe for disaster. But no fear - even opposites can attract. Find out how you fare now. </p>
        </div>
        <div class="astroservices-col">
            <h3>Mercury retrograde calendar</h3>
            <p>Three times a year, the planet Mercury appears to travel backward across the sky. We refer to these periods as times when Mercury is in apparent retrograde motion, or simply ”Mercury retrograde.”</p>
        </div>
        <div class="astroservices-col">
            <h3>Zodiac signs</h3>
            <p>Learn more about your zodiac sign to shed light on your personality, love life, career, and more. Insight into your strengths, weaknesses, and life path are all accessible once you unpack your zodiac sign’s lessons during this life.</p>
        </div>
    </div>

</section>

<section class="signs">
    <h1>Zodiac signs</h1>
    <p>Learn more about your zodiac sign.</p>
    
    <div class="row">
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-aquarius-100.png">
            <div class="layer">
                <h3>AQUARIUS</h3>
            </div>
        </div>
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-aries-100.png">
            <div class="layer">
                <h3>ARIES</h3>
            </div>
        </div>
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-cancer-100.png">
            <div class="layer">
                <h3>CANCER</h3>
            </div>
        </div>
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-capricorn-100.png">
            <div class="layer">
                <h3>CAPRICORN</h3>
            </div>
        </div>
    </div>
        <div class="row">
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-gemini-100.png">
            <div class="layer">
                <h3>GEMINI</h3>
            </div>
        </div>
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-leo-100.png">
            <div class="layer">
                <h3>LEO</h3>
            </div>
        </div>
            <div class="signs-col">
                <img src="css/img/signsImages/icons8-libra-100.png">
                <div class="layer">
                    <h3>LIBRA</h3>
                </div>
            </div>
            <div class="signs-col">
                <img src="css/img/signsImages/icons8-pisces-100.png">
                <div class="layer">
                    <h3>PISCES</h3>
                </div>
            </div>
        </div>
        <div class="row">
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-sagittarius-100.png">
            <div class="layer">
                <h3>SAGITTARIUS</h3>
            </div>
        </div>
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-scorpio-100.png">
            <div class="layer">
                <h3>SCORPIO</h3>
            </div>
        </div>
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-taurus-100.png">
            <div class="layer">
                <h3>TAURUS</h3>
            </div>
        </div>
        <div class="signs-col">
            <img src="css/img/signsImages/icons8-virgo-100.png">
            <div class="layer">
                <h3>VIRGO</h3>
            </div>
        </div>
        </div>
</section>

<section class="blog">
    <h1>Blog</h1>
    <p>From astrological transits, new and full moon insights, to horoscopes and spiritual guidance, discover the innate power of the universe—and of yourself.
        Sky above, earth below, fire within.</p>
    <div class="row">
        <div class="blog-col">
            <img src="css/img/october-full-moon-1024x555.webp">
            <h3>Full moon in october</h3>
            <p>Emotions run hot under the october full moon in aries.</p>
        </div>
        <div class="blog-col">
            <img src="css/img/september-astrology-1024x553.webp">
            <h3>September astrology</h3>
            <p>August was intense, so it’s good news to know that September’s astrology offers a brief hiatus from the chaos.</p>
        </div>
        <div class="blog-col">
            <img src="css/img/new-moon-libra-1-1024x555.jpeg">
            <h3>October's new moon in libra</h3>
            <p>Looking for more beauty and balance in your life? If so, you’re not alone at this Libra new moon.</p>
        </div>
    </div>

</section>


</body>
</html>
