<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

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
                                <a class="nav-link" id="activePage" href="contactUs.aspx">Contact Us</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <!-- Navigation Bar -->
            </header>
            <!-- Heading -->

            <section style="margin:0;padding:0;margin-top:10%;">

                    <asp:GridView ID="GridView1" style="margin-left:10%;" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1100px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="brBranchCity" HeaderText="Branch City" SortExpression="brBranchCity" />
                            <asp:BoundField DataField="brBranchName" HeaderText="Branch Name" SortExpression="brBranchName" />
                            <asp:BoundField DataField="brBranchLocation" HeaderText="Branch Location" SortExpression="brBranchLocation" />
                            <asp:BoundField DataField="brBranchAddress" HeaderText="Branch Address" SortExpression="brBranchAddress" />
                            <asp:BoundField DataField="brBranchPincode" HeaderText="Branch Pincode" SortExpression="brBranchPincode" />
                            <asp:BoundField DataField="brMngName" HeaderText="Manager Name" SortExpression="brMngName" />
                            <asp:BoundField DataField="brMngEmail" HeaderText="Mannger Email" SortExpression="brMngEmail" />
                            <asp:BoundField DataField="brMngMobile" HeaderText="Manager Mobile" SortExpression="brMngMobile" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>

                     </section>


            <!--Footer-->
            <footer id="signInFoot">

                <p>Copyright<i class="fas fa-copyright copyFoot"></i>OnTimeParcel,Inc.All Rights Reserved.</p>

            </footer>

            <!--Footer-->

        </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PTS_DatabaseConnectionString1 %>" SelectCommand="SELECT [brBranchCity], [brBranchName], [brBranchLocation], [brBranchAddress], [brBranchPincode], [brMngName], [brMngEmail], [brMngMobile] FROM [branch]"></asp:SqlDataSource>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
