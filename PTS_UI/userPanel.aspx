<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userPanel.aspx.cs" Inherits="User" %>

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

    <title>User Panel</title>
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
                    <a href="userPanel.aspx"  id="activePage"><i class="fas fa-power-off dashIcon"></i>Dashboard</a>
                    <a href="consignmentRequest.aspx" ><i class="fas fa-cog dashIcon"></i>Add Consignment</a>
                    <a href="viewConsignment.aspx" ><i class="fas fa-eye dashIcon"></i>View Consignment</a>
                    <a href="tracking.aspx"><i class="fas fa-eye dashIcon"></i>Tracking</a>
                    <a href="calculateCost.aspx" ><i class="fas fa-cog dashIcon"></i>Calculate Cost</a>
                    <a href="locationFinder.aspx"><i class="fas fa-eye dashIcon"></i>Location Finder</a>
                    <a href="viewFeedback.aspx"><i class="fas fa-eye dashIcon"></i>Feedback</a>
                    <a href="contactUs.aspx"><i class="fas fa-eye dashIcon"></i>Contact Us</a>
             
                </div>

                <div id="admpMain">
                    <h1 class="display-4">Welcome to User Panel</h1>
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
          <%--  <footer id="panelFoot">

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
