﻿<!-- <%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="AppWeb1._4.Register" %> -->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!DOCTYPE html>
    <html lang="en">

    <head id="Head1" runat="server">
        <meta charset="UTF-8">
        <title>Document</title>
        <link rel="stylesheet" href="css/signup.css" />
    </head>

    <body>
        <form id="form2" runat="server">
            <div class="content">
                <!-- title -->
                <div class="title">
                    <p>註冊</p>
                    <div class="bar"></div>
                </div>
                <!-- 註冊input位置 -->
                <div class="input">
                    <div>
                        <table>
                                <tr>
                                    <td>姓名</td><br/>
                                    <td>
                                        <asp:TextBox CssClass="tb5" ID="User_Name" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="User_Name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input style="text" type="text"><br/></td>
                                </tr>
                                <tr>
                                    <td>帳號</td><br/>
                                    <td>
                                        <asp:TextBox CssClass="tb5" ID="Email" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="請輸入Email格式" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input style="text" type="text"><br/></td>
                                </tr>
                                <tr>
                                    <td>密碼</td><br/>
                                    <td>
                                        <asp:TextBox CssClass="tb5" ID="Pw" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Pw" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input style="text" type="text"><br/></td>
                                </tr>
                            </table>
                    </div>
                </div>
                <div style="position: absolute; top: 72%; left: 30%; width: 40%; height: 8%;">
                    <a href="Login.aspx" target="_parent">
                        <asp:ImageButton ID="regBtn1" ImageUrl="~/img/register.png" Style="height: 100%; width: auto; position: absolute; top: 0%; left: 37%;" runat="server" />
                    </a>
                </div>
                <a href="#">
                    <div class="confirm">
                        <p><a href="#">確認</a></p>
                    </div>
                </a>
            </div>
        </form>
    </body>
    <script src="js/jquery-2.1.4.min.js"></script>
    <script>
    function EvImageOverChange(name, action) {
        switch (action) {
            case 'in':
                name.src = "/img/register.png";
                break;
            case 'out':
                name.src = "/img/register-1.png";
                break;
        }
    }
    </script>

    </html>
