using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaSys
{
    public partial class Review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["OrderList"] != null)
                {
                    ShoppingList.DataSource = (List<Product>)Session["OrderList"];
                    ShoppingList.DataBind();
                }
            }
               
        }


        protected void ShoppingList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if(e.CommandName == "Edit")
            {
                ShoppingList.EditIndex = Convert.ToInt32(e.CommandArgument.ToString());
                ShoppingList.DataBind();

            }
            
        }

        private void RemoveProductID(Guid id)
        {
           
        }
        private void RebindGrid()
        {
            if (Session["OrderList"] != null)
            {
                ShoppingList.DataSource = (List<Product>)Session["OrderList"];
                ShoppingList.DataBind();
            }
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            
            int rowIndex = ((sender as LinkButton).NamingContainer as GridViewRow).RowIndex;

            
            ShoppingList.EditIndex = rowIndex;
            ShoppingList.DataBind();
            //Get the value of column from the DataKeys using the RowIndex.
            //int id = Convert.ToInt32(ShoppingList.DataKeyNames[rowIndex]);
        }
    }
}