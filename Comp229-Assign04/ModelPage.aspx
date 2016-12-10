<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModelPage.aspx.cs" Inherits="Comp229_Assign04.ModelPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Image ID="image" Width="200" Height="200" runat="server" />
   <p>name: <asp:Label ID="gamename" runat="server" /></p>
    <asp:Label ID="UnionWorker" runat="server" />
 <p>faction:   <asp:Label ID="faction" runat="server" /></p>
  <p>rank:  <asp:Label ID="rank" runat="server" /></p>
  <p>base:  <asp:Label ID="base1" runat="server" /></p>
  <p>size:  <asp:Label ID="size" runat="server" /></p>
   <p>deploymentZone: <asp:Label ID="deploymentZone" runat="server" /></p>
    <p>traits:<asp:Repeater ID="traits" runat="server" >
        <ItemTemplate>
            <asp:Label ID="labeltraitsdata" runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
        </ItemTemplate>
        </asp:Repeater></p>
    
   <p>types: <asp:Repeater ID="types" runat="server" >
       <ItemTemplate>
            <asp:Label ID="labeltypesdata" runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
        </ItemTemplate>
        </asp:Repeater></p>
   <p>defenseChart: <asp:Repeater ID="defenseChart" runat="server" >
       <ItemTemplate>
            <asp:Label ID="labeldefencedata" runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
        </ItemTemplate>
        </asp:Repeater></p>
   <p>mobility: <asp:Label ID="mobility" runat="server" /></p>
   <p>willpower: <asp:Label ID="willpower" runat="server" /></p>
  <p>resiliance:  <asp:Label ID="resiliance" runat="server" /></p>
   <p>wounds: <asp:Label ID="wounds" runat="server" /></p>
    <p>actions:<asp:Repeater ID="actions" runat="server" >
        <ItemTemplate><%# Eval("name") %></ItemTemplate>
        <ItemTemplate><%# Eval("type") %></ItemTemplate>
        <ItemTemplate><%# Eval("rating") %></ItemTemplate>
        <ItemTemplate><%# Eval("range") %></ItemTemplate>
         <ItemTemplate><%# Eval("description") %></ItemTemplate>
        </asp:Repeater></p>
   <p>specialAbilities: <asp:Repeater ID="specialAbilities" runat="server" >
    <ItemTemplate><%# Eval("name") %></ItemTemplate>
        <ItemTemplate><%# Eval("description") %></ItemTemplate>
       </asp:Repeater></p>
    <asp:Button ID="update" Text="update" runat="server" OnClick="update_Click" />
</asp:Content>
