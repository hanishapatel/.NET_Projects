<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Conversions.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl_type" runat="server" Text="Please select the type of conversion"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddl_type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_type_SelectedIndexChanged">
                <asp:ListItem>--Please select type of conversion--</asp:ListItem>
                <asp:ListItem>Length</asp:ListItem>
                <asp:ListItem>Liquid</asp:ListItem>
                <asp:ListItem>Temperature</asp:ListItem>
                <asp:ListItem>Mass</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lbl_conversion" runat="server" Text="Please select the conversion "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlconversion" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlconversion_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lbl_input" runat="server" Text="Enter the input"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_input" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_calculate" runat="server" Text="Calculate" OnClick="btn_calculate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_clear" runat="server" Text="Clear" OnClick="btn_clear_Click" />
            <br />
            <br />
            <asp:Label ID="lbl_result" runat="server" Text="Result: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_resultvalue" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
