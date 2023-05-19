<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Second Page.aspx.cs" Inherits="Assignment_3.Second_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
        <div id="entirediv" style="width:100%;text-align:center">
            <asp:Image ID="img" runat="server" CssClass="img" />
            <br />
            <asp:Label ID="lblHotelName" runat="server" CssClass="heading"></asp:Label>
            <asp:BulletedList ID="listamenities" runat="server">
            </asp:BulletedList>
            <br />
            <asp:GridView ID="gv1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="Page_Load" OnRowCommand="gv1_RowCommand" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="OnClick" Text="Reserve" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
