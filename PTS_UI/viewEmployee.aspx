<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewEmployee.aspx.cs" Inherits="viewEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" DataKeyNames="usrId"  ForeColor="#333333" GridLines="None" style="margin-right: 31px" Width="2252px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="usrId" HeaderText="Id" ReadOnly="True"  />
                <asp:BoundField DataField="usrPassword" HeaderText="Password"  />
                <asp:BoundField DataField="usrName" HeaderText="Name"  />
                <asp:BoundField DataField="usrEmail" HeaderText="Email"  />
                <asp:BoundField DataField="usrMobile" HeaderText="Mobile"  />
                <asp:BoundField DataField="usrAddress" HeaderText="Address"  />
                <asp:BoundField DataField="usrType" HeaderText="Type"  />
                <asp:BoundField DataField="usrBranchId" HeaderText="Branch Id"  />
                <asp:BoundField DataField="usrBranchName" HeaderText="Branch Name"  />
                <asp:BoundField DataField="usrBranchCity" HeaderText="Branch City"  />
                <asp:BoundField DataField="usrBranchLocation" HeaderText="Branch Location"  />
                <asp:BoundField DataField="usrBranchAddress" HeaderText="Branch Address" />
                <asp:BoundField DataField="usrBranchPincode" HeaderText="Branch Pincode"  />
                <asp:BoundField DataField="usrRole" HeaderText="Role"  />
                <asp:BoundField DataField="usrSalary" HeaderText="Salary"  />
                <asp:BoundField DataField="usrDoj" HeaderText="Doj" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="center" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    </form>
    
</body>
</html>
