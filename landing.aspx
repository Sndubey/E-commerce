<%@ Page Title="Amazon" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="landing.aspx.cs" Inherits="_Default" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong" />
        <style type="text/css">
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
                transform: scale(1.1);
                transition: transform 0.3s ease;
            }

            h2 {
                text-align: center;
                font-family: "Trirong", serif;
                color: #537aa1;
            }

            p {
                color: black;
                font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            }
        </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <h2>For You</h2>
        <div class="grid-container" id="zoom">
            <div class="grid-item">
                <a href="pro_page.aspx?data=1"><img id="Image1" src="img/landimg/img1.jpg" height="284px" width="284px"
                        alt="image" /></a>
                <p>Wildcraft Men solid casual jacket</p>
                <p>&#8377;489</p>
            </div>
            <div class="grid-item">
                <a href="pro_page.aspx?data=2"><img id="Image2" src="img/landimg/img2.jpg" height="284px" width="284px"
                        alt="image" /></a>
                <p>SAB bags Medium Light Weight</p>
                <p>&#8377;429</p>
            </div>
            <div class="grid-item">
                <a href="pro_page.aspx?data=3"><img id="Image3" src="img/landimg/img3.png" height="284px" width="284px"
                        alt="image" /></a>
                <p>Signature Shacket Men Solid padded Jacket</p>
                <p>&#8377;999</p>
            </div>
            <div class="grid-item">
                <a href="pro_page.aspx?data=4"><img id="Image4" src="img/landimg/img4.png" height="284px" width="284px"
                        alt="image" /></a>
                <p>Men Regular Fit Casual Shirt</p>
                <p>&#8377;809</p>
            </div>
        </div>
        <h2>Today Trending</h2>
        <div class="grid-container">
            <div class="grid-item">
                <a href="pro_page.aspx?data=5"><img src="img/landimg/img5.jpeg" height="284px" width="284px"
                        alt="image" /></a>
                    <p>Lite Sports Shoes Running Shoes</p>
                    <p>&#8377;508</p>
            </div>
            <div class="grid-item">
                <a href="pro_page.aspx?data=6"><img src="img/landimg/img6.jpg" height="284px" width="284px"
                        alt="image" /></a>
                <p>Tees Analog Watch - For Men</p>
                <p>&#8377;4209</p>
            </div>
            <div class="grid-item">
                <a href="pro_page.aspx?data=7"><img src="img/landimg/img7.jpeg" height="284px" width="284px"
                        alt="image" /></a>
                <p>Expro universal black mobile holder</p>
                <p>&#8377;179</p>
            </div>
            <div class="grid-item">
                <a href="pro_page.aspx?data=8"><img src="img/landimg/img8.jpg" height="284px" width="284px"
                        alt="image" /></a>
                <p>Intex wired gaming kb+ms (it-kb334)</p>
                <p>&#8377;699</p>
            </div>
        </div>
        <h2>Best Sellers</h2>
        <div class="grid-container">
            <div class="grid-item">
                <a href="pro_page.aspx?data=9"><img src="img/landimg/img9.jpg" height="284px" width="284px"
                        alt="image" /></a>
                <p>Nothing Phone (2) (White, 512 GB)</p>
                <p>&#8377;54,999</p>
            </div>
            <div class="grid-item">
                <a href="pro_page.aspx?data=10"><img src="img/landimg/img10.jpg" height="284px" width="284px"
                        alt="image" /></a>
                <p>APPLE WatchSeries7(41mm)</p>
                <p>&#8377;50900</p>
            </div>
            <div class="grid-item">
                <a href="pro_page.aspx?data=11"><img src="img/landimg/img11.jpg" height="284px" width="284px"
                        alt="image" /></a>
                <p>Canon EOS M50 Mark II Mirrorless Camera</p>
                <p>&#8377;58,999</p>
            </div>
            <div class="grid-item">
                <a href="pro_page.aspx?data=12"><img src="img/landimg/img12.jpg" height="284px" width="284px"
                        alt="image" /></a>
                <p>SAMSUNG Neo QLED 189 cm</p>
                <p>&#8377;7,34,990</p>
            </div>

        </div>
    </asp:Content>