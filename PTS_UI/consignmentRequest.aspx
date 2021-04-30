<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consignmentRequest.aspx.cs" Inherits="consignmentRequest" %>

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
    <link href="css/panel.css" rel="stylesheet" />

    <title>Add Consignment</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <nav class="admpNavbar">
                <span class="admpOpenSide">
                    <a href="#" onclick="openSideMenu()">
                        <svg width="30" height="30">
                            <path d="M0,5 30,5" stroke="#fff" stroke-width="5" />
                            <path d="M0,14 30,14" stroke="#fff" stroke-width="5" />
                            <path d="M0,23 30,23" stroke="#fff" stroke-width="5" />
                        </svg>
                    </a>
                </span>

                <ul class="admpNavbarNav">
                    <%--<li><a href="#">Sign Out</a></li>--%>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign Out</asp:LinkButton>
                    <li><a href="#">Profile</a></li>
                </ul>
            </nav>

            <section>

               <div id="admpSideMenu" class="admpSideNav">
                    <a href="#" class="btnClose" onclick="closeSideMenu()">&times;</a>
                    <a href="userPanel.aspx"  ><i class="fas fa-power-off dashIcon"></i>Dashboard</a>
                    <a href="consignmentRequest.aspx" id="activePage" ><i class="fas fa-cog dashIcon"></i>Add Consignment</a>
                    <a href="viewConsignment.aspx" ><i class="fas fa-eye dashIcon"></i>View Consignment</a>
                    <a href="tracking.aspx"><i class="fas fa-eye dashIcon"></i>Tracking</a>
                    <a href="calculateCost.aspx" ><i class="fas fa-cog dashIcon"></i>Calculate Cost</a>
                    <a href="locationFinder.aspx"><i class="fas fa-eye dashIcon"></i>Location Finder</a>
                    <a href="viewFeedback.aspx"><i class="fas fa-eye dashIcon"></i>Feedback</a>
                    <a href="contactUs.aspx"><i class="fas fa-eye dashIcon"></i>Contact Us</a>
             
                </div>

                <script>
                    function openSideMenu() {
                        document.getElementById('admpSideMenu').style.width = '250px';
                        document.getElementById('admpMain').style.marginLeft = '250px';
                    }

                    function closeSideMenu() {
                        document.getElementById('admpSideMenu').style.width = '0';
                        document.getElementById('admpMain').style.marginLeft = '0';
                    }

                </script>

                <div id="admpMain">

                    <div class="addHead">
                        <h1 class="display-4">ADD CONSIGNMENT</h1>
                        <div class="addCenter">

                            <!--Consignment Id-->
                            <!--Consignment Track Id-->

                            <div class="form-group">
                                <label>Shipper Name</label>
                                <asp:TextBox ID="txtShrName" runat="server" Class="form-control" placeholder="Enter Name..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtShrName" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Shipper Mobile No.</label>
                                <asp:TextBox ID="txtShrMobile" runat="server" Class="form-control" placeholder="Enter Mobile Number..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtShrMobile" Display="Dynamic" ErrorMessage="Mobile number must be of length 10 and should contain digits only" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="consvalidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="txtShrMobile" Display="Dynamic" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                             <div class="form-group">
                             <label>Shipper Email</label>
                             <asp:TextBox ID="txtShrEmail" runat="server" Class="form-control" type="email" placeholder="Enter Email..." ValidationGroup="consvalidation"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Email Required" ControlToValidate="txtShrEmail" Display="Dynamic" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                             </div>

                            <div class="form-group">
                                <label>Shipper Address</label>
                                <asp:TextBox ID="txtShrAddress" runat="server" Class="form-control" Rows="3" placeholder="Enter Address..." TextMode="MultiLine" ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtShrAddress" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Source Branch Id</label>
                                <asp:TextBox ID="txtSrcBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtSrcBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>
                       

                            <div class="form-group">
                                <label>Source Branch Name</label>
                                <asp:TextBox ID="txtSrcBrName" runat="server" Class="form-control" placeholder="Enter Branch Name..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtSrcBrName" Display="Dynamic" ErrorMessage="Branch Name Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                        

                            <div class="form-group">
                                <label>Source Branch City</label>
                                <asp:TextBox ID="txtSrcBrCity" runat="server" Class="form-control" placeholder="Enter Branch City..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtSrcBrCity" Display="Dynamic" ErrorMessage="Branch Location Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                             <div class="form-group">
                                <label>Destination Branch Id</label>
                                <asp:TextBox ID="txtDestBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtDestBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>
                       

                            <div class="form-group">
                                <label>Destination Branch Name</label>
                                <asp:TextBox ID="txtDestBrName" runat="server" Class="form-control" placeholder="Enter Branch Name..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtDestBrName" Display="Dynamic" ErrorMessage="Branch Name Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                        

                            <div class="form-group">
                                <label>Destination Branch City</label>
                                <asp:TextBox ID="txtDestBrCity" runat="server" Class="form-control" placeholder="Enter Branch City..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtDestBrCity" Display="Dynamic" ErrorMessage="Branch Location Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>


                            <div class="form-group">
                                <label>Receiver Name</label>
                                <asp:TextBox ID="txtRecName" runat="server" Class="form-control" placeholder="Enter Name..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtRecName" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Receiver Mobile No.</label>
                                <asp:TextBox ID="txtRecMobile" runat="server" Class="form-control" placeholder="Enter Mobile Number..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtRecMobile" Display="Dynamic" ErrorMessage="Mobile number must be of length 10 and should contain digits only" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="consvalidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="txtRecMobile" Display="Dynamic" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                             <div class="form-group">
                             <label>Receiver Email</label>
                             <asp:TextBox ID="txtRecEmail" runat="server" Class="form-control" type="email" placeholder="Enter Email..." ValidationGroup="consvalidation"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Email Required" ControlToValidate="txtRecEmail" Display="Dynamic" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                             </div>

                            <div class="form-group">
                                <label>Receiver Address</label>
                                <asp:TextBox ID="txtRecAddress" runat="server" Class="form-control" Rows="3" placeholder="Enter Address..." TextMode="MultiLine" ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtRecAddress" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Date Of Booking</label>
                                <asp:TextBox ID="txtDobook" runat="server" type="datetime-local" Class="form-control" ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDobook" Display="Dynamic" ErrorMessage="Date Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Material Description</label>
                                <asp:TextBox ID="txtMtrDesc" runat="server" Class="form-control" Rows="3" placeholder="Material Description..." TextMode="MultiLine" ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMtrDesc" Display="Dynamic" ErrorMessage="Material Description Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>


                            <div class="form-group">
                                <label>Total Items</label>
                                <asp:TextBox ID="txtTotItems" runat="server" Class="form-control" placeholder="Total Items..." ValidationGroup="consvalidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTotItems" Display="Dynamic" ErrorMessage="Total Items Required" ForeColor="Red" ValidationGroup="consvalidation"></asp:RequiredFieldValidator>
                            </div>


                            <div class="form-group">
                                <label>Total Weight (In ounce)</label>
                                <asp:TextBox ID="txtTotWeight" runat="server" Class="form-control" placeholder="Enter Total Weight.." ValidationGroup="consvalidation"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTotWeight" Display="Dynamic" ErrorMessage="Total Weight Required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                            <div class="form-group">
                                <label>Service Type</label>
                                <asp:DropDownList ID="drpSrType" class="form-control" runat="server" ValidationGroup="consvalidation">
                                    </asp:DropDownList>
                            </div>

                             <div class="form-group">
                                <label>Total Distance (In miles)</label>
                                <asp:TextBox ID="txtTotDist" runat="server" Class="form-control"  ReadOnly="True" ValidationGroup="consvalidation"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtTotDist" Display="Dynamic" ErrorMessage="Total Distance Required" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="btnCalcDist" runat="server" class="btn btn-outline-info" Text="Calculate Distance & Cost" ValidationGroup="consvalidation" OnClick="btnCalcDist_Click"/>
                            </div>

                            <div class="form-group">
                                <label>Shipping Charge (In rupees)</label>
                                <asp:TextBox ID="txtShpCharge" runat="server" Class="form-control" ValidationGroup="consvalidation" ReadOnly="True"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="btnConsSubmit" runat="server" class="btn btn-outline-info" Text="Submit" ValidationGroup="consvalidation" OnClick="btnConsSubmit_Click" />
                            </div>
                        </div>
                    </div>
                    

                    <!--Footer-->
                    <footer>

                        <p>Copyright<i class="fas fa-copyright copyFoot"></i>OnTimeParcel,Inc.All Rights Reserved.</p>

                    </footer>

                    <!--Footer-->
                </div>
            </section>
        </div>
    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>

