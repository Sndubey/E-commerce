<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Amazon</title>
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: space-between;
            background-color: #537aa1;
        }

        .nav {
            display: flex;
            justify-content: space-around;
        }

        .style1 {
            height: 76px;
            width: 106px;
        }

        .style2 {
            width: 2048px;
            height: 2048px;
        }

        #Panel1 {
            margin: 3px;
            padding-top: 13px;
        }

        input[type=text] {
            padding: 6px;
            margin-top: 18px;
            font-size: 17px;
            border: none;
            width: 373px;
        }

        .nav-item {
            text-decoration: none;
            color: rebeccapurple;
            font-weight: bold;
            font-size: 20px;
        }

            .nav-item:hover {
                background-color: #537aa1;
            }

        .auto-style1 {
            height: 50px;
            width: 46px;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(3, 1fr); /* Three columns */
            grid-gap: 10px; /* Gap between grid items */
            text-align: center; /* Center text within grid items */
            color: white; /* Text color for grid items */
            margin: 0 auto;
        }

            .grid-container > div {
                padding: 10px;
                font-size: 17px;
            }

        footer {
            background-color: #537aa1;
            padding-top: 12px;
            padding-bottom: 12px;
        }

        .auto-style3 {
            height: 192px;
        }

        .auto-style4 {
            height: 164px;
        }

        .auto-style5 {
            height: 167px;
            text-align: center;
            width: 772px;
        }

        .auto-style6 {
            height: 164px;
            width: 772px;
        }

        .auto-style7 {
            height: 192px;
            width: 772px;
        }

        .grid-container {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            padding: 10px;
        }

        .grid-item {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            font-size: 25px;
            text-align: center;
        }

            .grid-item img:hover {
                transform: scale(1.1); /* You can adjust the scale factor as needed */
                transition: transform 0.3s ease;
            }

        h2 {
            text-align: center;
            font-family: "Trirong", serif;
            color: #537aa1;
        }
        p{
            color:black;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <img src="img/masterimg/png1.png" style="margin-top: 13px; margin-bottom: 10px; height: 50px; width: 112px;" alt="img" />
            </div>
            <div>
                <div class="search-container">
                    <form action="/">
                        <input type="text" placeholder="Search.." name="search" />
                    </form>
                </div>
            </div>
            <div>
                <img alt="cart" class="auto-style1" src="img/masterimg/png2.png" style="padding-right: 8px; margin-top: 10px;" />
            </div>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="34px">
            <div class="nav">
                <div>
                    <asp:DropDownList ID="DropDownList1" CssClass="nav-item" runat="server">
                        <asp:ListItem Text="Fashion" Value="Fashion" />
                        <asp:ListItem>Men</asp:ListItem>
                        <asp:ListItem>Women</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div>
                    <asp:HyperLink ID="HyperLink1" CssClass="nav-item" runat="server" NavigateUrl="grocery.aspx">Grocery</asp:HyperLink>
                </div>
                <div>
                    <asp:HyperLink ID="HyperLink2" CssClass="nav-item" runat="server">Kids</asp:HyperLink>
                </div>
                <div>
                    <asp:HyperLink ID="HyperLink3" CssClass="nav-item" runat="server">Electronics</asp:HyperLink>
                </div>
                <div>
                    <asp:HyperLink ID="HyperLink4" CssClass="nav-item" runat="server" NavigateUrl="login.aspx">Sign In
                    </asp:HyperLink>
                </div>
            </div>
        </asp:Panel>

        <h2>For You</h2>
        <div class="grid-container" id="zoom">
            <div class="grid-item">
                <img src="img/landimg/img1.jpg" height="284px" width="284px" />
                <p>Wildcraft Men solid casual jacket</p>
                <p>&#8377;489</p>
            </div>
            <div class="grid-item">
                <img src="img/landimg/img2.jpg" height="284px" width="284px" />
                <p>SAB bags Medium Light Weight</p>
                <p>&#8377;429</p>
            </div>
            <div class="grid-item">
                <img src="img/landimg/img3.png" height="284px" width="284px" />
                <p>Signature Shacket Men Solid padded Jacket</p>
                <p>&#8377;999</p>
            </div>
            <div class="grid-item">
                <img src="img/landimg/img4.png" height="284px" width="284px" />
                <p>Men Regular Fit Casual Shirt</p>
                <p>&#8377;809</p>
            </div>
        </div>
        <h2>Today Trending</h2>
        <div class="grid-container">
            <div class="grid-item">
                <img src="img/landimg/img5.jpeg" height="284px" width="284px" />
                <p>Lite Sports Shoes Running Shoes</p>
                <p>&#8377;508</p>
            </div>
            <div class="grid-item">
                <img src="img/landimg/img6.jpg" height="284px" width="284px" />
                <p>Tees Analog Watch - For Men</p>
                <p>&#8377;4209</p>
            </div>
            <div class="grid-item">
                <img src="img/landimg/img7.jpeg" height="284px" width="284px" />
                <p>Expro universal black mobile holder</p>
                <p>&#8377;179</p>
            </div>
            <div class="grid-item">
                <img src="img/landimg/img8.jpg" height="284px" width="284px" />
                <p>Intex wired gaming kb+ms (it-kb334)</p>
                <p>&#8377;699</p>
            </div>

        </div>
        <h2>Best Sellers</h2>
        <div class="grid-container">
            <div class="grid-item">
                <img src="img/landimg/img9.jpg" height="284px" width="284px" />
                <p>Nothing Phone (2) (White, 512 GB)</p>
                <p>&#8377;54,999</p>
            </div>
            <div class="grid-item">
                <img src="img/landimg/img10.jpg" height="284px" width="284px" />
                <p>APPLE WatchSeries7(41mm)</p>
                <p>&#8377;50900</p>
            </div>
            <div class="grid-item">
                <img src="img/landimg/img11.jpg" height="284px" width="284px" />
                <p>Canon EOS M50 Mark II Mirrorless Camera</p>
                <p>&#8377;58,999</p>
            </div>
            <div class="grid-item">
                <img src="img/landimg/img12.jpg" height="284px" width="284px" />
                <p>SAMSUNG Neo QLED 189 cm</p>
                <p>&#8377;7,34,990</p>
            </div>

        </div>

        <footer>
            <div class="grid-container">
                <div>Contact us</div>
                <div>About us</div>
                <div>Careers</div>
                <div>Payments</div>
                <div>Shipping</div>
                <div>FAQ</div>
                <div>Facebook</div>
                <div>Twitter</div>
                <div>Instagram</div>
            </div>
            <center class="copyright">
                &copy; 2023 Archies - All Rights Reserved.
            </center>
        </footer>

    </form>
</body>
</html>
