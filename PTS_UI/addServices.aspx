<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addServices.aspx.cs" Inherits="addServices" %>

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
    <title>Add Services</title>

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
                    <a href="adminPanel.aspx"><i class="fas fa-power-off dashIcon"></i>Dashboard</a>
                    
                    <a href="addManager.aspx"><i class="fas fa-cog dashIcon"></i>Add Manager</a>
                    <a href="viewManager.aspx" ><i class="fas fa-eye dashIcon"></i>View Manager</a>
                    
                    <a href="addBranch.aspx" ><i class="fas fa-cog dashIcon"></i>Add Branch</a>
                    <a href="viewBranch.aspx"><i class="fas fa-eye dashIcon"></i>View Branch</a>
                   
                    <a href="addServices.aspx"  id="activePage"><i class="fas fa-cog dashIcon"></i>Add Services</a>
                    <a href="viewServices.aspx" ><i class="fas fa-eye dashIcon"></i>View Services</a>
                    <a href="viewEmployee.aspx" ><i class="fas fa-eye dashIcon"></i>View Employee</a>
                    <a href="viewConsignment.aspx"><i class="fas fa-eye dashIcon"></i>Consignment</a>
                    <a href="viewDelivery.aspx" ><i class="fas fa-eye dashIcon"></i>Delivery</a>
                    <a href="viewDispatch.aspx"><i class="fas fa-eye dashIcon"></i>Dispatch</a>
                    <a href="viewReceiver.aspx" ><i class="fas fa-eye dashIcon"></i>Receiver</a>
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
                        <h1 class="display-4">ADD SERVICES</h1>
                        <div class="addCenter">
                            <!--Services Id-->

                            <div class="form-group">
                                <label>Service Type</label>
                                <asp:TextBox ID="txtSrType" runat="server" Class="form-control" placeholder="Enter Service Type..." ValidationGroup="serviceValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSrType" Display="Dynamic" ErrorMessage="Service Type Required" ForeColor="Red" ValidationGroup="serviceValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Cost(per ounce)</label>
                                <asp:TextBox ID="txtSrCosWe" runat="server" Class="form-control" placeholder="Enter Cost..." ValidationGroup="serviceValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSrCosWe" Display="Dynamic" ErrorMessage="Cost Required" ForeColor="Red" ValidationGroup="serviceValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Cost(per km)</label>
                                <asp:TextBox ID="txtSrCosDist" runat="server" Class="form-control" placeholder="Enter Branch Name..." ValidationGroup="serviceValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSrCosDist" Display="Dynamic" ErrorMessage="Cost Required" ForeColor="Red" ValidationGroup="serviceValidation"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnConsSubmit" runat="server" class="btn btn-outline-info" Text="Submit" OnClick="btnConsSubmit_Click" ValidationGroup="serviceValidation" />
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
