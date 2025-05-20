<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html
        PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<link rel="stylesheet" href="StyleSheet.css" />
<head id="Head1" runat="server">
    <title>Amazon</title>
    <style type="text/css">
        body {
            background-color: Gray;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .card {
            background-color: white;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 500px;
            text-align: center;
        }

        .center {
            display: flex;
            justify-content: center;
            margin-top: 14px;
            row-gap: 12px;
        }

        .style1 {
            width: 100%;
        }

        .style2 {
            width: 324px;
            text-align: right;
        }

        .style3 {
            width: 203px;
        }

        .style4 {
            width: 324px;
            text-align: right;
            height: 18px;
        }

        .style5 {
            width: 203px;
            height: 18px;
        }

        .style6 {
            height: 18px;
        }

        .style7 {
            width: 324px;
            text-align: right;
            height: 23px;
        }

        .style8 {
            width: 203px;
            height: 23px;
        }

        .style9 {
            height: 23px;
        }

        .style10 {
            width: 324px;
            text-align: right;
            height: 39px;
        }

        .style11 {
            width: 203px;
            height: 39px;
        }

        .style12 {
            height: 39px;
        }

        #Reset1 {
            width: 57px;
            margin-left: 70px;
        }
        .auto-style1 {
            width: 324px;
            text-align: right;
            height: 50px;
        }
        .auto-style2 {
            width: 203px;
            height: 50px;
        }
        .auto-style3 {
            height: 50px;
            width: 80px;
        }
        .auto-style4 {
            height: 23px;
            width: 80px;
        }
        .auto-style5 {
            height: 39px;
            width: 80px;
        }
        .auto-style6 {
            height: 18px;
            width: 80px;
        }
        .auto-style7 {
            width: 80px;
        }
    </style>

    <script language="javascript" type="text/javascript">
        // <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</head>

<body>
    <div class="card">
        <div
            style="text-align: center; font-size: larger; color: rgb(245, 95, 120); font-family: 'Courier New', Courier, monospace;">
            Registration
        </div>
        <div class="center">
            <form id="form1" runat="server">
                <table class="style1">
                    <tr>
                        <td class="style7"
                            style="font-family: 'Courier New', Courier, monospace; font-weight: bold; font-variant: normal; color: #FF00FF">username:</td>
                        <td class="style8">
                            <asp:TextBox ID="TextBox1" runat="server" Width="188px"></asp:TextBox>
                        </td>
                        <td class="auto-style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="TextBox1" ErrorMessage="username required" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10"
                            style="font-family: 'Courier New', Courier, monospace; font-weight: bold; font-variant: normal; color: #FF00FF">E-mail:</td>
                        <td class="style11">
                            <asp:TextBox ID="TextBoxemail" runat="server" Width="188px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="TextBoxemail" ErrorMessage="enter valid email" ForeColor="Red"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            </asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"
                            style="font-family: 'Courier New', Courier, monospace; font-weight: bold; font-variant: normal; color: #FF00FF">password:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox2" runat="server" Width="188px" TextMode="Password"
                                OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="TextBox2" ErrorMessage="password required" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td class="style4"
                            style="font-family: 'Courier New', Courier, monospace; font-weight: bold; font-variant: normal; color: #FF00FF">confirm-password:</td>
                        <td class="style5">
                            <asp:TextBox ID="TextBox3" runat="server" Width="188px" TextMode="Password"
                                OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                        </td>
                        <td class="auto-style6">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                                ControlToValidate="TextBox3" ErrorMessage="both password must be same" ForeColor="Red">
                            </asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2"
                            style="font-family: 'Courier New', Courier, monospace; font-weight: bold; font-variant: normal; color: #FF00FF">country:</td>
                        <td class="style3">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="194px" Height="19px"
                                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>select item</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>usa</asp:ListItem>
                                <asp:ListItem>china</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style7">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="DropDownList1" ErrorMessage="country required" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">&nbsp;</td>
                        <td class="style3">
                            <asp:Button ID="Button1" runat="server" Text="Submit" Width="57px"
                                OnClick="Button1_Click" />
                            <input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()" /></td>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
        
        
</body>

</html>
