<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminPanel.aspx.cs" Inherits="Admin" %>

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

    <title>Admin Panel</title>
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
                    <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server">Sign Out</asp:LinkButton>
                    <li><a href="#">Profile</a></li>
                </ul>
            </nav>

            <section>
                <div id="admpSideMenu" class="admpSideNav">
                    <a href="#" class="btnClose" onclick="closeSideMenu()">&times;</a>
                    <a href="adminPanel.aspx"  id="activePage"><i class="fas fa-power-off dashIcon"></i>Dashboard</a>
                    
                    <a href="addManager.aspx" ><i class="fas fa-cog dashIcon"></i>Add Manager</a>
                    <a href="viewManager.aspx" ><i class="fas fa-eye dashIcon"></i>View Manager</a>
                  
                    <a href="addBranch.aspx" ><i class="fas fa-cog dashIcon"></i>Add Branch</a>
                    <a href="viewBranch.aspx" ><i class="fas fa-eye dashIcon"></i>View Branch</a>
                    
                    <a href="addServices.aspx"  ><i class="fas fa-cog dashIcon"></i>Add Services</a>
                    <a href="viewServices.aspx" ><i class="fas fa-eye dashIcon"></i>View Services</a>
                    <a href="viewEmployee.aspx" ><i class="fas fa-eye dashIcon"></i>View Employee</a>
                    <a href="viewConsignment.aspx" ><i class="fas fa-eye dashIcon"></i>Consignment</a>
                    <a href="viewDelivery.aspx" ><i class="fas fa-eye dashIcon"></i>Delivery</a>
                    <a href="viewDispatch.aspx" ><i class="fas fa-eye dashIcon"></i>Dispatch</a>
                    <a href="viewReceiver.aspx" ><i class="fas fa-eye dashIcon"></i>Receiver</a>
                    <a href="viewFeedback.aspx" ><i class="fas fa-eye dashIcon"></i>Feedback</a>
                </div>

                <div id="admpMain">
                    <h1 class="display-4">Welcome to Admin Panel</h1>
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
          </section>

            <!--Footer-->
           <%-- <footer class="panelFoot" >

                <p>Copyright<i class="fas fa-copyright copyFoot"></i>OnTimeParcel,Inc.All Rights Reserved.</p>

            </footer>--%>

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
