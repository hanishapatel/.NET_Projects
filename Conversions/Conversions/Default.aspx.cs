using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conversions
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlconversion_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    
        protected void ddl_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_type.SelectedIndex == 1)
            {
                ddlconversion.Items.Clear();
                ddlconversion.Items.Add(new ListItem("--Please select conversion options--", "--Please select conversion options--"));
                ddlconversion.Items.Add(new ListItem("Kilometers to Miles", "Kilometers to Miles"));
                ddlconversion.Items.Add(new ListItem("Miles to Kilometers", "Miles to Kilometers"));
                ddlconversion.Items.Add(new ListItem("Yard to Feet", "Yard to Feet"));
                ddlconversion.Items.Add(new ListItem("Feet to Yard", "Feet to Yard"));
                ddlconversion.Items.Add(new ListItem("Inches to Centimeters", "Inches to Centimeters"));
                ddlconversion.Items.Add(new ListItem("Centimeters to Inches", "Centimeters to Inches"));
                //ddlconversion.DataBind();
                //DDL1.Items.Add(new ListItem("test", "test"));
            }

            else if (ddl_type.SelectedIndex == 2)
            {
                ddlconversion.Items.Clear();
                ddlconversion.Items.Add(new ListItem("--Please select conversion options--", "--Please select conversion options--"));
                ddlconversion.Items.Add(new ListItem("Liters to Gallons ", "Kilometers to Miles"));
                ddlconversion.Items.Add(new ListItem("Gallons to Liters", "Miles to Kilometers"));
                ddlconversion.Items.Add(new ListItem("Pints to Gallons", "Yard to Feet"));
                ddlconversion.Items.Add(new ListItem("Gallons to Pints", "Feet to Yard"));
                ddlconversion.Items.Add(new ListItem("Quarts to Gallons", "Inches to Centimeters"));
                ddlconversion.Items.Add(new ListItem("Gallons to Quarts", "Centimeters to Inches"));
                //ddlconversion.DataBind();
                //DDL1.Items.Add(new ListItem("test", "test"));
            }

            else if (ddl_type.SelectedIndex == 3)
            {
                ddlconversion.Items.Clear();
                ddlconversion.Items.Add(new ListItem("--Please select conversion options--", "--Please select conversion options--"));
                ddlconversion.Items.Add(new ListItem("Fahrenheit to Celsius", "Kilometers to Miles"));
                ddlconversion.Items.Add(new ListItem("Celsius to Fahrenheit", "Miles to Kilometers"));
                //ddlconversion.DataBind();
                //DDL1.Items.Add(new ListItem("test", "test"));
            }

            else if (ddl_type.SelectedIndex == 4)
            {
                ddlconversion.Items.Clear();
                ddlconversion.Items.Add(new ListItem("--Please select conversion options--", "--Please select conversion options--"));
                ddlconversion.Items.Add(new ListItem("Kilograms to Pounds", "Kilometers to Miles"));
                ddlconversion.Items.Add(new ListItem("Pounds to Kilograms", "Miles to Kilometers"));
                ddlconversion.Items.Add(new ListItem("Ounce to Grams", "Yard to Feet"));
                ddlconversion.Items.Add(new ListItem("Grams to Ounce", "Feet to Yard"));
                //ddlconversion.DataBind();
                //DDL1.Items.Add(new ListItem("test", "test"));
            }
        }

        protected void btn_calculate_Click(object sender, EventArgs e)
        {
            if (ddl_type.SelectedIndex == 1)
            {
                if (ddlconversion.SelectedIndex == 1)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 0.621371).ToString()) + " miles";
                }
                if (ddlconversion.SelectedIndex == 2)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 1.60934).ToString()) + " Kilometers";
                }
                if (ddlconversion.SelectedIndex == 3)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 3).ToString()) + " Feet";
                }
                if (ddlconversion.SelectedIndex == 4)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 0.33333).ToString()) + " Yards";
                }
                if (ddlconversion.SelectedIndex == 5)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 2.54).ToString()) + " Centimeters";
                }
                if (ddlconversion.SelectedIndex == 6)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 0.3937).ToString()) + " Inches";
                }
            }

            else if (ddl_type.SelectedIndex == 2)
            {
                if (ddlconversion.SelectedIndex == 1)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 0.264172).ToString()) + " Gallons";
                }
                if (ddlconversion.SelectedIndex == 2)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 3.78541).ToString()) + " Liters";
                }
                if (ddlconversion.SelectedIndex == 3)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 0.125).ToString()) + " Gallons";
                }
                if (ddlconversion.SelectedIndex == 4)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 9.60762).ToString()) + " Pints";
                }
                if (ddlconversion.SelectedIndex == 5)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 0.20817).ToString()) + " Gallons";
                }
                if (ddlconversion.SelectedIndex == 6)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 4.80381).ToString()) + " Quarts";
                }
            }

            else if (ddl_type.SelectedIndex == 3)
            {
                if (ddlconversion.SelectedIndex == 1)
                {
                    lbl_resultvalue.Text = ((0.55 * (Convert.ToDouble(txt_input.Text) - 32)).ToString()) + " Celsius";
                }
                if (ddlconversion.SelectedIndex == 2)
                {
                    lbl_resultvalue.Text = (( 32 + (Convert.ToDouble(txt_input.Text) * 1.8)).ToString()) + " Fahrenheit";
                }
            }

            else if (ddl_type.SelectedIndex == 4)
            {
                if (ddlconversion.SelectedIndex == 1)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 2.20462).ToString()) + " Pounds";
                }
                if (ddlconversion.SelectedIndex == 2)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 0.453592).ToString()) + " Kilograms";
                }
                if (ddlconversion.SelectedIndex == 3)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 28.3495).ToString()) + " Grams";
                }
                if (ddlconversion.SelectedIndex == 4)
                {
                    lbl_resultvalue.Text = (((Convert.ToDouble(txt_input.Text)) * 0.035274).ToString()) + " Ounces";
                }
            }
        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {
            lbl_resultvalue.Text = "";
            txt_input.Text = "";
            ddlconversion.SelectedIndex = 0;
            ddl_type.SelectedIndex = 0;
        }
    }
}