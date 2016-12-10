<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign04.Update" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="Gamename" runat="server" />
    <asp:TextBox ID="faction" runat="server" />


    <asp:Button ID="update" Text="update" runat="server" OnClick="update_Click" />
</asp:Content>
