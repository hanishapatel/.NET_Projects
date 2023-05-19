using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_3
{
    public class Hotel
    {
        string hotelName;
        string rooms;
        string guests;
        string check_in;
        string check_out;
        string roomtype;
        string rate;
        public string HotelName
        {
            get
            {
                return hotelName;
            }
            set
            {
                hotelName = value;
            }
        }
        public string Rooms
        {
            get
            {
                return rooms;
            }
            set
            {
                rooms = value;
            }
        }
        public string Guests
        {
            get
            {
                return guests;
            }
            set
            {
                guests = value;
            }
        }
        public string Checkin
        {
            get
            {
                return check_in;
            }
            set
            {
                check_in = value;
            }
        }
        public string Checkout
        {
            get
            {
                return check_out;
            }
            set
            {
                check_out = value;
            }
        }
        public string RoomType
        {
            get
            {
                return roomtype;
            }
            set
            {
                roomtype = value;
            }
        }
        public string Rate
        {
            get
            {
                return rate;
            }
            set
            {
                rate = value;
            }
        }
    }
}