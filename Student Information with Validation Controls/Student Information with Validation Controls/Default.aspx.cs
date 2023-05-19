using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment2_WebPage
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                lblresult.Text = "Sign up successful!";
                /*lblStatus.ForeColor = System.Drawing.Color.Green;*/
            }
            else
            {
                lblresult.Text = "Please fill all required fields";
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            txtcity.Text = "";
            txtdateofbirth.Text = "";
            txtemail.Text = "";
            txtfirstname.Text = "";
            txtlastname.Text = "";
            txtmailaddr1.Text = "";
            txtmailaddr2.Text = "";
            txtmobile.Text = "";
            txtmobile2.Text = "";
            txtzipcode.Text = "";
            ddlcampus.SelectedIndex = 0;
            ddlgender.SelectedIndex = 0;
            ddlhousing.SelectedIndex = 0;
            ddlinternational.SelectedIndex = 0;
            ddlprogram.SelectedIndex = 0;
            ddlsemester.SelectedIndex = 0;
            ddlspecialization.SelectedIndex = 0;
            ddlstate.SelectedIndex = 0;
            ddltext.SelectedIndex = 0;
            ddlveteran.SelectedIndex = 0;
            lbsource.SelectedIndex = 0;

        }
    }
}