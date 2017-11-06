<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OrderControl.ascx.cs" Inherits="WebApplication1.OrderControl" %>
<div style="height: 30px; width: 441px;">
    
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