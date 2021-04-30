<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewReceiver.aspx.cs" Inherits="viewReceiver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="recId" HeaderText="Receive Id" ReadOnly="True"  />
                <asp:BoundField DataField="recTrackId" HeaderText="Track Id" />
                <asp:BoundField DataField="recReceiverName" HeaderText="Receiver Name"  />
                <asp:BoundField DataField="recReceiverPhone" HeaderText="Receiver Phone" />
                <asp:BoundField DataField="recSourceBranchId" HeaderText="Source Branch Id" />
                <asp:BoundField DataField="recTotalItems" HeaderText="Total Items"  />
                <asp:BoundField DataField="recMaterialDesc" HeaderText="Material Description" />
                <asp:BoundField DataField="recDateOfRec" HeaderText="Date Of Receive"  />
                <asp:CheckBoxField DataField="recStatus" HeaderText="Status" />
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
