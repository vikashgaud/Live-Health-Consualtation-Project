<%-- 
    Document   : AboutPage
    Created on : 27-Apr-2023, 4:14:54 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About-us</title>
        <link href="CSS/FootarData.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&family=Roboto:wght@400;700&display=swap"
        rel="stylesheet">
    
    <link href="CSS/AboutPage.css" rel="stylesheet" type="text/css"/>
</head>

<body>
    <%@include file="navbar.jsp" %>
    
    <section class="container-1 ">
        <div class="flex header">
            <h1>Our Mission</h1>
            <p>Online Consulation is on a mission to make quality healthcare affordable and accessible for over a
                billion+ Indians.
                We believe in empowering our users with the most accurate, comprehensive, and curated information and
                care,enabling them to make better healthcare decisions
            </p>
        </div>
    </section>
    <!-- featured Section -->
    <section class=" featuredContainer">
        <div class="featured flex">
            <div class="leftFeatured flex">
                <h2>Health is a Habit</h2>
                <p>It is the journey that takes you to new destinations every day with endless possibilities of life on
                    the back of happiness, energy, and hope. Practo wants to make this journey easy for every Indian and
                    help them live healthier and longer lives.</p>
            </div>
            <div class="rightFeatured">
                <img src="Images/rightFeatured.png" class="rightFeaturedImage">
               
           
            </div>

        </div>
    </section>

    <!-- Aproach  -->
    <section class="container outerAproach">
        <section class=" flex aproach">
            <h2>Our approach to healthcare</h2>
            <p>Providing high-quality, trusted, and accessible healthcare is our reason for being</p>
        </section>
        <section class="demonstrateAproach flex">
            <div class=" connect flex">
                <i class="fa-solid fa-regular fa-globe icon"></i>
                <h2>Connect</h2>
                <p>We understand healthcare goes beyond signs, symptoms, diagnosis, and treatment. It's about the deep
                    connection between doctors and patients that leads to continuous care and sustained, better
                    outcomes.</p>
            </div>
            <div class="connect flex">
                <i class="fa-solid fa-regular fa-handshake icon"></i>
                <h2>Trust</h2>
                <p>Online Consulation works on trust. We are aware of the responsibility placed on us by 30 crore+
                    patients and over a lakh doctors. We always have and always will do everything we possibly can to
                    uphold this trust.</p>
            </div>
            <div class="connect flex">
                <i class="fa-solid fa-regular  fa-eye icon"></i>
                <h2>Transparency</h2>
                <p>We believe in full disclosure. We believe in communicating openly and honestly, and holding ourselves
                    to the highest ethical standards.</p>
            </div>

        </section>
    </section>
    <section class="privacy container flex">
        <div class="privacy-left flex">
            <h2>Data privacy and security is our top priority</h2>
            <p>
                Data privacy and security has always served as one of the founding philosophies of Practo, and we go to
                great lengths to safeguard the confidentiality and integrity of our users</p>

        </div>
        <div class="privacy-right flex">
            <div class="security-logo flex">
                <i class="fa-solid fa-regular  fa-database icon"></i>
                <h4>256-bit</h4>
                <p>encryption</p>
            </div>
            <div class="security-logo">
                <i class="fa-solid fa-duotone fa-shield-halved icon"></i>
                <h4>Privacy </h4>
                <h4></h4>
            </div>
        </div>
    </section>
    <section class="testimony">
        <div class="container">
            <h3>What Doctors say about us</h3><br>
            <p>
                Online consulation has been a incredible to solve the industry challenges with a company thay so
                passionately and thoroughly has approached digitzation in healthcare. Online Consulation products and
                services not only make the best of technology to streamline our operations but also provide the patients
                with right tool to connect with countless healthcare providers and choose an exception patient
                experience.
            </p>

            <div class="testimonial flex">
                <i class="fa-solid fa-regular fa-user testimonoialIcon"></i>
                <div class="flex doctsdeatails">
                    <h5>Dr. Burzin Khan</h5>
                    <p>opus dental clinic</p>
                </div>
            </div>
        </div>
    </section>
   <secion class="footer"></secion>
    <script src="https://kit.fontawesome.com/22f9983cbf.js" crossorigin="anonymous"></script>
<%@include file="FootarData.jsp" %>
</body>

</html>
