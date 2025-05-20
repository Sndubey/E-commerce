<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pro_page.aspx.cs" Inherits="pro_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Amazon</title>
    <style type="text/css">
        .main {
            display: flex;
            flex-direction: row;
            margin-top: 20px;
        }

        .flx {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }

        .btn {
            display: flex;
            justify-content: center;
            margin-bottom: 25px;
        }

        .custom-button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-align: center;
            border: none;
            text-decoration: none;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            margin-top: 84px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }


            .custom-button:hover {
                background-color: #08830e;
            }

        .flx {
            display: flex;
            justify-content: space-between;
            background-color: #f0f0f0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 20px;
        }

            .flx div {
                flex: 1;
                text-align: center;
                padding: 5px;
                background-color: #ffffff;
                border: 1px solid rgba(0, 0, 0, 0.61);
                border-radius: 3px;
                margin: 0 5px;
                transition: background-color 0.3s ease;
            }

        .proname {
            font-size: 24px;
            color: #333;
            font-weight: bold;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            margin-bottom: 10px;
            display: flex;
            margin-top: 23px;
            justify-content: center;
        }

        .proprice {
            display: flex;
            justify-content: flex-start;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 18px;
            margin: 10px;
        }

        .prodesc {
            display: flex;
            justify-content: flex-start;
            margin: 8px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 16px;
            margin: 10px;
        }

        img {
            height: 516px;
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- body code -->
            <div class="main">
                <div>
                    <asp:DataList ID="d1" runat="server">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <img src="<%#Eval("pro_img")%>" height="100" width="100" alt="pro_image" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div>
                    <asp:Label ID="proname" CssClass="proname" runat="server"></asp:Label><br />
                    <asp:Label ID="Label1" CssClass="proprice" runat="server" Text="Price: "></asp:Label>
                    <asp:Label ID="proprice" CssClass="proprice" Style="color: rgb(251, 116, 81);" runat="server"></asp:Label><br />
                    <br />
                    <asp:Label ID="Label2" CssClass="prodesc" Style="font-weight: bold;" runat="server" Text="Product Details: "></asp:Label>
                    <asp:Label ID="prodesc" CssClass="prodesc" runat="server"></asp:Label><br />
                    <br />
                    <div class="btn">



                        <div>
                            <asp:Button ID="Button2" CssClass="custom-button" runat="server" Text="Add To Cart" OnClick="Button2_Click" OnClientClick="return showAddToCart();" Style="margin-right: 12px; background-color: #ff9f00;" />
                        </div>
                        <div>
                            <asp:Button ID="Button1" CssClass="custom-button" runat="server" Text="Buy now" OnClientClick="return showOrderConfirmation();" Style="background-color: #fb641b;" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="flx">
                <div>7 Day Replacement</div>
                <div>Cash on Delivery available</div>
                <div>A-assured</div>
            </div>

            <script type="text/javascript">
                function showOrderConfirmation() {
                    alert("Order Placed!");
                }
                document.getElementById("Button1").addEventListener("click", showOrderConfirmation);

                function showAddToCart() {
                    alert("Added To Cart!");
                }
                document.getElementById("Button2").addEventListener("click", showAddToCart);
            </script>
        </div>
    </form>
</body>
</html>
