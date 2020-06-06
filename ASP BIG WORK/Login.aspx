<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP_BIG_WORK.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录界面</title>
    <style>
        html {
            background-color: #B5DEF2;
        }
        .Login{
            margin-left: 35%;
            margin-top: 100px;
            width: 400px;
            height: 261px;
        }
        .LoginButton{
              color: darkcyan;
            border-top: 0px solid #FFF;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            line-height: 28px;
            overflow: hidden;
            padding: 20px 24px;
            vertical-align:central;
            filter: alpha(Opacity=80);
            opacity: 0.5;
        }
        #txtname{
              border: 1px solid #D2D9dC;
            border-radius: 2px;
            color: #444;
            font: 12px 'Microsoft YaHei', '微软雅黑';
            padding: 8px 14px;
            margin-bottom: 8px;
            margin-top: 0px;
        }
        #txtname:focus{
            border: 1px solid #B7D4EA;
            box-shadow: 0 0 8px #B7D4EA;
        }
        #txtpwd{
                border: 1px solid #B7D4EA;
            box-shadow: 0 0 8px #B7D4EA;
        }
        #txtpwd{
             border: 1px solid #D2D9dC;
            border-radius: 2px;
            color: #444;
            font: 12px 'Microsoft YaHei', '微软雅黑';
            padding: 8px 14px;
            margin-bottom: 8px;
            }
        #Button1{
            border: 1px solid #98CCE7;
            border-radius: 20px;
            box-shadow: inset rgba(255, 255, 255, 0.6) 0 1px 1px, rgba(0, 0, 0, 0.1) 0 1px 1px;
            color: #444;
            cursor: pointer;
            float:left;
            font: bold 13px Arial;
            padding: 10px 50px;
        }
        #Button2{
           
            border: 1px solid #98CCE7;
            border-radius: 20px;
            box-shadow: inset rgba(255, 255, 255, 0.6) 0 1px 1px, rgba(0, 0, 0, 0.1) 0 1px 1px;
            color: #444;
            /*登录*/
            cursor: pointer;
            float: right;
            font: bold 13px Arial;
            padding: 10px 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Login">
         <div class="LoginBox">
            <p><label for="username">用户名：</label></p>
            <asp:TextBox ID="txtname" runat="server" Height="33px" Width="376px"></asp:TextBox>
            <br />
             <p><label for="username">密码：</label></p>
            <asp:TextBox ID="txtpwd" runat="server" Height="32px" Width="377px"></asp:TextBox>
        </div>
         <div class="LoginButton">
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" />
           <asp:Button ID="Button2" runat="server" Text="登录" OnClick="Button2_Click" />
        </div>
        </div>
        
    </form>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href ="AdminLogin.aspx">我是管理员</a>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <font color="#FFFFFF" face="Times New Roman" size="5"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			Copyright © 2012 by WenLiang Yu. All rights reserved. 

       </b></font>
    </p>
</body>
</html>
