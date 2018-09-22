<%@ Page Title="Review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="PizzaSys.Review" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
         <div class="container">
    

    
        <asp:GridView ID="ShoppingList"  CssClass="table table-responsive" runat="server" DataKeyNames="ID"  ShowHeader="true"  AutoGenerateColumns="false"  Visible =" True" >
            <EmptyDataTemplate>
                <h1>Items in Cart</h1>
                <p>No pending order</p>
            </EmptyDataTemplate>
           <Columns>               
               
               <asp:TemplateField HeaderText="CONFIRM YOUR SELECTIONS">
                   <ItemTemplate>
                       <div class="checkoutitems">
                           <div class="checkoutimg" >
                               <asp:Image runat="server" CssClass="img-responsive"  ImageUrl="~/Images/pizza4.jpg" />
                           </div>
                            <div class="checkoutdesc">
                                <h3><asp:Label ID="size" runat="server" Text='<%# string.Concat(Eval("PizzaSize"), " ", Eval("PizzaCrust"), " ", Eval("PizzaType"))%>' /></h3>
                                <p>
                                    <%# Eval("PizzaSauce") %> / <%# Eval("PizzaCheeseType") %> / <%# Eval("Toppings") %> 
                                </p>
                            </div>
                       </div>
                      
                       
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:TemplateField HeaderText="QUANTITY">
                   <ItemTemplate>
                       <asp:TextBox ID="quantity" runat="server" Enabled="false" Text='<%# Bind("Quantity") %>' />
                       <asp:LinkButton runat="server" Text="delete" />
                       
                       <asp:LinkButton ID="edit" runat="server" Text="edit" OnClick="edit_Click" />
                   </ItemTemplate>
                   <EditItemTemplate>
                       <asp:TextBox ID="quantity" runat="server" Text='<%# Bind("Quantity") %>' />
                       <asp:LinkButton runat="server" Text="Update" />
                       <asp:LinkButton runat="server" Text="Cancel" />
                   </EditItemTemplate>
                   

               </asp:TemplateField>
               <asp:TemplateField HeaderText="PRICE">
                   <ItemTemplate>
                       <asp:Label runat="server" Text="123"></asp:Label>
                   </ItemTemplate>

               </asp:TemplateField>
           </Columns>
            
           
        </asp:GridView>
        <asp:panel runat="server" Visible= "false">
             <h4>Order Total: $$$$</h4>
    <div><asp:Button runat="server" CssClass="btn btn-primary navbar-btn" Text="Pay Now" PostBackUrl="~/PickupOptions.aspx" /></div>
        </asp:panel>
    
   
   
    </div>
    </div>
    
</asp:Content>