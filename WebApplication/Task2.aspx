<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 297px">
    
        <asp:DropDownList ID="SelectModeList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SelectModeList_SelectedIndexChanged" Width="111px" Height="23px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="1">predefined</asp:ListItem>
            <asp:ListItem Value="2">custom</asp:ListItem>
        </asp:DropDownList>
    
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="PredefinedPositionList" Visible ="false" runat="server" Width="114px" Height="23px">
            <asp:ListItem>position 1</asp:ListItem>
            <asp:ListItem>position 2</asp:ListItem>
            <asp:ListItem>position 3</asp:ListItem>
            <asp:ListItem>position 4</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="CustomPositionText" Visible ="false" runat="server" Width="110px" Height="17px"></asp:TextBox>    
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SubmitButton" runat="server" Visible ="false" Text="Save" OnClick="SubmitButton_Click" />
    </div>
    </form>
</body>
</html>
