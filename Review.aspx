<%@ Page Title="Review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="PizzaSys.Review" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
    <h2>Review/Edit  Your Order Here</h2>

    <p>
        <asp:GridView ID="ITemGrid" runat="server" AutoGenerateColumns="False" Height="16px" Visible =" True" Width="393px">
            <Columns>
                <asp:BoundField DataField="Pizza" HeaderText="ITEM" NullDisplayText="Pizza" />
                <asp:ButtonField Text="EDIT" />
                <asp:ButtonField Text="DELETE" />
            </Columns>
        </asp:GridView>
    </p>
    <h4>Order Total: $$$$</h4>
    <div><asp:Button runat="server" CssClass="btn btn-primary navbar-btn" Text="Pay Now" PostBackUrl="~/PickupOptions.aspx" /></div>
   
    </div>
</asp:Content>