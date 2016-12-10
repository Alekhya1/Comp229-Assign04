<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Comp229_Assign04.HomePage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
  <!--image is from www.orderofgamers.com-->
     <div class="col-xs-12 col-md-4" >
    <img src="Assets/Image.jpg"Width="200" />
   </div>
      <!-- Naiser image:https://www.google.ca/search?q=Nasier+from+wrath+of+kings&sa=X&espv=2&biw=1536&bih=759&tbm=isch&tbo=u&source=univ&ved=0ahUKEwj509W_uuXQAhVT22MKHfKKBiUQsAQIJg&dpr=1.25#imgrc=GiGsdz034BBqcM%3A 
    Hadroos Image: https://www.google.ca/search?q=house+hadross&espv=2&biw=1536&bih=710&tbm=isch&tbo=u&source=univ&sa=X&ved=0ahUKEwi4-_6eu-XQAhUU22MKHcc6Cb8QsAQIIA#imgrc=gRDRhEsuws_YdM%3A 
   Shael Han Image:https://www.google.ca/search?q=house+shael+han&espv=2&biw=1536&bih=710&tbm=isch&tbo=u&source=univ&sa=X&ved=0ahUKEwiGmZrWu-XQAhWEMGMKHT4LBygQsAQIIA#imgrc=NqVEFDAnKTdqoM%3A 
     Taknes Image:https://www.google.ca/search?q=house+of+teknes&espv=2&biw=1536&bih=710&tbm=isch&tbo=u&source=univ&sa=X&ved=0ahUKEwi81ej_u-XQAhVE6GMKHYxOAZIQsAQILQ#imgrc=y2pegBE6xmhDuM%3A 
    Goritsi Image:https://www.google.ca/search?q=house+of+goritsi&espv=2&biw=1536&bih=710&tbm=isch&tbo=u&source=univ&sa=X&ved=0ahUKEwjZ2cm-vOXQAhUIymMKHWTTDdwQsAQIJw#imgrc=WBZ4Sjjbxl3f2M%3A -->
     <br />
                      
                       
   <div class="Row" />
    <div class="col-xs-12 col-md-4" />
        
        <br><p>House of Naiser</p><button id="Naiser" width="200" runat="server" href='<%# String.Format("/ModelPage.aspx?name={0}&faction={1}", Eval("name"), Eval("faction")) %>'><img src="Assets/Nasier.jpeg" Width="200"/>
        <br /></button>
       <br ><p>House of Hadross</p><button id="Hadross" width="200"  Onclick="Assets/Hadross.jpeg" runat="server"> <img src="Assets/Hadross.jpeg" width="200"  /><br /></button>
        <br ><p>House of Teknes</p><button id="Teknes" width="200" runat="server"> <img src="Assets/Teknes.jpg" Width="200"/><br /></button>
        <br ><p>House Of Shael Han</p><button id="ShaelHan" width="200" runat="server"> <img src="Assets/Shael-Han.jpg" Width="200" /><br /></button>
        <br ><p>House Of Goritsi</p><button id="Goritsi" width="200" runat="server"> <img src="Assets/Goritsi.jpg" Width="200" /><br /></button>

         <div class="col-sm-0">   
             <asp:Repeater ID="GameRepeater" runat="server" >
                 <ItemTemplate>
                     

                     <asp:HyperLink ID="linkgame" runat="server" Text='<%#Eval("name") %>'
                          NavigateUrl=<%# Eval("name", "~/ModelPage.aspx?ID={0}") %> />
                     


                                          </ItemTemplate>
                 
             </asp:Repeater>
            </div>
                     
   
</asp:Content>
            