using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_3
{
    public partial class Third_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Hotel hotelObj = (Hotel)Session["hotel"];
            Hotel hotelObject = (Hotel)Session["hotelnew"];
            lblhotelname.Text = hotelObj.HotelName;
            lblin.Text = hotelObj.Checkin;
            lblout.Text = hotelObj.Checkout;
            lblnoofrooms.Text = hotelObj.Rooms;
            lblnoofguests.Text = hotelObj.Guests;
            lblroomtype.Text = hotelObject.RoomType;
            lblrate.Text = hotelObject.Rate;

            string rooms = lblnoofrooms.Text;
            string rate = lblrate.Text;
            double tax = Convert.ToDouble(rate) * 0.17;
            lbltax.Text = "$" + tax.ToString();

            double total = tax + Convert.ToDouble(rate) * Convert.ToDouble(rooms);
            lbltotal.Text = "$" + total.ToString();


        }
    }
}