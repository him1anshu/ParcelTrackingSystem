<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewConsignment.aspx.cs" Inherits="viewConsignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>All Consignments</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Visible="false" ForeColor="Red"></asp:Label>

            <%--<div style="float:left;width:3800px;">--%>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="8" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="consId" HeaderText="Consignment Id" ReadOnly="True" />
                    <asp:BoundField DataField="consTrackId" HeaderText="Track Id" />
                    <asp:BoundField DataField="consShipperName" HeaderText="Shipper Name" />
                    <asp:BoundField DataField="consShipperAddress" HeaderText="Shipper Address" />
                    <asp:BoundField DataField="consShipperMobile" HeaderText="Shipper Mobile" />
                    <asp:BoundField DataField="consShipperMail" HeaderText="Shipper Mail" />
                    <asp:BoundField DataField="consMaterialDescription" HeaderText="Material Description" />
                    <asp:BoundField DataField="consTotalItems" HeaderText="Total Items" />
                    <asp:BoundField DataField="consTotalWeight" HeaderText="Total Weight" />
                    <asp:BoundField DataField="consTotalDistance" HeaderText="Total Distance" />
                    <asp:BoundField DataField="consServiceType" HeaderText="Service Type" />
                    <asp:BoundField DataField="consShippingCharge" HeaderText="Shipping Charge" />
                    <asp:BoundField DataField="consDateOfBooking" HeaderText="Date Of Booking" />
                    <asp:BoundField DataField="consSrcBranchId" HeaderText="Source Branch Id" />
                    <asp:BoundField DataField="consSrcBranchName" HeaderText="Source Branch Name" />
                    <asp:BoundField DataField="consSrcBranchCity" HeaderText="Source Branch City" />
                    <asp:BoundField DataField="consDestBranchId" HeaderText="Destination Branch Id" />
                    <asp:BoundField DataField="consDestBranchName" HeaderText="Destination Branch Name" />
                    <asp:BoundField DataField="consDestBranchCity" HeaderText="Destination Branch City" />
                    <asp:BoundField DataField="consReceiverName" HeaderText="Receiver Name" />
                    <asp:BoundField DataField="consReceiverAddress" HeaderText="Receiver Address" />
                    <asp:BoundField DataField="consReceiverMobile" HeaderText="Receiver Mobile" />
                    <asp:BoundField DataField="consReceiverMail" HeaderText="Receiver Mail" />
                    <asp:BoundField DataField="consDelStatus" HeaderText="Delivery Status" />
                    <asp:BoundField DataField="consDisStatus" HeaderText="Dispatch Status" />
                    <asp:BoundField DataField="consRecStatus" HeaderText="Receiver Status" />

                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" Text="Edit" CommandArgument='<%# Eval("consId") %>' runat="server" OnClick="editConsignment"></asp:LinkButton>
                        </ItemTemplate>

                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                   
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
                <%--</div>
                <div style="float:right;width:100px;">
                   
                        <asp:LinkButton ID="LinkButton2" runat="server">LinkButton</asp:LinkButton>
                    </div>--%>
        </div>
    </form>

</body>

</html>
