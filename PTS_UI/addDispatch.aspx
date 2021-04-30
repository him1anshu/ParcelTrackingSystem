<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addDispatch.aspx.cs" Inherits="addDispatch" %>

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

    <title>Add Dispatch</title>
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
                   <%-- <li><a href="#">Sign Out</a></li>--%>
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
                    <a href="addDispatch.aspx" id="activePage"><i class="fas fa-eye dashIcon"></i>Add Dispatch</a>
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
                        <h1 class="display-4">ADD DISPATCH</h1>
                        <div class="addCenter">

                            <!--Dispatch Id-->

                            <div class="form-group">
                                <label>Tracking Id</label>
                                <asp:TextBox ID="txtTrckId" runat="server" Class="form-control" placeholder="Enter Tracking Id..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtTrckId" Display="Dynamic" ErrorMessage="Tracking Id Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                             <div class="form-group">
                                <asp:Button ID="btnLoad" runat="server" class="btn btn-outline-info" Text="Load" OnClick="btnLoad_Click" />
                            </div>

                            <div class="form-group">
                                <label>Employee Id</label>
                                <asp:TextBox ID="txtDisEmpId" runat="server" Class="form-control" placeholder="Enter Employee Id..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDisEmpId" Display="Dynamic" ErrorMessage="Employee Id Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Employee Name</label>
                                <asp:TextBox ID="txtDisEmpName" runat="server" Class="form-control" placeholder="Enter Employee Name..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDisEmpName" Display="Dynamic" ErrorMessage="Employee Name Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Employee Mobile </label>
                                <asp:TextBox ID="txtDisEmpMobile" runat="server" Class="form-control" placeholder="Enter Mobile Number..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtDisEmpMobile" Display="Dynamic" ErrorMessage="Mobile number must be of length 10 and should contain digits only" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="dispValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="txtDisShrMobile" Display="Dynamic" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Branch Id</label>
                                <asp:TextBox ID="txtDisBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDisBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Branch Name</label>
                                <asp:TextBox ID="txtDisBrName" runat="server" Class="form-control" placeholder="Enter Branch Name..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDisBrName" Display="Dynamic" ErrorMessage="Branch Name Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Shipper Name</label>
                                <asp:TextBox ID="txtDisShrName" runat="server" Class="form-control" placeholder="Enter Name..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDisShrName" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                             <div class="form-group">
                                <label>Shipper Mail</label>
                                <asp:TextBox ID="txtDisShrMail" runat="server" Class="form-control" type="mail" placeholder="Enter Mail..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtDisShrMail" Display="Dynamic" ErrorMessage="Mail Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Shipper Mobile No.</label>
                                <asp:TextBox ID="txtDisShrMobile" runat="server" Class="form-control" placeholder="Enter Mobile Number..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDisShrMobile" Display="Dynamic" ErrorMessage="Mobile number must be of length 10 and should contain digits only" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="dispValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="txtDisShrMobile" Display="Dynamic" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Shipper Address</label>
                                <asp:TextBox ID="txtDisShrAddress" runat="server" Class="form-control" Rows="3" placeholder="Enter Address..." TextMode="MultiLine" ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDisShrAddress" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Receiver Name</label>
                                <asp:TextBox ID="txtDisRecName" runat="server" Class="form-control" placeholder="Enter Name..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDisRecName" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Receiver Mail</label>
                                <asp:TextBox ID="txtDisRecMail" runat="server" Class="form-control" type="mail" placeholder="Enter Mail..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtDisRecMail" Display="Dynamic" ErrorMessage="Mail Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Receiver Mobile No.</label>
                                <asp:TextBox ID="txtDisRecMobile" runat="server" Class="form-control" placeholder="Enter Mobile Number..." ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtDisRecMobile" Display="Dynamic" ErrorMessage="Mobile number must be of length 10 and should contain digits only" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="dispValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="txtDisRecMobile" Display="Dynamic" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Receiver Address</label>
                                <asp:TextBox ID="txtDisRecAddress" runat="server" Class="form-control" Rows="3" placeholder="Enter Address..." TextMode="MultiLine" ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtDisRecAddress" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Date Of Dispatch</label>
                                <asp:TextBox ID="txtDisDateOfDis" runat="server" type="datetime-local" Class="form-control" ValidationGroup="dispValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtDisDateOfDis" Display="Dynamic" ErrorMessage="Date Required" ForeColor="Red" ValidationGroup="dispValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Status</label>
                                <asp:TextBox ID="txtDisStatus" runat="server" Class="form-control" ValidationGroup="dispValidation"></asp:TextBox>
                            </div>
                            
                            <div class="form-group">
                                <asp:Button ID="btnConsSubmit" runat="server" class="btn btn-outline-info" Text="Submit" OnClick="btnConsSubmit_Click" ValidationGroup="dispValidation"/>
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
