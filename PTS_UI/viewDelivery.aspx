<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewDelivery.aspx.cs" Inherits="viewDelivery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Label ID="Label1" runat="server"  Visible="false" ForeColor="red"></asp:Label>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
               <%-- <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True"  />--%>
                <asp:BoundField DataField="delId" HeaderText="Del Id" ReadOnly="True" />
                <asp:BoundField DataField="delTrackId" HeaderText="Track Id"  />
                <asp:BoundField DataField="delSourceBranchId" HeaderText="Source Branch Id"  />
                <asp:BoundField DataField="delSourceBranchName" HeaderText="Source Branch Name" />
                <asp:BoundField DataField="delEmpMail" HeaderText="Emp Mail"  />
                <asp:BoundField DataField="delDateOfDel" HeaderText="Date Of Del"  />
                <asp:BoundField DataField="delCurrentBranchId" HeaderText="Current Branch Id"  />
                <asp:BoundField DataField="delNextBranchId" HeaderText="Next Branch Id" />
                <asp:BoundField DataField="delDateOfRec" HeaderText="Date Of Rec"  />
                <asp:BoundField DataField="delDestnBranchId" HeaderText="Destn Branch Id" />
                <asp:BoundField DataField="delDestnBranchName" HeaderText="Destn Branch Name"  />
                <asp:BoundField DataField="delExpDateOfDel" HeaderText="Exp Date Of Del" />
                <asp:BoundField DataField="delCurrentLocation" HeaderText="Current Location"  />
                <asp:CheckBoxField DataField="delStatus" HeaderText="Status"  />

                <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                 <ItemTemplate>
                  <asp:LinkButton ID="LinkButton1" Text="Edit" CommandArgument='<%# Eval("delId") %>' runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
                  </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>

            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="center" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"  HorizontalAlign="center"/>
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
