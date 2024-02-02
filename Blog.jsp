<%-- 
    Document   : Blog
    Created on : 06-Apr-2023, 2:57:51 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/Blog.css" rel="stylesheet" type="text/css"/>
     <link href="CSS/FootarData.css" rel="stylesheet" type="text/css"/>
       <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <center>
        
    </center>
    <div class="mainContainer">
        <h2><b>HEALTH TIPS</b></h2>
        <hr class="hr" />

        <br />

        <div class="internalContainer"> <!-- ---------------------New List Tile--------------------->
            <div class="left">
                <h2><b>Moringa</b></h2>
                <p>Moringa has been used for centuries due to its medicinal properties and health benefits. It also has
                    antifungal, antiviral, antidepressant, and anti-inflammatory properties.</p>
                <ul class="list">
                    <li>Protecting and nourishing skin and hair. </li>
                    <li>Protecting the liver. </li>
                    <li>Treating edema. </li>
                    <li>Preventing and treating cancer. </li>
                    <li>Treating stomach complaints</li>
                    <li>Fighting against bacterial diseases. </li>
                    <li>Protecting the cardiovascular system. </li>
                    <li>Treating asthma. </li>

                </ul>
            </div>
            <div class="right">
                <img src="Images\moringa.jpg" class="image">
            </div>
        </div>

        <div class="internalContainer"> <!-- ---------------------New List Tile--------------------->
            <div class="right">
                <img src="Images\salt and sugar.jpg" class="image">
            </div>
            <div class="left">
                <h2><b>Consume Less Salt and Sugar</b></h2>
                <p> Consuming excessive amounts of sugars increases the risk of tooth decay and unhealthy weight gain.
                    In both adults and children, the intake of free sugars should be reduced to less than 10% of total
                    energy intake. This is equivalent to 50g or about 12 teaspoons for an adult. WHO recommends
                    consuming less than 5% of total energy intake for additional health benefits. You can reduce your
                    sugar intake by limiting the consumption of sugary snacks, candies and sugar-sweetened beverages.
                </p>
            </div>
        </div> <!--------------------------List Tile Ended--------------------------->
        <div class="internalContainer"> <!-- ---------------------New List Tile--------------------->
            <div class="left">
                <h2><b>Reduce intake of harmful fats</b></h2>
                <p>Fats consumed should be less than 30% of your total energy intake. This will help prevent unhealthy
                    weight gain and NCDs. There are different types of fats, but unsaturated fats are preferable over
                    saturated fats and trans-fats. WHO recommends reducing saturated fats to less than 10% of total
                    energy intake; reducing trans-fats to less than 1% of total energy intake; and replacing both
                    saturated fats and trans-fats to unsaturated fats.
                </p>
                <p>The preferable unsaturated fats are found in fish, avocado and nuts, and in sunflower, soybean,
                    canola and olive oils; saturated fats are found in fatty meat, butter, palm and coconut oil, cream,
                    cheese, ghee and lard; and trans-fats are found in baked and fried foods, and pre-packaged snacks
                    and foods, such as frozen pizza, cookies, biscuits, and cooking oils and spreads</p>

            </div>
            <div class="right">
                <img src="Images\fats.jpg" class="image">
            </div>
        </div> <!--------------------------List Tile Ended--------------------------->

        <div class="internalContainer"> <!-- ---------------------New List Tile--------------------->
            <div class="right">
                <img src="Images\alcohol.jpg" class="image">
            </div>
            <div class="left">
                <h2><b>Avoid harmful use of alcohol</b></h2>
                <p>There is no safe level for drinking alcohol. Consuming alcohol can lead to health problems such as
                    mental and behavioural disorders, including alcohol dependence, major NCDs such as liver cirrhosis,
                    some cancers and heart diseases, as well as injuries resulting from violence and road clashes and
                    collisions.</p>

            </div>
        </div> <!--------------------------List Tile Ended--------------------------->


        <div class="internalContainer"> <!-- ---------------------New List Tile--------------------->

            <div class="left">
                <h2><b>Be active</b></h2>
                <p>Physical activity is defined as any bodily movement produced by skeletal muscles that requires energy
                    expenditure. This includes exercise and activities undertaken while working, playing, carrying out
                    household chores, travelling, and engaging in recreational pursuits. The amount of physical activity
                    you need depends on your age group but adults aged 18-64 years should do at least 150 minutes of
                    moderate-intensity physical activity throughout the week. Increase moderate-intensity physical
                    activity to 300 minutes per week for additional health benefits.</p>

            </div>
            <div class="right">
                <img src="Images\be-active.jpg" class="image">
            </div>
        </div> <!--------------------------List Tile Ended--------------------------->


        <div class="internalContainer"> <!-- ---------------------New List Tile--------------------->


            <div class="right">
                <img src="Images\chechups.jpg" class="image">
            </div>
            <div class="left">
                <h2><b>Have Regular Check-Ups</b></h2>
                <p>Regular check-ups can help find health problems before they start. Health professionals can help find
                    and diagnose health issues early, when your chances for treatment and cure are better. Go to your
                    nearest health facility to check out the the health services, screenings and treatment that are
                    accessible to you</p>

            </div>
        </div> <!--------------------------List Tile Ended--------------------------->


        <div class="internalContainer"> <!-- ---------------------New List Tile--------------------->

            <div class="left">
                <h2><b>Eat a Healthy Diet</b></h2>
                <p>Eat a combination of different foods, including fruit, vegetables, legumes, nuts and whole grains.
                    Adults should eat at least five portions (400g) of fruit and vegetables per day. You can improve
                    your intake of fruits and vegetables by always including veggies in your meal; eating fresh fruit
                    and vegetables as snacks; eating a variety of fruits and vegetables; and eating them in season. By
                    eating healthy, you will reduce your risk of malnutrition and noncommunicable diseases (NCDs) such
                    as diabetes, heart disease, stroke and cancer.</p>

            </div>
            <div class="right">
                <img src="Images\veggie.jpg" class="image">
            </div>
        </div> <!--------------------------List Tile Ended--------------------------->
    </div>
        <br>
    <footer>

        <%@include file="FootarData.jsp" %>
    </footer>
    </body>
</html>
