<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addEmployee.aspx.cs" Inherits="addEmployee" %>

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
    <title>Add Employee</title>
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
                    <a href="managerPanel.aspx" ><i class="fas fa-power-off dashIcon"></i>Dashboard</a>
                    <a href="addEmployee.aspx"  id="activePage"><i class="fas fa-cog dashIcon"></i>Add Employee</a>
                    <a href="viewEmployee.aspx" ><i class="fas fa-eye dashIcon"></i>View Employee</a>
                    <a href="viewServices.aspx" ><i class="fas fa-eye dashIcon"></i>View Services</a>
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
                        <h1 class="display-4">ADD EMPLOYEE</h1>
                        <div class="addCenter">
                            <!--Employee Id-->

                            <div class="form-group">
                                <label>Employee Name</label>
                                <asp:TextBox ID="txtEmpName" runat="server" Class="form-control" placeholder="Enter Employee Name..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmpName" Display="Dynamic" ErrorMessage="Employee Name Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Employee Password</label>
                                <asp:TextBox ID="txtEmpPassword" runat="server" Class="form-control" type="password" placeholder="Enter Password..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmpPassword" Display="Dynamic" ErrorMessage="Password must be of length 8-20 and must contains at least one one lower case letter, one upper case letter, one digit and one special character " ForeColor="Red" ValidationExpression="^.*(?=.{8,20})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*().,]).*$" ValidationGroup="addEmployeeValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmpPassword" Display="Dynamic" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Confirm Password</label><asp:TextBox ID="txtEmpPassword2" runat="server" Class="form-control" type="password" placeholder="Re-enter Password..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmpPassword" ControlToValidate="txtEmpPassword2" Display="Dynamic" ErrorMessage="Password does not match" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:CompareValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmpPassword2" Display="Dynamic" ErrorMessage="Field Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Employee Email</label>
                                <asp:TextBox ID="txtEmpEmail" runat="server" Class="form-control" type="email" placeholder="Enter Email..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email Required" ControlToValidate="txtEmpEmail" Display="Dynamic" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Employee Mobile No.</label>
                                <asp:TextBox ID="txtEmpMobile" runat="server" Class="form-control" placeholder="Enter Mobile Number..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmpMobile" Display="Dynamic" ErrorMessage="Mobile number must be of length 10 and should contain digits only" ForeColor="Red" ValidationExpression="\d{10}" ValidationGroup="addEmployeeValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mobile Number Required" ControlToValidate="txtEmpMobile" Display="Dynamic" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label>Employee Address</label>
                                <asp:TextBox ID="txtEmpAddress" runat="server" Class="form-control" Rows="3" placeholder="Enter Address..." TextMode="MultiLine" ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmpAddress" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Employee Role</label>
                                <asp:TextBox ID="txtEmpRole" runat="server" Class="form-control" placeholder="Enter Employee Role..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtEmpRole" Display="Dynamic" ErrorMessage="Employee Role Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Employee Salary</label>
                                <asp:TextBox ID="txtEmpSal" runat="server" Class="form-control" placeholder="Enter Salary..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field Required" ControlToValidate="txtEmpSal" Display="Dynamic" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEmpSal" Display="Dynamic" ErrorMessage="Salary should be from 10000 and 50000" ForeColor="Red" MaximumValue="50000" MinimumValue="10000" Type="Currency" ValidationGroup="addEmployeeValidation"></asp:RangeValidator>
                            </div>

                            <div class="form-group">
                                <label>Date Of Joining</label>
                                <asp:TextBox ID="txtEmpDojoin" runat="server" type="datetime-local" Class="form-control" ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmpDojoin" Display="Dynamic" ErrorMessage="Date Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>


                            <div class="form-group">
                                <label>Branch Id</label>
                                <asp:TextBox ID="txtBrId" runat="server" Class="form-control" placeholder="Enter Branch Id..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtBrId" Display="Dynamic" ErrorMessage="Branch Id Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Branch Name</label>
                                <asp:TextBox ID="txtBrName" runat="server" Class="form-control" placeholder="Enter Branch Name..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBrName" Display="Dynamic" ErrorMessage="Branch Name Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>


                            <div class="form-group">
                                <label>Branch Location</label>
                                <asp:TextBox ID="txtBrLoc" runat="server" Class="form-control" placeholder="Enter Branch Location..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtBrLoc" Display="Dynamic" ErrorMessage="Branch Location Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>

                             <div class="form-group">
                                <label>Branch City</label>
                                <asp:TextBox ID="txtBrCity" runat="server" Class="form-control" placeholder="Enter Branch City..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtBrCity" Display="Dynamic" ErrorMessage="Branch City Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>


                            <div class="form-group">
                                <label>Branch Address</label>
                                <asp:TextBox ID="txtBrAddress" runat="server" Class="form-control" Rows="3" placeholder="Enter Address..." TextMode="MultiLine" ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtBrAddress" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group">
                                <label>Branch Pincode</label>
                                <asp:TextBox ID="txtBrPin" runat="server" Class="form-control" placeholder="Enter Branch Pincode..." ValidationGroup="addEmployeeValidation"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtBrPin" Display="Dynamic" ErrorMessage="Pincode must be of length 6 and should contain digits only" ForeColor="Red" ValidationExpression="\d{6}" ValidationGroup="addEmployeeValidation"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Branch Pincode Required" ControlToValidate="txtBrPin" Display="Dynamic" ForeColor="Red" ValidationGroup="addEmployeeValidation"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="btnConsSubmit" runat="server" class="btn btn-outline-info" Text="Submit" OnClick="btnConsSubmit_Click" ValidationGroup="addEmployeeValidation" />
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
