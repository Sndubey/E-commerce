<%@ Page Title="Amazon" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="grocery.aspx.cs" Inherits="grocery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    p{
        color:black;
        font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2>For You</h2>
    <div class="grid-container" id="zoom">
        <div class="grid-item">
            <a href="pro_info.aspx?data=0"><img id="Image1" src="img/grocery/img1.jpg" height="284px" width="284px" /></a>
            <p>Nut Toppers Premium Arabian Dates</p>
            <p>&#8377;169</p>
        </div>
        <div class="grid-item">
            <a href="pro_info.aspx?data=0"><img id="Image2" src="img/grocery/img2.jpg" height="284px" width="284px" /></a>
            <p>Peanut Butter Creamy 510GM in Bucket</p>
            <p>&#8377;229</p>
        </div>
        <div class="grid-item">
            <a href="pro_info.aspx?data=3"><img id="Image3" src="img/grocery/img3.jpeg" height="284px" width="284px" /></a>
            <p>Himalayan Natives Polished Rice 5 kg</p>
            <p>&#8377;499</p>
        </div>
        <div class="grid-item">
            <a href="pro_info.aspx?data=4"><img id="Image4" src="img/grocery/img4.jpg" height="284px" width="284px" /></a>
            <p>Colonel KUSHWAHA/S Arhar Dal 2 kg Pack of 4</p>
            <p>&#8377;389</p>
        </div>
    </div>
    <h2>Recommended</h2>
    <div class="grid-container">
        <div class="grid-item">
            <img src="img/grocery/img5.jpg" height="284px" width="284px" />
            <p>Masala Potli Dry Ginger Root Powder | Aadarak Powder</p>
            <p>&#8377;219</p>
        </div>
        <div class="grid-item">
            <img src="img/grocery/img6.jpg" height="284px" width="284px" />
            <p>AGRI CLUB Garam Masala Whole 100 gm</p>
            <p>&#8377;209</p>
        </div>
        <div class="grid-item">
            <img src="img/grocery/img7.jpg" height="284px" width="284px" />
            <p>Tassyam Chai Masala Powder 80 gm</p>
            <p>&#8377;299</p>
        </div>
        <div class="grid-item">
            <img src="img/grocery/img8.png" height="284px" width="284px" />
            <p>AGRICLUB Turmeric Powder 200 gm</p>
            <p>&#8377;179</p>
        </div>

    </div>
        <h2>Best Sellers</h2>
<div class="grid-container">
    <div class="grid-item">
        <img src="img/grocery/img9.jpg" height="284px" width="284px" />
        <p>AGRI CLUB AMARANTH FLOUR/RAJGIRA ATTA 500 gm</p>
        <p>&#8377;249</p>
    </div>
    <div class="grid-item">
        <img src="img/grocery/img10.png" height="284px" width="284px" />
        <p>Ketofy Low-Carb Noodles 200 gm</p>
        <p>&#8377;349</p>
    </div>
    <div class="grid-item">
        <img src="img/grocery/img11.jpg" height="284px" width="284px" />
        <p>NourishVitals Multigrain Sugar Free Cookies </p>
        <p>&#8377;549</p>
    </div>
    <div class="grid-item">
        <img src="img/grocery/img12.jpg" height="284px" width="284px" />
        <p>Naman Pure Desi Ghee 1 l</p>
        <p>&#8377;725</p>
    </div>

</div>
</asp:Content>

