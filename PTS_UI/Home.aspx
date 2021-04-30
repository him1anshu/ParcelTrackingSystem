<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="UI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
    <!--CSS -->
    <link href="css/StyleSheet.css" rel="stylesheet" />

    <title>Home</title>
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
                                <a class="nav-link " id="activePage" href="Home.aspx">Home</a>
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

            <!-- Section -->
            <section>

                <!--Carousel-->
                <div class="bd-example .col">
                    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                        <%--<ol class="carousel-indicators">
          <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        </ol>--%>
                        <div class="carousel-inner">
                            <%--<div class="carousel-item active">
            <img src="Images/homeImgSl3.jpg" class="d-block w-100" alt=""/>
            <div class="carousel-caption d-none d-md-block">
              <p><a class="btn btn-lg btn-outline-dark" href="#" role="button">About Us</a></p>
            </div>
          </div>--%>
                            <div class="carousel-item active">
                                <img src="Images/homeImgSl1.jpg" class="d-block w-100" alt="" />
                                <div class="carousel-caption d-none d-md-block">
                                    <p><a class="btn btn-lg btn-outline-success" href="aboutUs.aspx" role="button">About Us</a></p>

                                 

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!--Carousel-->

                <!--Feedback Form-->
                <h2 id="feedBack">Give your Valuable feedback here....</h2>
                <div id="feedbackForm">
                    <div class="form-group">
                        <label>Name</label>
                        <asp:TextBox ID="txtFeedName" runat="server" Class="form-control" placeholder="Enter Name..."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Required" ControlToValidate="txtFeedName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <asp:TextBox ID="txtFeedEmail" runat="server" type="email" Class="form-control" placeholder="Enter Email..."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Required" ControlToValidate="txtFeedEmail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <%--<div class="form-group">--%>
                    <div class="form-group">
                        <label>Mobile No.</label>
                        <asp:TextBox ID="txtFeedMobile" runat="server" Class="form-control" placeholder="Enter Mobile Number..."></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFeedMobile" Display="Dynamic" ErrorMessage="Mobile number must be of length 10 and should contain digits only" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="txtFeedMobile" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label>Feedback</label>
                        <asp:TextBox ID="txtFeedFeedback" runat="server" Class="form-control" Rows="5" placeholder="Write Feedback..." TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Feedback Required" ControlToValidate="txtFeedFeedback" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnSubmitFeed" runat="server" class="btn btn-outline-info" Text="Submit" OnClick="btnSubmitFeed_Click" />
                    </div>
                </div>

                <!--Feedback Form-->
            </section>

            <!--Section-->

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
