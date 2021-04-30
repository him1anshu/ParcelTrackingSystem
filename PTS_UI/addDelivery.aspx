<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addDelivery.aspx.cs" Inherits="addDelivery" %>

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
    <title>Add Delivery</title>
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
                    <a href="addDelivery.aspx" id="activePage"><i class="fas fa-eye dashIcon"></i>Add Delivery</a>
                    <a href="viewDelivery.aspx" ><i class="fas fa-eye dashIcon"></i>View Delivery</a>
                    <a href="addDispatch.aspx" ><i class="fas fa-eye dashIcon"></i>Add Dispatch</a>
                    <a href="viewDispatch.aspx" ><i class="fas fa-eye dashIcon"></i>View Dispatch</a>
                    <a href="addReceiver.aspx" ><i class="fas fa-eye dashIcon"></i>Add Receiver</a>
                    <a href="viewReceiver.aspx" ><i class="fas fa-eye dashIcon"></i>View Receiver</a>
                    <a href="viewServices.aspx" ><i class="fas fa-eye dashIcon"></i>View Services</a>
                    <a href="viewFeedback.aspx" ><i class="fas fa-eye dashIcon"></i>Feedback</a>
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
                        <h1 class="display-4">ADD DELIVERY</h1>
                        <div class="addCenter">

                            <!--Delivery Id-->

                            <div class="form-group">
                                <label>Track Id</label>
                                <asp:TextBox ID="txtTrckId" runat="server" Class="form-control" placeholder="Enter Track Id..." ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtTrckId" Display="Dynamic" ErrorMessage="Track Id Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Source Branch Id</label>
                                <asp:TextBox ID="txtDelSrcBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDelSrcBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Source Branch Name</label>
                                <asp:TextBox ID="txtDelSrcBrName" runat="server" Class="form-control" placeholder="Enter Branch Name..." ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDelSrcBrName" Display="Dynamic" ErrorMessage="Branch Name Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                           <%-- <div class="form-group">
                                <label>Employee Id</label>
                                <asp:TextBox ID="txtDelEmpId" runat="server" Class="form-control" placeholder="Enter Employee Id..."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDelEmpId" Display="Dynamic" ErrorMessage="Employee Id Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Employee Name</label>
                                <asp:TextBox ID="txtDelEmpName" runat="server" Class="form-control" placeholder="Enter Employee Name..."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDelEmpName" Display="Dynamic" ErrorMessage="Employee Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>--%>

                            <div class="form-group">
                                <label>Date Of Delivery</label>
                                <asp:TextBox ID="txtDelDateOfDel" runat="server" type="datetime-local" Class="form-control" ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDelDateOfDel" Display="Dynamic" ErrorMessage="Date Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Current Branch Id</label>
                                <asp:TextBox ID="txtCrBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCrBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Next Branch Id</label>
                                <asp:TextBox ID="txtNxtBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNxtBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Date Of Receive</label>
                                <asp:TextBox ID="txtDelDateOfRec" runat="server" type="datetime-local" Class="form-control" ValidationGroup="deliveryValidation"></asp:TextBox>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDelDateOfRec" Display="Dynamic" ErrorMessage="Date Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>--%>
                            </div>

                            <div class="form-group">
                                <label>Destination Branch Id</label>
                                <asp:TextBox ID="txtDelDestBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtDelDestBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Destination Branch Name</label>
                                <asp:TextBox ID="txtDelDestBrName" runat="server" Class="form-control" placeholder="Enter Branch Name..." ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtDelDestBrName" Display="Dynamic" ErrorMessage="Branch Name Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Expected Date Of Delivery</label>
                                <asp:TextBox ID="txtExpDelDateOfDel" runat="server" type="datetime-local" Class="form-control" ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtExpDelDateOfDel" Display="Dynamic" ErrorMessage="Date Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Delivery Current Location</label>
                                <asp:TextBox ID="txtDelCrLoc" runat="server" Class="form-control" Rows="3" placeholder="Enter Current Location..." TextMode="MultiLine" ValidationGroup="deliveryValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtDelCrLoc" Display="Dynamic" ErrorMessage="Current Location Required" ForeColor="Red" ValidationGroup="deliveryValidation"></asp:RequiredFieldValidator>
                            </div>

                            <!--Delivery Status-->

                            <div class="form-group">
                                <asp:Button ID="btnConsSubmit" runat="server" class="btn btn-outline-info" Text="Submit" OnClick="btnConsSubmit_Click" ValidationGroup="deliveryValidation"/>
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
