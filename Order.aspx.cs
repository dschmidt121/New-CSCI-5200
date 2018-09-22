using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaSys
{
    public class Product
    {
        private string pizzaType;
        private Guid id;
        private string pizzaSize;
        private string pizzaCrust;
        private string pizzaSauce;
        private string pizzaCheeseType;
        private string toppings;
        private int quantity;
        private readonly double total;
        private double StandardPrice = 10;

        public string PizzaType
        {
            get
            {
                return pizzaType;
            }
            set
            {
                pizzaType = value;
            }
        }

        public Guid ID
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }
        public string PizzaSize
        {
            get
            {
                return pizzaSize;
            }
            set
            {
                pizzaSize = value;
            }

        }
        public string PizzaCrust
        {
            get
            {
                return pizzaCrust;
            }
            set
            {
                pizzaCrust = value;
            }
        }
        public string PizzaSauce
        {
            get
            {
                return pizzaSauce;
            }
            set
            {
                pizzaSauce = value;
            }
        }
        public string PizzaCheeseType
        {
            get
            {
                return pizzaCheeseType;
            }
            set
            {
                pizzaCheeseType = value;
            }
        }
        public string Toppings
        {
            get
            {
                return toppings;
            }
            set
            {
                toppings = value;
            }
        }
        public int Quantity
        {
            get
            {
                return quantity;
            }
            set
            {
                quantity = value;
            }
        }

        public double Total
        {
            get
            {
                return quantity * StandardPrice;
            }

        }
    }
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            string pizzaCheeseType = drpCheese.SelectedValue ?? "";
            string pizzaCrust = drpCrust.SelectedValue ?? "";
            string pizzaSauce = drpSauce.SelectedValue ?? "";
            string pizzaSize = drpSize.SelectedValue ?? "0";
            string pizzaType = drpType.SelectedValue ?? "";
            string toppings = drpToppings.SelectedValue ?? "";
            int quantity = Int32.Parse(txtQuantity.Text ?? "0");

            Product product = new Product {
                ID = new Guid(),
                PizzaCheeseType = pizzaCheeseType,
                PizzaCrust = pizzaCrust,
                PizzaSauce = pizzaSauce,
                PizzaSize = pizzaSize,
                PizzaType = pizzaType,
                Toppings = toppings,
                Quantity = quantity,
            };
            if(Session["OrderList"] == null)
            {
                List<Product> productList = new List<Product>();
                productList.Add(product);
                Session["OrderList"] = productList;
            }
            else
            {
                List<Product> products = (List<Product>)Session["OrderList"];
                products.Add(product);
                Session["OrderList"] = products;
            }
            Response.Redirect("~/Review.aspx");
        }
    }
}