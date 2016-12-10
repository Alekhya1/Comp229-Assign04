<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModelPage.aspx.cs" Inherits="Comp229_Assign04.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                <img id="Naiser" src='<%# String.Format("/Assets/{0}.jpg", "name")%>' runat="server" class="ImageWidth" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="name" runat="server" Text="Name" Font-Bold="true"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="faction" runat="server" Text="Faction"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="rank" runat="server" Text="Rank"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="_base" runat="server" Text="_Base"></asp:Label>
             
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="size" runat="server" Text="_Size"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="deploymentzone" runat="server" Text="DeploymentZone"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="traits" runat="server" Text="traits"></asp:Label>
                </td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="traitsrepeat">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
        </tr>
        <tr>
            <td>Types</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="repeattypes">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
        </tr>
        <tr>
            <td>defensechart</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="repeatdefensechart">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="<%# (Container.ItemIndex).ToString() %>"></asp:Label>
                                </td>
                                </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="mobility" runat="server" Text="mobility"></asp:Label>
                            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="willpower" runat="server" Text="WillPower"></asp:Label>
               
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="resiliance" runat="server" Text="Resiliance"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="wounds" runat="server" Text="Wounds"></asp:Label>
                
            </td>
        </tr>

        <tr>
            <td>Actions</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="repeatActions">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="labelactions" runat="server" Text="Action"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Name")  %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="labeltype" runat="server" Text="Type"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Type")  %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="labelrating" runat="server" Text="Rating"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Rating")  %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="labelrange" runat="server" Text="Range"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Range")  %>'></asp:Label>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
        </tr>


        <tr>
            <td>Special Abilities</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="repeatSpecialAbilities">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="labelAbilityname" runat="server" Text="Ability"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Ability")  %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="abilitydescritption" runat="server" Text="Description"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Description")  %>'></asp:Label>
                                </td>
                            </tr>

                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
        </tr>

    </table>

    <asp:HyperLink ID="UpdateModel" runat="server" Text="Update"></asp:HyperLink>
</asp:Content>


        "name":"Union Worker",
		"faction":"Teknes",
		"rank":1,
		"base":3,
		"size":2,
		"deploymentZone":"C",
		"traits":["Union Worker"],
		"types":["Infantry"],
		"defenseChart":["OVERPOWER","STRIKE","STRIKE","STRIKE","STRIKE","BLOCK","BLOCK","ARMOR","ARMOR","ARMOR"],
		"mobility":5,
		"willpower":4,
		"resiliance":1,
		"wounds":2,
		"actions":[
			{
				"name":"Savage Blow",
				"type":"Melee",
				"rating":1,
				"range":"0"
			}
		],
		"specialAbilities":[
			{
				"name":"Pain Fulled",
				"description":"While this model has 1 or more damage on it, it gains [+1] Mobility, and its melee attacks gain Unstoppable(1) and [+1] Rating."
			}
</asp:Content>
