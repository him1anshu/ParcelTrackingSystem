<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calculateCost.aspx.cs" Inherits="calculatingCost" %>

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

    <title>Calculating Cost</title>
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
                                <a class="nav-link" id="activePage" href="calculateCost.aspx">Calculate Cost</a>
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
            <section class="trckSec">
                <div class="addHead">
                    <h1 class="display-4">Calculate Cost</h1>
                    <div class="addCenter">

                       <%-- <div class="form-group">
                            <label>Source City</label>
                            <asp:TextBox ID="txtSrCityName" runat="server" Class="form-control" placeholder="Enter City..."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSrCityName" Display="Dynamic" ErrorMessage="City Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>--%>

                            <div class="form-group">
                                <label>Source City</label>
                                <asp:DropDownList ID="drpSrcCity" class="form-control" runat="server" AutoPostBack="true" EnableViewState="true" ValidationGroup="consValid">
                                    </asp:DropDownList>
                            </div>

                        <div class="form-group">
                            <label>Source Pincode</label>
                            <asp:TextBox ID="txtSrCityPin" runat="server" Class="form-control" placeholder="Enter Pincode..."></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSrCityPin" Display="Dynamic" ErrorMessage="Pincode must be of length 6 and should contain digits only" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Pincode Required" ControlToValidate="txtSrCityPin" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <%--<div class="form-group">
                            <label>Destination City</label>
                            <asp:TextBox ID="txtDsCityName" runat="server" Class="form-control" placeholder="Enter City..."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDsCityName" Display="Dynamic" ErrorMessage="City Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>--%>

                        <div class="form-group">
                                <label>Destination City</label>
                                <asp:DropDownList ID="drpDestCity" class="form-control" runat="server" AutoPostBack="true" EnableViewState="true" ValidationGroup="consValid">
                                   <asp:ListItem>hello</asp:ListItem>
                                     </asp:DropDownList>
                            </div>

                        <div class="form-group">
                            <label>Destination Pincode</label>
                            <asp:TextBox ID="txtDsCityPin" runat="server" Class="form-control" placeholder="Enter Pincode..."></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtDsCityPin" Display="Dynamic" ErrorMessage="Pincode must be of length 6 and should contain digits only" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Pincode Required" ControlToValidate="txtDsCityPin" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                         <div class="form-group">
                                <label>Total Weight (In ounce)</label>
                                <asp:TextBox ID="txtTotWeight" runat="server" Class="form-control" placeholder="Enter Total Weight.."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTotWeight" Display="Dynamic" ErrorMessage="Total Weight Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Service Type</label>
                                <asp:DropDownList ID="drpSrType" class="form-control" runat="server">
                                </asp:DropDownList>
                            </div>

                        <div class="form-group trckBtnCnt">
                            <asp:LinkButton ID="btnSubmitTrck" runat="server" class="btn btn-outline-primary" OnClick="btn_Click">Calculate Cost</asp:LinkButton>
                        </div>

                         <div class="form-group">
                             <asp:Label ID="Label2" runat="server" Text="Shipping Charge (In Rupees)" Visible="false"></asp:Label>
                               <asp:TextBox ID="txtShpCharge" runat="server" Class="form-control" ReadOnly="true" Visible="false"></asp:TextBox>
                            </div>

                    </div>
                </div>
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
