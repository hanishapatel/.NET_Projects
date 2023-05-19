<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Third Page.aspx.cs" Inherits="Assignment_3.Third_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 697px;
        }
        .auto-style3 {
            width: 778px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;text-align:center">
            <asp:Label ID="lblhotelname" runat="server" CssClass="heading"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lbltype" runat="server" Text="Room Type: " CssClass="headingthird"></asp:Label>
            <asp:Label ID="lblroomtype" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblcheckin" runat="server" Text="Check in: " CssClass="headingthird"></asp:Label>
            <asp:Label ID="lblin" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblcheckout" runat="server" Text="Check out: " CssClass="headingthird"></asp:Label>
            <asp:Label ID="lblout" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblsummary" runat="server" Text="Your Price Summary" CssClass="headingthird"></asp:Label>
            <br />
            <br />
            <br />
            <table class="auto-style2" align="center">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblrooms" runat="server" Text="No. of Rooms: " CssClass="headingthird"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblnoofrooms" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblguests" runat="server" Text="No. of Guests: " CssClass="headingthird"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblnoofguests" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblrateavg" runat="server" Text="Rate avg/night" CssClass="headingthird"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblrate" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbltaxes" runat="server" Text="Taxes" CssClass="headingthird"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lbltax" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbltotaldue" runat="server" Text=" Total due" CssClass="headingthird"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lbltotal" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
