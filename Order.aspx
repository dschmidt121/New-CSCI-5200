<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="PizzaSys.Order" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  <div class="container" style="margin-top: 30px;">
         <div style="padding:30px; background-color:#99CCFF" >
            <asp:Table runat="server" Height="463px" Width="897px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" Width ="300">
                        <p><strong>Build Your Own Pizza</strong></p>
                        <img src ="image/images1.jpg" height="300px" width="250px"/>
                    </asp:TableCell>
                    <asp:TableCell runat="server" Font-Names="cent" VerticalAlign="Middle">
                        Pizza Type<br />
                        <asp:DropDownList ID="drpType" runat="server"  Width="201px" align="centre" BackColor="#FFCCFF">
                            <asp:ListItem Text ="Pepperoni" Value="Pepperoni"></asp:ListItem>
                            <asp:ListItem Text ="Margherita" Value="Margherita"></asp:ListItem>
                            <asp:ListItem Text ="Hawaiian" Value="Hawaiian"></asp:ListItem>
                            


                        </asp:DropDownList>
                        <br />
                       
                        <br />
                        Pizza Size<br />
                        <asp:DropDownList ID="drpSize" runat="server"  Width="201px" align="centre" BackColor="#FFCCFF">
                            <asp:ListItem  Text ="12&quot;" Value="12&quot;"></asp:ListItem>
                            <asp:ListItem Text ="14&quot;" Value="14&quot;"></asp:ListItem>
                            <asp:ListItem Text ="16&quot;" Value="16&quot;"></asp:ListItem>

                        </asp:DropDownList>
                        <br />
                       
                        <br />
                        Crust<br />
                        <asp:DropDownList ID="drpCrust" runat="server" Width="180px" BackColor="#FFCCFF">
                            <asp:ListItem Text="Thin" Value="Thin"></asp:ListItem>
                            <asp:ListItem Text="Flat Bread" Value="Flat Bread"></asp:ListItem>
                            <asp:ListItem Text="Thick" Value="Thick"></asp:ListItem>
                            <asp:ListItem Text="Focaccia" Value="Focaccia"></asp:ListItem>
                            <asp:ListItem Text="Neapolitan" Value="Neapolitan"></asp:ListItem>
               

                        </asp:DropDownList>
                        <br />
                        <br />
                        Sauce<br />
                        <asp:DropDownList ID="drpSauce" runat="server" Width="168px" BackColor="#FFCCFF">
                            <asp:ListItem Text="None" Value="No Sauce"></asp:ListItem>
                            <asp:ListItem Text="Pesto" Value="Pesto"></asp:ListItem>
                            <asp:ListItem Text="Bechamel" Value="Bechamel"></asp:ListItem>
                            <asp:ListItem Text="BBQ Sauce" Value="BBQ Sauce"></asp:ListItem>
                            <asp:ListItem Text="Pepper Jelly" Value="Pepper Jelly"></asp:ListItem>
                            <asp:ListItem Text="Tapenade" Value="Tapenade"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Cheese<br />
                        <asp:DropDownList ID="drpCheese" runat="server" Width="162px" BackColor="#FFCCFF">
                            <asp:ListItem Text="None" Value="No Cheese"></asp:ListItem>
                            <asp:ListItem Text="Mozarella" Value="Mozarella"></asp:ListItem>
                            <asp:ListItem Text="Cheddar cheese" Value="Cheddar cheese"></asp:ListItem>
                            <asp:ListItem Text="Colby cheese" Value="Colby cheese"></asp:ListItem>
                            <asp:ListItem Text="Emmental cheese" Value="Emmental cheese"></asp:ListItem>
                            <asp:ListItem Text="Gruyère cheese" Value="Gruyère cheese"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Toppings
                        <br />
                        <asp:DropDownList ID="drpToppings" runat="server" Width="156px" BackColor="#FFCCFF">
                            <asp:ListItem Text="Select" Value="None Toppings"></asp:ListItem>
                            <asp:ListItem Text="Pepperoni" Value="Toppings"></asp:ListItem>
                            <asp:ListItem Text="Bacon" Value="Toppings"></asp:ListItem>
                            <asp:ListItem Text="Sausage" Value="Toppings"></asp:ListItem>
                            <asp:ListItem Text="Green peppers" Value="Toppings"></asp:ListItem>
                            <asp:ListItem Text="Mushrooms" Value="Toppings"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Quantity
                        <br />
                        <asp:TextBox ID="txtQuantity" TextMode="Number" runat="server" Width="50px" BackColor="#FFCCFF" BorderStyle="NotSet"></asp:TextBox>
                        <br />
                       
            
                        <br />
                        <br />
                        <asp:Button ID="AddToCart" runat="server" OnClick="AddToCart_Click" Text="Add To Order" style="margin-right: 500px" BackColor="#FF3300" ForeColor="White" />
                    </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>

            </asp:Table>
                
            
           
        </div>
  </div>

</asp:Content>