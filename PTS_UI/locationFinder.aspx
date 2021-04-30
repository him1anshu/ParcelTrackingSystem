<%@ Page Language="C#" AutoEventWireup="true" CodeFile="locationFinder.aspx.cs" Inherits="locationFinder" %>

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

    <title>Location Finder</title>
</head>
<body>
    <form id="form1" runat="server" >
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
                                <a class="nav-link" id="activePage" href="locationFinder.aspx">Location Finder</a>
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
                    <h1 class="display-4">Location Finder</h1>
                     <div class="addCenter">

                        

                        <h1>Search by Location</h1>
                        <br />
                        <div class="form-group">
                            <label>City</label>
                            <asp:TextBox ID="txtCityName" runat="server" Class="form-control" placeholder="Enter City..." ValidationGroup="cityAreaPin"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCityName" Display="Dynamic" ErrorMessage="City Required" ForeColor="Red" EnableClientScript="True" ValidationGroup="cityAreaPin"></asp:RequiredFieldValidator>
                       
                        </div>


                        <div class="form-group">
                            <label>Area</label>
                            <asp:TextBox ID="txtBrArea" runat="server" Class="form-control" placeholder="Enter Area..." ValidationGroup="cityAreaPin"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBrArea" Display="Dynamic" ErrorMessage="Area Required" ForeColor="Red" EnableClientScript="True" ValidationGroup="cityAreaPin"></asp:RequiredFieldValidator>
                       
                        </div>

                        <div class="form-group">
                            <label>Pincode</label>
                            <asp:TextBox ID="txtBrPin" runat="server" Class="form-control" placeholder="Enter Pincode..." ValidationGroup="cityAreaPin"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBrPin" Display="Dynamic" ErrorMessage="Pincode must be of length 6 and should contain digits only" ForeColor="Red" ValidationExpression="\d{6}" EnableClientScript="True" ValidationGroup="cityAreaPin"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Pincode Required" ControlToValidate="txtBrPin" Display="Dynamic" ForeColor="Red" EnableClientScript="True" ValidationGroup="cityAreaPin"></asp:RequiredFieldValidator>
                        <span id="spCityPincode" class="text-danger font-weight-bold"></span>
                        </div>

                        <div class="form-group trckBtnCnt">
                            <asp:LinkButton ID="btnSubmitLF" runat="server" class=" btnSubmitTrckC btn btn-outline-primary"  OnClick="btnSubmitLF_Click" ValidationGroup="cityAreaPin"><i class="fas fa-search"></i></asp:LinkButton>
                        </div>

                 

                    <hr class="border-bottom" />
                    <div class="addCenter">
                       
                        <h1>Search by City</h1>
                        <br />
                        <div class="form-group">
                            <label>City</label>
                            <asp:TextBox ID="txtCityNameLF" runat="server" Class="form-control" placeholder="Enter City..." ValidationGroup="onlyCity"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCityNameLF" Display="Dynamic" ErrorMessage="City Required" ForeColor="Red" ValidationGroup="onlyCity"></asp:RequiredFieldValidator>
                      
                        </div>

                        <div class="form-group trckBtnCnt">
                            <asp:LinkButton ID="btnSubmitLF1" runat="server" class="btnSubmitTrckC btn btn-outline-primary" OnClick="btnSubmitLF1_Click" ValidationGroup="onlyCity"><i class="fas fa-search"></i></asp:LinkButton>
                        </div>
                           
                    </div>
                       
                    <asp:Label ID="Label1" runat="server" Visible="false" ForeColor="Red"  Text="No branch found for this city"></asp:Label>
                </div>
                    </div>
            </section>

            <!--Section-->
                        
                <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" CellPadding="4" Visible="False" ForeColor="#333333" GridLines="None" Width="932px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="brBranchId" HeaderText="Branch Id" />
                            <asp:BoundField DataField="brBranchName" HeaderText="Branch Name" />
                            <asp:BoundField DataField="brBranchCity" HeaderText="Branch City" />
                            <asp:BoundField DataField="brBranchLocation" HeaderText="Branch Location" />
                            <asp:BoundField DataField="brBranchAddress" HeaderText="Branch Address" />
                            <asp:BoundField DataField="brBranchPincode" HeaderText="Branch Pincode" />
                            <asp:BoundField />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
            

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

