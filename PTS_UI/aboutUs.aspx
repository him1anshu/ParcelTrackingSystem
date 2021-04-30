<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutUs.aspx.cs" Inherits="aboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
    <!--CSS -->
    <link href="css/StyleSheet.css" rel="stylesheet" />

    <title>About Us</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!-- Heading -->
            <header>

                <!-- Navigation Bar -->
                <nav class="navbar navbar-expand-lg fixed-top ">

                    <a class="navbar-brand headBrand" href="Home.aspx">
                        <h1><span class="brandIcon"><i class="fab fa-superpowers"></i></span><span id="brandOne">On</span><span id="brandTwo">Time</span><span id="brandThree">Parcel</span></h1>
                    </a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <h1><span class="headTogglerIcon"><i class="fas fa-bullseye"></i></span></h1>
                    </button>

                    <div class="collapse navbar-collapse navContent" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link " href="Home.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="SignIn.aspx">Sign In</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="SignUp.aspx">Sign Up</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="calculateCost.aspx">Calculate Cost</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="locationFinder.aspx">Location Finder</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="tracking.aspx">Tracking</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contactUs.aspx">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <!-- Navigation Bar -->
            </header>
            <!-- Heading -->

            <section style="margin:100px;">

                <h1>
                    OnTimeParcel
                </h1>

                <h3>
                    OnTimeParcel Company History
                </h3>

                <p>
                    Founded in 2007 as a messenger company in the India, OnTimeParcel has grown by clearly focusing on the goal of enabling commerce around the globe. Today, OnTimeParcel is a global company with one of the most recognized and admired brands in the world. We have become the world's largest package delivery company and a leading global provider of specialized transportation and logistics services. Every day, we manage the flow of goods, funds, and information in more than 200 countries and territories worldwide.
                </p>

            </section>


            <!--Footer-->
            <footer>

                <p>Copyright<i class="fas fa-copyright copyFoot"></i>OnTimeParcel,Inc.All Rights Reserved.</p>

            </footer>

            <!--Footer-->
        </div>
    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>

