<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewBranch.aspx.cs" Inherits="viewBranch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="8" DataKeyNames="brBranchId" ForeColor="#333333" GridLines="None" style="margin-right: 30px" Width="2165px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="brBranchId" HeaderText="Branch Id" ReadOnly="True" />
                <asp:BoundField DataField="brBranchCity" HeaderText="Branch City"/>
                <asp:BoundField DataField="brBranchName" HeaderText="Branch Name"  />
                <asp:BoundField DataField="brBranchLocation" HeaderText="Branch Location"  />
                <asp:BoundField DataField="brBranchAddress" HeaderText="Branch Address" />
                <asp:BoundField DataField="brBranchPincode" HeaderText="Branch Pincode"  />
                <asp:BoundField DataField="brMngId" HeaderText="Manager Id" />
                <asp:BoundField DataField="brMngPassword" HeaderText="Manager Password" />
                <asp:BoundField DataField="brMngName" HeaderText="Manager Name" />
                <asp:BoundField DataField="brMngEmail" HeaderText="Manager Email"  />
                <asp:BoundField DataField="brMngMobile" HeaderText="Manager Mobile" />
                <asp:BoundField DataField="brMngAddress" HeaderText="Manager Address" />
                <asp:BoundField DataField="brMngSalary" HeaderText="Manager Salary" />
                <asp:BoundField DataField="brMngDoj" HeaderText="Manager Doj" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

    </div>
    </form>
    
</body>
</html>
