using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_3
{
    public partial class Default : System.Web.UI.Page
    {
        Hotel hotelObj = new Hotel();
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        void ReadHotel(string hotelName)
        {
            hotelObj.HotelName = hotelName;
        }
        protected void ddlhotels_SelectedIndexChanged(object sender, EventArgs e)
        {
            ReadHotel(ddlhotels.Text);
        }

        protected void btnhotel_Click(object sender, EventArgs e)
        {
            hotelObj.HotelName = ddlhotels.Text;
            hotelObj.Rooms = txtrooms.Text;
            hotelObj.Guests = txtguests.Text;
            hotelObj.Checkin = txtcheckin.Text;
            hotelObj.Checkout = txtcheckout.Text;
            Session["hotel"] = hotelObj;
            Response.Redirect("Second Page.aspx");
        }
    }
}