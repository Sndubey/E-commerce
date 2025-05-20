<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Amazon</title>
    <style type="text/css">
         body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: white;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 300px;
            text-align: center;
        }

        .login-label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
        }

        .login-input {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
            outline: none;
        }

        .login-button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
            margin-top: 10px;
        }

        .login-button:hover {
            background-color: #0056b3;
        }

        .signup-button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
            margin-top: 10px;
            text-decoration:none;
        }

        .signup-button:hover {
            background-color: #1a862a;
        }
    </style>
</head>

<body>
    <div class="login-container">
        <h2>Login</h2>
        <form id="form1" runat="server">
            <label for="username" class="login-label">Username<br /> </label>
            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="291px" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            
            <label for="password" class="login-label">Password<br /> </label>
            <asp:TextBox ID="TextBox2" runat="server" Height="26px" OnTextChanged="TextBox2_TextChanged" Width="291px" TextMode="Password"></asp:TextBox>
            
            <asp:Button ID="Button1" CssClass="login-button" runat="server" onclick="Button1_Click" Text="Submit" />
            <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" CssClass="signup-button" onclick="LinkButton1_Click">new user</asp:LinkButton>
        </form>
        
    </div>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
</body>

</html>
