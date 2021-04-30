<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

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

    <title>Sign In</title>
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
                                <a class="nav-link" href="Home.aspx">Home </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="activePage" href="SignIn.aspx">Sign In</a>
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
                                <a class="nav-link" href="ContactUs.aspx">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <!-- Navigation Bar -->
            </header>
            <!-- Heading -->

            <section>


                <div id="center" class="  border border-secondary">

                    <h1 class="display-4 bg-secondary text-center text-light mb-4">SIGN IN</h1>

                    <div class="form-group">
                        <label>Email</label>
                        <asp:TextBox ID="txtUsrEmail" runat="server" Class="form-control" type="email" placeholder="Enter Email..."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ControlToValidate="txtUsrEmail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="txtUsrPassword" runat="server" Class="form-control" type="password" placeholder="Enter Password..."></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsrPassword" Display="Dynamic" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>

                    <div class="form-group">
                        <label>User Type</label>
                        <asp:DropDownList ID="drpUsrType" class="form-control" runat="server">
                            <asp:ListItem Value="Admin">Admin</asp:ListItem>
                            <asp:ListItem Value="Manager">Manager</asp:ListItem>
                            <asp:ListItem Value="Employee">Employee</asp:ListItem>
                            <asp:ListItem Value="User">User</asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <div class="form-group">
                        <asp:Button ID="btnSignIn" runat="server" class="btn btn-outline-info" Text="Sign In" OnClick="btnSignIn_Click" />
                    </div>
                    <br />
                    <asp:Label ID="Label1" Visible="false" Font-Bold="true" ForeColor="Red" runat="server" Text="Incorrect user name or password "></asp:Label>
                </div>

            </section>


            <!--Footer-->
            <footer id="signInFoot">

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
