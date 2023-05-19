<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment2_WebPage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <!--<style type="text/css">
        .auto-style1 {
            width: 748px;
            height: 247px;
        }
    </style>-->
    <style type="text/css">
        .heading {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;text-align:center">
            <asp:Image ID="Image1" runat="server" CssClass="image" ImageUrl="~/Images/Screenshot 2022-10-06 132523.png" />
            <br />
            <br />
            <asp:Label ID="heading1" runat="server" Text="Thank you for your interest! Please complete the form below to request information." CssClass="heading1"></asp:Label>
            <br />
            <br />
            <asp:Label ID="heading2" runat="server" Text="The information you provide will be kept confidential and used only to send information to you." CssClass="heading2"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblRequired" runat="server" style ="color:red;float:right" Text="* = Required Field"></asp:Label>
            <br />
        </div>



        <div id="entirediv"> 
            <asp:Label ID="Label1" runat="server" CssClass="divhead" Text="Student Information" Width="785px"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="* First Name" CssClass="heading" EnableViewState="False" Width="149px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvfirstname" runat="server" ControlToValidate="txtfirstname" CssClass="heading2" ErrorMessage="Required!" Width="233px" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:Label ID="Label3" runat="server" Text="* Last Name" CssClass="heading" Width="138px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvlastname" runat="server" ControlToValidate="txtlastname" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:TextBox ID="txtfirstname" runat="server" CssClass="txtfirstname" Width="360px" ForeColor="Black"></asp:TextBox>
            <asp:TextBox ID="txtlastname" runat="server" CssClass="txtlastname" Width="380px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbldateofbirth" runat="server" CssClass="heading" Text="* Date of Birth" Width="154px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvdob" runat="server" ControlToValidate="txtdateofbirth" CssClass="heading2" Display="Dynamic" ErrorMessage="Required!"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvdob" runat="server" ControlToValidate="txtdateofbirth" CssClass="heading2" ErrorMessage="Should be before today's date" MaximumValue="10/11/2022" MinimumValue="1/1/1950" Type="Date"></asp:RangeValidator>
            <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
            <br />
            <asp:TextBox ID="txtdateofbirth" runat="server" CssClass="txtdateofbirth" TextMode="Date" Width="246px"></asp:TextBox>
            <asp:DropDownList ID="ddlgender" runat="server" Width="140px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
        </div>
       


        <div id="entirediv">
            <asp:Label ID="lblcontact" runat="server" CssClass="divhead" Text="Contact Information"></asp:Label>
            <asp:Label ID="lblmailaddr1" runat="server" ForeColor="Black" Text="* Mailing Address"></asp:Label>
            <br />
            <asp:TextBox ID="txtmailaddr1" runat="server" CssClass="mailaddr1" Width="500px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvaddress" runat="server" ControlToValidate="txtmailaddr1" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblmailaddr2" runat="server" Text="Mailing Address 2"></asp:Label>
            <br />
            <asp:TextBox ID="txtmailaddr2" runat="server" Width="500px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblcity" runat="server" CssClass="heading" Text="* City" Width="79px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvcity" runat="server" ControlToValidate="txtcity" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True" Width="129px"></asp:RequiredFieldValidator>
            <asp:Label ID="lblstate" runat="server" CssClass="heading" Text="State" Width="73px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvstate" runat="server" ControlToValidate="ddlstate" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True" Width="119px"></asp:RequiredFieldValidator>
            <asp:Label ID="lblzipcode" runat="server" CssClass="heading" Text="* Zip Code" Width="130px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvzipcode" runat="server" ControlToValidate="txtzipcode" CssClass="heading2" Display="Dynamic" ErrorMessage="Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regzipcode" runat="server" ControlToValidate="txtzipcode" CssClass="heading2" ErrorMessage="Should be 5 digit" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="txtcity" runat="server" CssClass="txtfirstname" Width="186px"></asp:TextBox>
            <asp:DropDownList ID="ddlstate" runat="server" CssClass="txtfirstname" Width="178px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>AL</asp:ListItem>
                <asp:ListItem>AK</asp:ListItem>
                <asp:ListItem>AZ</asp:ListItem>
                <asp:ListItem>AR</asp:ListItem>
                <asp:ListItem>CA</asp:ListItem>
                <asp:ListItem>CZ</asp:ListItem>
                <asp:ListItem>CO</asp:ListItem>
                <asp:ListItem>CT</asp:ListItem>
                <asp:ListItem>DE</asp:ListItem>
                <asp:ListItem>DC</asp:ListItem>
                <asp:ListItem>FL</asp:ListItem>
                <asp:ListItem>GA</asp:ListItem>
                <asp:ListItem>GU</asp:ListItem>
                <asp:ListItem>HI</asp:ListItem>
                <asp:ListItem>ID</asp:ListItem>
                <asp:ListItem>IL</asp:ListItem>
                <asp:ListItem>IN</asp:ListItem>
                <asp:ListItem>IA</asp:ListItem>
                <asp:ListItem>KS</asp:ListItem>
                <asp:ListItem>KY</asp:ListItem>
                <asp:ListItem>LA</asp:ListItem>
                <asp:ListItem>ME</asp:ListItem>
                <asp:ListItem>MD</asp:ListItem>
                <asp:ListItem>MA</asp:ListItem>
                <asp:ListItem>MI</asp:ListItem>
                <asp:ListItem>MN</asp:ListItem>
                <asp:ListItem>MS</asp:ListItem>
                <asp:ListItem>MO</asp:ListItem>
                <asp:ListItem>MT</asp:ListItem>
                <asp:ListItem>NE</asp:ListItem>
                <asp:ListItem>NV</asp:ListItem>
                <asp:ListItem>NH</asp:ListItem>
                <asp:ListItem>NJ</asp:ListItem>
                <asp:ListItem>NM</asp:ListItem>
                <asp:ListItem>NY</asp:ListItem>
                <asp:ListItem>NC</asp:ListItem>
                <asp:ListItem>ND</asp:ListItem>
                <asp:ListItem>OH</asp:ListItem>
                <asp:ListItem>OK</asp:ListItem>
                <asp:ListItem>OR</asp:ListItem>
                <asp:ListItem>PA</asp:ListItem>
                <asp:ListItem>PR</asp:ListItem>
                <asp:ListItem>RI</asp:ListItem>
                <asp:ListItem>SC</asp:ListItem>
                <asp:ListItem>SD</asp:ListItem>
                <asp:ListItem>TN</asp:ListItem>
                <asp:ListItem>TX</asp:ListItem>
                <asp:ListItem>UT</asp:ListItem>
                <asp:ListItem>VT</asp:ListItem>
                <asp:ListItem>VI</asp:ListItem>
                <asp:ListItem>VA</asp:ListItem>
                <asp:ListItem>WA</asp:ListItem>
                <asp:ListItem>WV</asp:ListItem>
                <asp:ListItem>WI</asp:ListItem>
                <asp:ListItem>WY</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtzipcode" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblmobile" runat="server" CssClass="heading" Text="* Mobile Number" Width="207px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvphone" runat="server" ControlToValidate="txtmobile" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True" Width="111px"></asp:RequiredFieldValidator>
            <asp:Label ID="lbltext" runat="server" CssClass="heading" Text="* May we text you?" Width="220px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvtext" runat="server" ControlToValidate="ddltext" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtmobile" runat="server" CssClass="txtfirstname" Width="296px"></asp:TextBox>
            <asp:DropDownList ID="ddltext" runat="server" Width="250px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtmobile" CssClass="heading2" ErrorMessage="Should be 10 digit number!" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="lblmobile2" runat="server" Text="Other Mobile Number"></asp:Label>
            <br />
            <asp:TextBox ID="txtmobile2" runat="server" Width="230px" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblemail" runat="server" CssClass="heading" Text="* Email Address" Width="220px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rfcemailvalid" runat="server" ControlToValidate="txtemail" CssClass="heading2" ErrorMessage="Not in correct format!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="txtemail" runat="server" Width="500px" TextMode="Email"></asp:TextBox>
            <br />
        </div>

        <div id="entirediv">
            <asp:Label ID="lblacademic" runat="server" CssClass="divhead" Text="Academic Information"></asp:Label>
            <asp:Label ID="lblsemester" runat="server" CssClass="heading" Text="* Semester you wish to enroll" Width="330px"></asp:Label>
            <asp:Label ID="lblcampus" runat="server" CssClass="heading" Text="* Campus"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlsemester" runat="server" CssClass="txtfirstname" Width="320px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Summer 2022</asp:ListItem>
                <asp:ListItem>Fall 2022</asp:ListItem>
                <asp:ListItem>Spring 2023</asp:ListItem>
                <asp:ListItem>Summer 2023</asp:ListItem>
                <asp:ListItem>Fall 2023</asp:ListItem>
                <asp:ListItem>Spring 2024</asp:ListItem>
                <asp:ListItem>Summer 2024</asp:ListItem>
                <asp:ListItem>Fall 2024</asp:ListItem>
                <asp:ListItem>Spring 2025</asp:ListItem>
                <asp:ListItem>Summer 2025</asp:ListItem>
                <asp:ListItem>Fall 2025</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlcampus" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>On Campus/Off Campus</asp:ListItem>
                <asp:ListItem>Online</asp:ListItem>
            </asp:DropDownList>

            <br />
            <asp:RequiredFieldValidator ID="rfvsemester" runat="server" ControlToValidate="ddlsemester" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True" Width="332px"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvcampus" runat="server" ControlToValidate="ddlcampus" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True"></asp:RequiredFieldValidator>

            <br />
            <br />
            <asp:Label ID="lblprogram" runat="server" CssClass="heading" Text="* Program interest" Width="250px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfvprogram" runat="server" ControlToValidate="ddlprogram" CssClass="heading2" ErrorMessage="Required!" SetFocusOnError="True" Width="153px"></asp:RequiredFieldValidator>
            <asp:Label ID="lblspecialization" runat="server" Text="Specialization/Concentration"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlprogram" runat="server" CssClass="txtfirstname" Width="390px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Accounting MS</asp:ListItem>
                <asp:ListItem>Behaviour Analysis MA</asp:ListItem>
                <asp:ListItem>Computer Science MS</asp:ListItem>
                <asp:ListItem>Data Science MS</asp:ListItem>
                <asp:ListItem>Educational Leadership EdD</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlspecialization" runat="server" Width="300px">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="lblinternational" runat="server" Text="Are you an international student?"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlinternational" runat="server" Width="300px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div id="entirediv">
            <asp:Label ID="lblhousing" runat="server" CssClass="divhead" Text="Housing"></asp:Label>
            <asp:Label ID="lblhousinginterest" runat="server" CssClass="heading" Text="* Are you interested in on-campus housing?"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlhousing" runat="server" Width="200px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvhousing" runat="server" ControlToValidate="ddlhousing" CssClass="heading2" ErrorMessage="Required!"></asp:RequiredFieldValidator>
        </div>

        <div id="entirediv">
            <asp:Label ID="lblverteran" runat="server" CssClass="divhead" Text="Veteran Information"></asp:Label>
            <asp:Label ID="lblveteraninfo" runat="server" CssClass="heading" Text="* Do you plan on using veteran education benefits at UHCL?"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlveteran" runat="server" Width="300px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>I am not a veteran</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvveteran" runat="server" ControlToValidate="ddlveteran" CssClass="heading2" ErrorMessage="Required!"></asp:RequiredFieldValidator>
        </div>

        <div id="entirediv">
            <asp:Label ID="lbluhcl" runat="server" CssClass="divhead" Text="How did you hear about UHCL?"></asp:Label>
            <asp:Label ID="lbluhclinfo" runat="server" Text="Select all that apply"></asp:Label>
            <br />
            <asp:ListBox ID="lbsource" runat="server" Width="300px" Rows="5" SelectionMode="Multiple">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>College/Career fair</asp:ListItem>
                <asp:ListItem>Email from UHCL</asp:ListItem>
                <asp:ListItem>Social Media</asp:ListItem>
                <asp:ListItem>Teacher/Professor</asp:ListItem>
                <asp:ListItem>Advisor/Counselor</asp:ListItem>
                <asp:ListItem>Family/Friend</asp:ListItem>
                <asp:ListItem>Campus Event Invitation</asp:ListItem>
                <asp:ListItem>Letter/Postcard from UHCL</asp:ListItem>
                <asp:ListItem>UHCL Poster/Billboard</asp:ListItem>
                <asp:ListItem>Employer</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:ListBox>
        </div>

        <div style="text-align:center">
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnsubmit_Click" />
            <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn" OnClick="btncancel_Click" />
        </div>

        <div style="margin-bottom:20px;">
            <asp:Label ID="lblend" runat="server" CssClass="endlbl" Text="By clicking the submit button, I agree that UHCL may email me or contact me regarding educational services by telephone and/or text message utilizing automated technology at the telephone number(s) provided above."></asp:Label>
            <br />
            <asp:Label ID="lblend2" runat="server" CssClass="endlbl" Text="I understand this consent is not required to attend UHCL."></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblresult" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="30px" ForeColor="#000066"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
