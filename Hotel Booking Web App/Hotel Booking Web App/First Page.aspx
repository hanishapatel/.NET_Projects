<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First Page.aspx.cs" Inherits="Assignment_3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="entirediv"  style="width:100%;text-align:center">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hotel.jpg" Width="830px" Height="350px" CssClass="img" />
            <br />
            <asp:Label ID="lbltitle" runat="server" Text="UHCL Hotel Agency" Font-Bold="True" Font-Italic="True" Font-Size="25pt" ForeColor="#0033CC"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lbldestn" runat="server" Text="Destination"></asp:Label>
            &nbsp;<asp:DropDownList ID="ddlhotels" runat="server" AutoPostBack="True" Width="350px" OnSelectedIndexChanged="Page_Load">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Hilton Garden Inn</asp:ListItem>
                <asp:ListItem>Best Western Plus</asp:ListItem>
                <asp:ListItem>Hampton Inn &amp; Suites by Hilton</asp:ListItem>
                <asp:ListItem>Extended Stay America</asp:ListItem>
                <asp:ListItem>Motel 6</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlhotels" ErrorMessage="*Required" SetFocusOnError="True" CssClass="validator"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtcheckin" CssClass="validator" ErrorMessage="Should be after today" MaximumValue="1/1/2030" MinimumValue="11/18/2022" Type="Date"></asp:RangeValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtcheckin" ControlToValidate="txtcheckout" CssClass="validator" ErrorMessage="Should be after Check in date" Operator="GreaterThan"></asp:CompareValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcheckin" CssClass="validator" Display="Dynamic" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            <asp:Label ID="lblcheckin" runat="server" Text="Check-in"></asp:Label>
            &nbsp;<asp:TextBox ID="txtcheckin" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblcheckout" runat="server" Text="Check-out"></asp:Label>
            &nbsp;<asp:TextBox ID="txtcheckout" runat="server" TextMode="Date" Width="150px" OnTextChanged="Page_Load"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Required" ControlToValidate="txtcheckout" CssClass="validator" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtrooms" CssClass="validator" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            <asp:Label ID="lblrooms" runat="server" Text="No. of Rooms"></asp:Label>
            &nbsp;<asp:TextBox ID="txtrooms" runat="server" Width="150px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblguests" runat="server" Text="No. of Guests"></asp:Label>
            &nbsp;<asp:TextBox ID="txtguests" runat="server" Width="150px" OnTextChanged="Page_Load"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Required" ControlToValidate="txtguests" CssClass="validator"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnhotel" runat="server" CssClass="btn" OnClick="btnhotel_Click" Text="Find a Hotel" Font-Size="18pt" />
&nbsp;

        </div>
    </form>
</body>
</html>
