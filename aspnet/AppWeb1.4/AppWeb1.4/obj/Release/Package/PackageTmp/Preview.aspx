﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Preview.aspx.vb" Inherits="AppWeb1._4.Preview" %>

<!DOCTYPE  >
<html prefix="og: http://ogp.me/ns#">

<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <asp:Literal ID="Lmeta" runat="server"></asp:Literal>
    <title>
        iApp Mobile We-Media Platform
    </title>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" href="css/preview.css" />
    <link href="img/favicon.ico" rel="shortcut icon" />
</head>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="Scriptmanager1" runat="server"></asp:ScriptManager>
        <div class="all">
            <div class="buttonbar">
                <section class="allbar">
                    <ul class="buttonList">
                        <li class="list__item">
                            <label class="label--checkbox">
                                <input type="checkbox" class="good">
                            </label>
                        </li>
                        <li class="list__item">
                            <label class="label--checkbox">
                                <input type="checkbox" class="like">
                            </label>
                        </li>
                        <li class="list__item">
                            <label class="label--checkbox">
                                <input type="checkbox" class="startoggle">
                            </label>
                        </li>

                    </ul>
                </section>
            </div>
            <div class="content">
                <div class="phone">
                        <!-- 上一頁＆下一頁 -->
                                           <ul class="netpre">
                            <li onclick="pageUpDown(0)"></li>
                            <li onclick="pageUpDown(1)"></li>
                        </ul>
                    <div class="show">
                        <!-- 標題 -->
                        <div class="smallbar">
                            <p style="color: #F19439; text-align: center; line-height: 50px;">
                                <asp:Literal ID="LaName" runat="server"></asp:Literal>
                            </p>
                            <asp:Literal ID="LID" runat="server" Visible="false"></asp:Literal>
                        </div>
                        <!-- iframe顯示區域 -->
                        <div class="iframe">
                            <asp:Literal ID="LFrame" runat="server"></asp:Literal> 
<%--                            <div id="MIDHIDE" style="position: absolute; top: 0; left: 0; width: 218px; height: 90%; cursor: pointer;">
                                <img src="img/prompt.jpg"  style="width: 100%; height: 100%;" id="prompt" />
                            </div>--%>
                            <!--<iframe src="Pages/cover.htm" scrolling="no" id="midiframe" style="height: 100%; width: 100%; border: 0px"></iframe>-->
                        </div>
                    </div>
                                     
                </div>

                <!-- 完成時候的結果頁面 -->
                <div class="final">
                    <div class="top"></div>
                    <div class="middle">
                        <div class="topImg">
                            <img src="img/pic-22.png" class="topImg1">
                            <img src="img/iapplogo2.png" alt="" class="topImg2">
                        </div>
                        <asp:Literal ID="Qrimg" runat="server"></asp:Literal>

                        <div class="describe">
                            <p style="color: #969696; font-size: 18px; line-height: 25px; margin: 25px 0 0 10px">
                                Digital+數碼數位<br />
                                專注在Digital的思考<br />
                                建構行動自媒體的社群平台
                            </p>
                        </div>
                        <div class="src" id="final">
                            <asp:Literal ID="LUrl" runat="server"></asp:Literal>
                        </div>
                        <div class="sharemore">
                            <ul>
                                <li>
                                    <img id="sharefb" src="img/sharefb.png" alt=""></li>
                                <li>
                                    <img id="sharetwitter" src="img/sharetwitter.png" alt=""></li>
                                <li>
                                    <img id="shareline" src="img/shareline.png" alt=""></li>
                            </ul>
                        </div>
                       
                                <asp:LinkButton ID="NewApps" runat="server" CssClass="create"></asp:LinkButton><%--微創作--%>
                        
                     
                                <asp:LinkButton ID="FBShare" runat="server" OnClientClick="FBShareCK()" CssClass="share"></asp:LinkButton><%--熱分享--%>
                         
                    </div>
                    <div class="bottom"></div>
                </div>

                <!-- logo＆company tiltle -->
                <img class="logo" src="img/bgimg.png" />
                <div style="position: fixed; top: 620px; right: 10px;">
                    <img src="img/logo-digital.png" border="0">
                </div>
            </div>
        </div>
    </form>
    <script type="text/jscript" src="js/jquery-2.1.4.min.js"></script>


    <script type="text/javascript">
       
        function pageUpDown(todo) {
            window.frames["midiframe"].TurnUpDown(todo);
        }
        function Tmpiframe() {
            window.frames["midiframe"].pageturn();
        }

        (function () {
            document.addEventListener('keyup', function (event) { event.preventDefault(); }, false);
            $(document).keyup(function () {
                document.all["MIDHIDE"].style.visibility = "hidden";
                Tmpiframe();

                // window.midiframe.pageturn();
                //document.getElementById('midiframe').contentWindow.pageturn();
                // alert("asdsad");
            });
        })();
        $(document).ready(function () {
            var openOption = 'width=400,height=400';
            $("#sharefb").click(function () {
                SendAjax('http://www.iapp-media.com/act/share.aspx?to=2&i=' + getQValue("i"));
                window.open('https://www.facebook.com/sharer.php?u=' + $("#final").text(), '_blank', openOption);
            });

            $("#sharetwitter").click(function () {
                SendAjax('http://www.iapp-media.com/act/share.aspx?to=2&i=' + getQValue("i"));
                window.open('http://twitter.com/intent/tweet?text=' + $("#final").text(), '_blank', openOption);
            });

            $("#shareline").click(function () {
                SendAjax('http://www.iapp-media.com/act/share.aspx?to=3&i=' + getQValue("i"));
                window.open('http://line.naver.jp/R/msg/text/?' + $("#final").text(), '_blank', openOption);
            });

        });
        function FBShareCK() {
            SendAjax('http://www.iapp-media.com/act/share.aspx?to=2&i=' + getQValue("i"));
            window.open('https://www.facebook.com/sharer.php?u=' + $("#final").text(), '_blank', 'width=400,height=400');
        }

        function getQValue(varname) {
            var url = window.location.href;
            var qparts = url.split("?");
            if (qparts.length <= 1) {
                return "";
            } else {
                var query = qparts[1];
                var vars = query.split("&amp;");
                var value = "";
                for (i = 0; i < vars.length; i++) {
                    var parts = vars[i].split("=");
                    if (parts[0] == varname) {
                        value = parts[1];
                        break;
                    }
                }
                value = unescape(value);
                value.replace(/\+/g, " ").replace("#", "");
                return value;
            }
        }
        function SendAjax(sendurl) {
            var result = '';
            $.ajax({
                type: 'GET',
                url: sendurl,
                success: function (w) {
                    return 'success';
                },
                error: function () {
                    return 'err';
                }
            });
        }
    </script>
</body>
</html>
