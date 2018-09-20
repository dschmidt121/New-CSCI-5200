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
                        <asp:DropDownList ID="DropDownList6" runat="server"  Width="201px" align="centre" BackColor="#FFCCFF">
                            <asp:ListItem Text ="Pepperoni" Value="pizza type"></asp:ListItem>
                            <asp:ListItem Text ="Margherita" Value="pizza type"></asp:ListItem>
                            <asp:ListItem Text ="Hawaiian" Value="pizza type"></asp:ListItem>
                            <asp:ListItem Text ="SeaFood" Value="pizza type"></asp:ListItem>


                        </asp:DropDownList>
                        <br />
                       
                        <br />
                        Pizza Size<br />
                        <asp:DropDownList ID="DropDownList1" runat="server"  Width="201px" align="centre" BackColor="#FFCCFF">
                            <asp:ListItem Text ="12" Value="size"></asp:ListItem>
                            <asp:ListItem Text ="14" Value="size"></asp:ListItem>
                            <asp:ListItem Text ="16" Value="size"></asp:ListItem>

                        </asp:DropDownList>
                        <br />
                       
                        <br />
                        Crust<br />
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="180px" BackColor="#FFCCFF">
                            <asp:ListItem Text="Select" Value="Toppings"></asp:ListItem>
                            <asp:ListItem Text="Thin" Value="crust"></asp:ListItem>
                            <asp:ListItem Text="Flat Bread" Value="crust"></asp:ListItem>
                            <asp:ListItem Text="Thick" Value="crust"></asp:ListItem>
                            <asp:ListItem Text="Focaccia" Value="crust"></asp:ListItem>
                            <asp:ListItem Text="Neapolitan" Value="crust"></asp:ListItem>
               

                        </asp:DropDownList>
                        <br />
                        <br />
                        Sauce<br />
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="168px" BackColor="#FFCCFF">
                            <asp:ListItem Text="Select" Value="Toppings"></asp:ListItem>
                            <asp:ListItem Text="Select" Value="Toppings"></asp:ListItem>
                            <asp:ListItem Text="Pesto" Value="Sauce"></asp:ListItem>
                            <asp:ListItem Text="Bechamel" Value="Sauce"></asp:ListItem>
                            <asp:ListItem Text="BBQ Sauce" Value="Sauce"></asp:ListItem>
                            <asp:ListItem Text="Pepper Jelly" Value="Sauce"></asp:ListItem>
                            <asp:ListItem Text="Tapenade" Value="Sauce"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Cheese<br />
                        <asp:DropDownList ID="DropDownList4" runat="server" Width="162px" BackColor="#FFCCFF">
                            <asp:ListItem Text="Select" Value="Toppings"></asp:ListItem>
                            <asp:ListItem Text="Mozarella" Value="Cheese"></asp:ListItem>
                            <asp:ListItem Text="Cheddar cheese" Value="Cheese"></asp:ListItem>
                            <asp:ListItem Text="Colby cheese" Value="Cheese"></asp:ListItem>
                            <asp:ListItem Text="Emmental cheese" Value="Cheese"></asp:ListItem>
                            <asp:ListItem Text="Gruyère cheese" Value="Cheese"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Toppings
                        <br />
                        <asp:DropDownList ID="DropDownList5" runat="server" Width="156px" BackColor="#FFCCFF">
                            <asp:ListItem Text="Select" Value="Toppings"></asp:ListItem>
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
                        <asp:TextBox ID="TextBox2" runat="server" Width="50px" BackColor="#FFCCFF" BorderStyle="NotSet"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Amount"></asp:Label> <br />   
                        <asp:TextBox ID="TextBox1" runat="server" Width="73px" BackColor="#FFCCFF"></asp:TextBox>
            
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Review.aspx" Text="Add To Order" style="margin-right: 500px" BackColor="#FF3300" ForeColor="White" />
                    </asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>

            </asp:Table>
                
            
           
        </div>
  </div>

</asp:Content>