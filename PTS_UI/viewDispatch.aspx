<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewDispatch.aspx.cs" Inherits="viewDispatch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>All Dispatch</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <%--<asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" />--%>
                <asp:BoundField DataField="disId" HeaderText="Dispatch Id" ReadOnly="True" />
                <asp:BoundField DataField="disTrackId" HeaderText="Track Id" />
                <asp:BoundField DataField="disEmpId" HeaderText="Employee Id"  />
                <asp:BoundField DataField="disEmpName" HeaderText="Employee Name"  />
                <asp:BoundField DataField="disEmpMobile" HeaderText="Employee Phone"  />
                <asp:BoundField DataField="disBranchId" HeaderText="Branch Id" />
                <asp:BoundField DataField="disBranchName" HeaderText="Branch Name" />
                <asp:BoundField DataField="disShipperName" HeaderText="Shipper Name"  />
                <asp:BoundField DataField="disShipperMail" HeaderText="Shipper Email"  />
                <asp:BoundField DataField="disShipperAddress" HeaderText="Shipper Address" />
                <asp:BoundField DataField="disShipperPhone" HeaderText="Shipper Phone"  />
                <asp:BoundField DataField="disReceiverName" HeaderText="Receiver Name"  />
                <asp:BoundField DataField="disReceiverMail" HeaderText="Receiver Email"  />
                <asp:BoundField DataField="disReceiverAddress" HeaderText="Receiver Address"  />
                <asp:BoundField DataField="disReceiverPhone" HeaderText="Receiver Phone" />
                <asp:BoundField DataField="disDateOfDis" HeaderText="Date Of Dispatch"  />
                <asp:BoundField DataField="disBookedBy" HeaderText="Booked By" />
                <asp:BoundField DataField="disStatus" HeaderText="Status" />
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
    
    </div>
    </form>
</body>
</html>
