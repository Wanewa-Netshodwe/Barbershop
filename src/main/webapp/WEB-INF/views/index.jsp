<%@ page import="com.example.demo.Model.Review" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.Controllers.ClientController" %>
<%@ page import="com.example.demo.Controllers.ReviewController" %>
<%@ page import="com.example.demo.Controllers.ReviewComponent" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/0d8e1c9927.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <title>Clean|CUT</title>
    <style>


        .profile-popup {
            display: none;
            position: fixed;
            top: 50%;
            color: aliceblue;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgb(143, 140, 140);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            z-index: 9999;
        }
        .profile-popup img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 20px;
            margin-left: auto;
            margin-right: auto;
            display: block; /* Ensures the image is treated as a block element */
        }

        .social-icons img {
            width: 30px; /* Set the width to your desired size */
            height: auto; /* Maintain aspect ratio */
        }
        .social-icons {

            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .social-icons a {
            margin: 0 10px;
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
        .contact-info {
            text-align: center;
        }
    </style>

</head>
<body onload=" LoadReviews()">


<div class="Desktop">
    <div class="header">


        <img src="/images/Header%20BG-Desktop.jpg" alt="mobileLogo">



        <div class="my-navbar">
            <div class="subMenu ">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#CutPrices">Prices</a></li>
                    <button id="open-profile" class="btn btn-primary"  style="background-color: transparent; border: none;">
                        <li>Contact US</li></button>
                    <li><a href="#" onclick="show()">Book Appointment</a></li>

                </ul>
            </div>
        </div>


        <div class="header-message">
            <p>Best Barber in Town</p>
            <p>Professional Care</p>
        </div>
        <div class="logo"><img src="./images/LOgo.png" alt=""></div>
    </div>

    <div class="profile-popup" id="profile-popup">
        <span class="close-btn" id="close-profile">&times;</span>
        <img src="./images/pro.jpeg" alt="Profile Picture">
        <div class="social-icons">
            <a href="https://www.facebook.com"><img src="./images/facebook.jpg" alt="Facebook" width="5px" height="5px"></a>
            <a href="https://www.twitter.com"><img src="./images/twitter.png" alt="Twitter"></a>
            <a href="https://www.instagram.com"><img src="./images/insta.jpg" alt="Instagram"></a>
        </div>
        <div class="contact-info">
            <p>Email: example@example.com</p>
            <p>Contact: +1234567890</p>
        </div>
    </div>

    <div class="body">

        <div class="appointment-form hide">
            <h3 class="af-h1">Book an Appointment</h3>
            <form action="http://localhost:3423/Booking.api" method="post">
                <div class="container-fluid">

                    <div id="namefield" class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Name" name="name">
                        <label for="floatingInput">Name</label>
                    </div>
                    <div id="surnamefield" class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Surname" name="surname">
                        <label for="floatingInput">Surname</label>
                    </div>
                    <div id="phonefield" class="form-floating mb-3">
                        <input type="text" class="form-control" id="floatingInput" placeholder="Phone Number" name="PhoneNUmber">
                        <label for="floatingInput">Phone Number</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="date" class="form-control" id="floatingInput" name="bookDate">
                        <label for="floatingInput">Date And Time </label>
                    </div>
                    <div class="haircut-selection">
                        <input type="hidden" name="price" value="10" id="selectedPrice">
                        <section id="prices"><p>Select one of The Haircuts Below</p></section>
                        <select class="form-select" aria-label="Default select example" name="haircut">
                            <option value="CleanShave" selected data-price="10">Clean shave -R10 </option>
                            <option value="Brush" data-price="20">Brush -R20  </option>
                            <option value="Buzzcut" data-price="25">Buzzcut -R25 </option>
                            <option value="Waves" data-price="150">Waves -R150 </option>
                            <option value="MidTaper" data-price="100">Mid Taper -R100</option>
                            <option value="SkinFade" data-price="55">Skin Fade -R55</option>
                            <option value="LowBlowOut" data-price="55">Low Blow Out -R55</option>
                            <option value="LowFade" data-price="75">Low Fade -R75</option>
                        </select>
                    </div>
                    <div class="radio-options">
                        <p><label>Select Payment Method</label></p>
                        <input type="radio" class="btn-check" value="cash" name="paymentType" id="option5" autocomplete="off" checked>
                        <label class="btn" for="option5">Cash</label>


                        <input type="radio" class="btn-check" name="paymentType" value="online" id="option8" autocomplete="off">
                        <label class="btn" for="option8">Online Payment</label>
                    </div>

                    <div class="button mb-3">
                        <button type="submit" class="btn btn-outline-light btn-lg sub">Make an Appointment</button>
                        <button type="button" class="btn btn-outline-light btn-lg sub" onclick="hide()">Close</button>
                    </div>

                </div>








            </form>



        </div>
        <div class="info-section">
            <div class="operating-hours">
                <div class="image1">
                    <img src="./images/cut cropped.jpg" alt="">
                </div>
                <div class="image2">
                    <img src="./images/cut.jpg" alt="">
                </div>

            </div>
            <div class="aboutUS">
                <p id="about">About Us</p>
                <h4>Experienced and Traditional Stylish Barber Shop</h4>
                <p>Inspires employees and organizations to support causes they care
                    about. We do this to bring more resources to the nonprofits that are
                    changing our world.</p>
                <button>Learn More</button>
            </div>
        </div>

        <div class="hourstxt">
            <i class="fa fa-clock"></i>
            <p>Mon-Fri (9H00-17H00)</p>
            <p> Sat (10H00-16H00)</p>
        </div>

        <div class="haircuts-prices"  id="CutPrices">

            <div class="haircut-container">
                <h3>Haircut Services</h3>
                <div class="cards-container">

                    <div class="card mb-3 ">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="./images/haircuts/brush.webp" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Brush</h5>
                                    <p class="card-text">R20 </p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="./images/haircuts/buzzcut.webp" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Buzzcut</h5>
                                    <p class="card-text">R25 </p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="./images/haircuts/mid taper.webp" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Mid Taper</h5>
                                    <p class="card-text">R100 </p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="./images/haircuts/waves.webp" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Waves</h5>
                                    <p class="card-text">R150 </p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="cards-container">

                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="./images/haircuts/blow out low.webp" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Low Blow Out</h5>
                                    <p class="card-text">R65 </p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="./images/haircuts/high flat top.webp" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">High Top Flat</h5>
                                    <p class="card-text">R30 </p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="./images/haircuts/skinfade.webp" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Skin Fade </h5>
                                    <p class="card-text">R55 </p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="card mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="./images/haircuts/Low fade.webp" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Low Fade</h5>
                                    <p class="card-text">R75 </p>
                                    <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>

        <div class="team-section">
            <h5>Team</h5>
            <h3>Meet our Barbers</h3>
            <div class="barber-section-cards">

                <div class="card" style="width: 18rem;">
                    <img src="./images/haircuts/20a00beefa6c713caff56243d69d511d.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-text">Barber 1</p>
                        <p><span>Dedicated To his Art <b>Barber 1</b>  Always Strives For Perfection</span></p>
                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="./images/rinald-rolle-_49_L5KmMq4-unsplash.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-text">Barber 2</p>
                        <p><span>He Is <b>H.I.M</b></span></p>
                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="./images/haircuts/f7ade54a60e79c2fc6de38c11998b030.webp" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="card-text">Barber 3</p>
                        <p><span>Master of his own Craft <b>Barber 1</b> Is a wizard on the scissors</span></p>
                    </div>
                </div>

            </div>
        </div>


        <div class="reviews">
            <h5>Reviews</h5>
            <h3>Listen to our customers</h3>
            <div class="reviews-cards">
                <%
                    // Retrieve the ApplicationContext
                    ApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
                    // Retrieve the reviewList bean
                    List<Review> reviews = (List<Review>) context.getBean("reviewList");
                    // Iterate over the reviews
                    for (Review review : reviews) {
                %>
                <div class="row">
                    <div class="col-sm-6 mb-3 mb-sm-0">
                        <div class="card">
                            <div class="card-body">
                                <h6 class="card-title"><%= review.getName() %> <span id="username">@<%= review.getName() %></span></h6>
                                <p class="card-text"><%= review.getMessage() %></p>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %>


            </div>

            <div>

                <!-- Button trigger modal -->
                <button>
                    <a href="reviews">Leave a Review</a>
                </button>



            </div>

        </div>

    </div>
</div>

    <script>

        document.getElementById("open-profile").addEventListener("click", function() {
            document.getElementById("profile-popup").style.display = "block";
        });

        document.getElementById("close-profile").addEventListener("click", function() {
            document.getElementById("profile-popup").style.display = "none";
        });


    </script>
    <script src="script.js"></script>

</body>


</html>