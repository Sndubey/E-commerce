<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            max-width: 800px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #2158ab;
        }

        #GridView1 {
            margin-top: 20px;
        }

        #Label1 {
            font-weight: bold;
            font-size: 18px;
            margin-top: 10px;
        }

        #Button1 {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

            #Button1:hover {
                background-color: #0056b3;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Your Cart</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="SerialNumber" HeaderText="Sr. No." />
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="Price (Rs)" DataFormatString="{0:0.00}" />
                </Columns>
            </asp:GridView>

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Buy" OnClientClick="return confirmorder();" />




            <script type="text/javascript">
                function confirmorder() {
                    alert("Order Placed!");
                }
                document.getElementById("Button1").addEventListener("click", confirmorder);
            </script>
        </div>
    </form>
</body>
</html>
