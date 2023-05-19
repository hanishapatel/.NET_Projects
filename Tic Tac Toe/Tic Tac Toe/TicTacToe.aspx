<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicTacToe.aspx.cs" Inherits="Assignment_4.TicTacToe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <script src="JavaScript.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 24%;
            height: 227px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblheading" runat="server" Text="Tic Tac Toe" CssClass="heading"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lbl0" runat="server" Text="Player One represents 0" CssClass="labels"></asp:Label>
            <br />
            <asp:Label ID="lblX" runat="server" Text="Player Two represents X" CssClass="labels"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblturn" runat="server"></asp:Label>
            <br />
            <br />
            <table class="auto-style1" align="center">
                <tr>
                    <td>
                        <asp:TextBox ID="txt11" onclick="play1();whowon()" runat="server" ReadOnly="True" CssClass="textbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txt12" onclick="play2();whowon()" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td >
                        <asp:TextBox ID="txt13" onclick="play3();whowon()" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt21" onclick="play4();whowon()" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txt22" onclick="play5();whowon()" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td >
                        <asp:TextBox ID="txt23" onclick="play6();whowon()" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txt31" onclick="play7();whowon()" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txt32" onclick="play8();whowon()" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txt33" onclick="play9();whowon()" runat="server" CssClass="textbox" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="lblwon" runat="server"></asp:Label>
            <br />
            <br />

            <asp:Button ID="btnreset" OnClick="Page_Load" runat="server" CssClass="btn" Text="Reset" />
        </div>
    </form>
</body>
</html>
