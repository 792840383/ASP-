<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataCRUD.aspx.cs" Inherits="ASP_BIG_WORK.DataCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

        <asp:SqlDataSource ID="product2" runat="server" ConnectionString="<% $ ConnectionStrings:connstr %>"
           SelectCommand="select id,name,price,color,productor from product"
             InsertCommand="insert into product values(id,name,price,productor,color)">
        </asp:SqlDataSource>

            <asp:GridView ID="EditProduct" runat="server" AutoGenerateColumns="false" OnRowCancelingEdit="EditProduct_RowCancelingEdit" OnRowEditing="EditProduct_RowEditing" OnRowUpdating="EditProduct_RowUpdating" OnSelectedIndexChanged="EditProduct_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField HeaderText="操作" ShowEditButton="true"/>
                    <asp:BoundField  DataField="id" HeaderText="ID" ReadOnly="true"/>
                    <asp:BoundField DataField="name" HeaderText="name" />
                    <asp:BoundField DataField="price"  HeaderText="price"/>
                    <asp:BoundField DataField="productor" HeaderText="productor" />
                    <asp:BoundField DataField="color" HeaderText="color" />
                    
                </Columns>
            </asp:GridView>
            <br />
            商品输入：<br />
        </div>
        
        <p>
           id: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
          color:  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
          price:  <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
        </p>
        <p>
         productor:  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
         name:   <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        
    </form>
</body>
</html>
