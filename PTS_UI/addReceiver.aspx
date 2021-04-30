<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addReceiver.aspx.cs" Inherits="addReceiver" %>

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
    <link href="css/panel.css" rel="stylesheet" />

    <title>Add Receiver</title>
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
                    <a href="employeePanel.aspx" ><i class="fas fa-power-off dashIcon"></i>Dashboard</a>
                    <a href="addConsignment.aspx" ><i class="fas fa-eye dashIcon"></i>Add Consignment</a>
                    <a href="viewConsignment.aspx" ><i class="fas fa-eye dashIcon"></i>View Consignment</a>
                    <a href="addDelivery.aspx" ><i class="fas fa-eye dashIcon"></i>Add Delivery</a>
                    <a href="viewDelivery.aspx" ><i class="fas fa-eye dashIcon"></i>View Delivery</a>
                    <a href="addDispatch.aspx" ><i class="fas fa-eye dashIcon"></i>Add Dispatch</a>
                    <a href="viewDispatch.aspx" ><i class="fas fa-eye dashIcon"></i>View Dispatch</a>
                    <a href="addReceiver.aspx" id="activePage"><i class="fas fa-eye dashIcon"></i>Add Receiver</a>
                    <a href="viewReceiver.aspx" ><i class="fas fa-eye dashIcon"></i>View Receiver</a>
                    <a href="viewServices.aspx"><i class="fas fa-eye dashIcon"></i>View Services</a>
                    <a href="viewFeedback.aspx"><i class="fas fa-eye dashIcon"></i>Feedback</a>
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
                        <h1 class="display-4">ADD RECEIVER</h1>
                        <div class="addCenter">


                            <!--Receiver Id-->

                            <div class="form-group">
                                <label>Tracking Id</label>
                                <asp:TextBox ID="txtRecTrckId" runat="server" Class="form-control" placeholder="Enter Track Id..."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRecTrckId" Display="Dynamic" ErrorMessage="Track Id Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                              <div class="form-group">
                                <asp:Button ID="btnLoad" runat="server" class="btn btn-outline-info" Text="Load" OnClick="btnLoad_Click"/>
                            </div>

                            <div class="form-group">
                                <label>Receiver Name</label>
                                <asp:TextBox ID="txtRecRecName" runat="server" Class="form-control" placeholder="Enter Name..." ValidationGroup="recValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRecRecName" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="recValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Receiver Mobile No.</label>
                                <asp:TextBox ID="txtRecRecMobile" runat="server" Class="form-control" placeholder="Enter Mobile Number..." ValidationGroup="recValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtRecRecMobile" Display="Dynamic" ErrorMessage="Mobile number must be of length 10 and should contain digits only" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="recValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="txtRecRecMobile" Display="Dynamic" ForeColor="Red" ValidationGroup="recValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Source Branch Id</label>
                                <asp:TextBox ID="txtRecSrcBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="recValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRecSrcBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="recValidation"></asp:RequiredFieldValidator>
                            </div>

                             <div class="form-group">
                                <label>Destination Branch Id</label>
                                <asp:TextBox ID="txtRecDestBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="recValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtRecDestBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="recValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Total Items</label>
                                <asp:TextBox ID="txtRecTotItems" runat="server" Class="form-control" placeholder="Total Items..." ValidationGroup="recValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRecTotItems" Display="Dynamic" ErrorMessage="Total Items Required" ForeColor="Red" ValidationGroup="recValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Material Description</label>
                                <asp:TextBox ID="txtRecMtrDesc" runat="server" Class="form-control" Rows="3" placeholder="Material Description..." TextMode="MultiLine" ValidationGroup="recValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtRecMtrDesc" Display="Dynamic" ErrorMessage="Material Description Required" ForeColor="Red" ValidationGroup="recValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Date Of Receive</label>
                                <asp:TextBox ID="txtRecDobook" runat="server" type="datetime-local" Class="form-control" ValidationGroup="recValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRecDobook" Display="Dynamic" ErrorMessage="Date Required" ForeColor="Red" ValidationGroup="recValidation"></asp:RequiredFieldValidator>
                            </div>

                             <div class="form-group">
                                <label>Status</label>
                                <asp:TextBox ID="txtRecStatus" runat="server" Class="form-control" ValidationGroup="recValidation"></asp:TextBox>
                                
                            </div>

                            <div class="form-group">
                                <asp:Button ID="btnConsSubmit" runat="server" class="btn btn-outline-info" Text="Submit" OnClick="btnConsSubmit_click" ValidationGroup="recValidation"/>
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
</body>
</html>
