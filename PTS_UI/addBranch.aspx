<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addBranch.aspx.cs" Inherits="addBranch" %>

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

    <title>Add Branch</title>
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
                    <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server">Sign Out</asp:LinkButton>
                    <li><a href="#">Profile</a></li>
                </ul>
            </nav>

            <section>

                <div id="admpSideMenu" class="admpSideNav">
                    <a href="#" class="btnClose" onclick="closeSideMenu()">&times;</a>
                    <a href="adminPanel.aspx" ><i class="fas fa-power-off dashIcon"></i>Dashboard</a>
                    
                    <a href="addManager.aspx" ><i class="fas fa-cog dashIcon"></i>Add Manager</a>
                    <a href="viewManager.aspx" ><i class="fas fa-eye dashIcon"></i>View Manager</a>
                 
                    <a href="addBranch.aspx" id="activePage"><i class="fas fa-cog dashIcon"></i>Add Branch</a>
                    <a href="viewBranch.aspx" ><i class="fas fa-eye dashIcon"></i>View Branch</a>
                    
                    <a href="addServices.aspx" ><i class="fas fa-cog dashIcon"></i>Add Services</a>
                    <a href="viewServices.aspx" ><i class="fas fa-eye dashIcon"></i>View Services</a>
                    <a href="viewEmployee.aspx" ><i class="fas fa-eye dashIcon"></i>View Employee</a>
                    <a href="viewConsignment.aspx" ><i class="fas fa-eye dashIcon"></i>Consignment</a>
                    <a href="viewDelivery.aspx" ><i class="fas fa-eye dashIcon"></i>Delivery</a>
                    <a href="viewDispatch.aspx" ><i class="fas fa-eye dashIcon"></i>Dispatch</a>
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
                        <h1 class="display-4">ADD BRANCH</h1>
                        <div class="addCenter">
                            <!--Branch Id-->

                            <div class="form-group">
                                <label>Branch Name</label>
                                <asp:TextBox ID="txtBrName" runat="server" Class="form-control" placeholder="Enter Branch Name..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBrName" Display="Dynamic" ErrorMessage="Branch Name Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            
                            <div class="form-group">
                                <label>Branch City</label>
                                <asp:TextBox ID="txtBrCity" runat="server" Class="form-control" placeholder="Enter Branch City..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtBrCity" Display="Dynamic" ErrorMessage="Branch City Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Branch Location</label>
                                <asp:TextBox ID="txtBrLoc" runat="server" Class="form-control" placeholder="Enter Branch Location..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBrLoc" Display="Dynamic" ErrorMessage="Branch Location Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Branch Address</label>
                                <asp:TextBox ID="txtBrAddress" runat="server" Class="form-control" Rows="3" placeholder="Enter Address..." TextMode="MultiLine" ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBrAddress" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Branch Pincode</label>
                                <asp:TextBox ID="txtBrPin" runat="server" Class="form-control" placeholder="Enter Branch Pincode..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBrPin" Display="Dynamic" ErrorMessage="Pincode must be of length 6 and should contain digits only" ForeColor="Red" ValidationExpression="\d{6}" ValidationGroup="branchValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Branch Pincode Required" ControlToValidate="txtBrPin" Display="Dynamic" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            <!--Manager Id-->

                            <div class="form-group">
                                <label>Manager Id</label>
                                <asp:TextBox ID="txtMngId" runat="server" Class="form-control" placeholder="Enter Manager Id..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtMngId" Display="Dynamic" ErrorMessage="Manager Id Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Manager Name</label>
                                <asp:TextBox ID="txtMngName" runat="server" Class="form-control" placeholder="Enter Manager Name..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMngName" Display="Dynamic" ErrorMessage="Manager Name Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Manager Password</label>
                                <asp:TextBox ID="txtMngPassword" runat="server" Class="form-control" type="password" placeholder="Enter Password..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMngPassword" Display="Dynamic" ErrorMessage="Password must be of length 8-20 and must contains at least one one lower case letter, one upper case letter, one digit and one special character " ForeColor="Red" ValidationExpression="^.*(?=.{8,20})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*().,]).*$" ValidationGroup="branchValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMngPassword" Display="Dynamic" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Confirm Password</label><asp:TextBox ID="txtMngPassword2" runat="server" Class="form-control" type="password" placeholder="Re-enter Password..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtMngPassword" ControlToValidate="txtMngPassword2" Display="Dynamic" ErrorMessage="Password does not match" ForeColor="Red" ValidationGroup="branchValidation"></asp:CompareValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMngPassword2" Display="Dynamic" ErrorMessage="Field Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Manager Email</label>
                                <asp:TextBox ID="txtMngEmail" runat="server" Class="form-control" type="email" placeholder="Enter Email..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Email Required" ControlToValidate="txtMngEmail" Display="Dynamic" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Manager Mobile No.</label>
                                <asp:TextBox ID="txtMngMobile" runat="server" Class="form-control" placeholder="Enter Mobile Number..." ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMngMobile" Display="Dynamic" ErrorMessage="Mobile number must be of length 10 and should contain digits only" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="branchValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="txtMngMobile" Display="Dynamic" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Manager Address</label>
                                <asp:TextBox ID="txtMngAddress" runat="server" Class="form-control" Rows="3" placeholder="Enter Address..." TextMode="MultiLine" ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtMngAddress" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Manager Salary</label>
                                <asp:TextBox ID="txtMngSal" runat="server" Class="form-control" placeholder="Enter Salary..."></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Field Required" ControlToValidate="txtMngSal" Display="Dynamic" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtMngSal" Display="Dynamic" ErrorMessage="Salary should be from 50000 and 200000" ForeColor="Red" MaximumValue="200000" MinimumValue="50000" Type="Currency" ValidationGroup="branchValidation"></asp:RangeValidator>
                            </div>

                            <div class="form-group">
                                <label>Date Of Joining</label>
                                <asp:TextBox ID="txtMngDojoin" runat="server" type="datetime-local" Class="form-control" ValidationGroup="branchValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtMngDojoin" Display="Dynamic" ErrorMessage="Date Required" ForeColor="Red" ValidationGroup="branchValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <asp:Button ID="btnConsSubmit" runat="server" class="btn btn-outline-info" Text="Submit" OnClick="btnConsSubmit_Click" ValidationGroup="branchValidation" />
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
