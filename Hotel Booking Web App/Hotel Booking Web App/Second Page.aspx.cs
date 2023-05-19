using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Diagnostics;
using System.Web.UI.HtmlControls;
using System.Data;

namespace Assignment_3
{
    public partial class Second_Page : System.Web.UI.Page
    {
        Hotel hotelObject = new Hotel();

        public void Page_Load(object sender, EventArgs e)
        {
            Hotel hotelObj = (Hotel)Session["hotel"];
            lblHotelName.Text = hotelObj.HotelName;
            if (lblHotelName.Text.Contains(lblHotelName.Text))
            {
                string line;
                System.IO.StreamReader file = new System.IO.StreamReader("C:/Users/hanis/source/repos/Assignment_3/input.txt");

                //read file and display image and amenities
                int i = 0;
                while ((line = file.ReadLine()) != null)
                {
                    i++;
                    if (line.Contains(lblHotelName.Text))
                    {
                        //display image of hotel
                        i++;
                        string filePath = "~/images/" + file.ReadLine();
                        img.ImageUrl = (filePath);

                        //display hotel amenities
                        i++;
                        string a = file.ReadLine();
                        List<string> abc = a.Split(',').ToList();
                        foreach (var item in abc)
                        {
                            listamenities.DataSource = abc;
                            listamenities.DataBind();
                        }
                        //read file and display rates of room types
                        i++;
                        int length = Convert.ToInt32(file.ReadLine());

                        DataTable tb = new DataTable();
                        DataRow dr;
                        tb.Columns.Add("Type of Room", typeof(string));
                        tb.Columns.Add("Rate", typeof(string));
                        

                        for (int j = 0; j < length; j++)
                        {
                            i++;
                            List<string> room = file.ReadLine().Split(',').ToList();
                            dr = tb.NewRow();
                            dr["Type of Room"] = room[0];
                            dr["Rate"] = room[1];
                            tb.Rows.Add(dr);
                            gv1.DataSource = tb;
                            gv1.DataBind();
                        }
                    }
                }
            }
        }

        public void gv1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("OnClick") == 0)
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = gv1.Rows[index];
                hotelObject.RoomType = gv1.Rows[index].Cells[1].Text;
                hotelObject.Rate = gv1.Rows[index].Cells[2].Text;
                Session["hotelnew"] = hotelObject;
                Response.Redirect("Third Page.aspx");
            }
        }
    }
}