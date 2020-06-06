<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="ASP_BIG_WORK.Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<% $ConnectionStrings:connstr %>"
           SelectCommand="select productor from product"> 
        </asp:SqlDataSource>

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" 
            DataTextField="productor" DataValueField="productor"></asp:DropDownList>

        <asp:SqlDataSource ID="product1" runat="server" ConnectionString="<% $ConnectionStrings:connstr %>" 
            SelectCommand="select id,color,price,productor,name from product where (productor=@productor)">
            <SelectParameters>
                <asp:ControlParameter  ControlID="DropDownList1" Name="productor" PropertyName="SelectedValue"/>
            </SelectParameters>
        </asp:SqlDataSource>


            <asp:SqlDataSource ID="name1" runat="server" ConnectionString="<% $ConnectionStrings:connstr %>"
           SelectCommand="select name from product"> 
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="nameselect" runat="server" ConnectionString="<% $ConnectionStrings:connstr %>" 
            SelectCommand="select id,color,price,productor,name from product where (name=@name)">
            <SelectParameters>
                <asp:ControlParameter  ControlID="DropDownList2" Name="name" PropertyName="SelectedValue"/>
            </SelectParameters>
        </asp:SqlDataSource>


        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="product1">
            </asp:GridView>
            <br />

        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" DataSourceID="name1" 
            DataTextField="name" DataValueField="name"></asp:DropDownList>

            <br />
        </div>
           <div>
            <asp:GridView ID="GridView2" runat="server" DataSourceID="nameselect">
            </asp:GridView>
               <br />
               <br />
               <br />
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
        </div>
     
        
    </form>
</body>
</html>
