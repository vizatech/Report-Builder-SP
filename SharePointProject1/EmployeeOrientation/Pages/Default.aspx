<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SearchWebControls" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>



<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Archivation module 
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <%-- Navigation Group of links to pages--%>
    <p>
        <asp:HyperLink runat="server" 
        NavigateUrl="JavaScript:window.location = _spPageContextInfo.webAbsoluteUrl + '/Lists/InputList/AllItems.aspx';" 
        Text="Input list" />

        <asp:HyperLink runat="server" 
        NavigateUrl="JavaScript:window.location = _spPageContextInfo.webAbsoluteUrl + '/Lists/OutputList/AllItems.aspx';" 
        Text="Output list" />

        <asp:HyperLink runat="server" 
        NavigateUrl="JavaScript:window.location = _spPageContextInfo.webAbsoluteUrl + '/Pages/ChrisOBrienWebParts.aspx';" 
        Text="Chris O'Brien webparts" />

        <asp:HyperLink runat="server" 
        NavigateUrl="JavaScript:window.location = _spPageContextInfo.webAbsoluteUrl + '/Pages/PureWebPart.aspx';" 
        Text="Pure webpart for test" />
    </p>
    <br />

    <h1>Custom webpart zone</h1>
    <br />   
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="HomePageZone" Title="loc:full" />
    <br />

<%-- 
    <h1>XsltListView web part:</h1>
    <br />   
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone2">
        <WebPartPages:XsltListViewWebPart ID="XsltListViewWebPart_AppWeb" 
            runat="server" ListUrl="Lists/OutputList" IsIncluded="True" 
            NoDefaultStyle="TRUE" Title="XsltListView web part" PageType="PAGE_NORMALVIEW" 
            Default="False" ViewContentTypeId="0x"> 
        </WebPartPages:XsltListViewWebPart>  
    </WebPartPages:WebPartZone>
    <br />

    <h1>XsltListView web part - host web:</h1>
    <br />   
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone3">
        <WebPartPages:XsltListViewWebPart ID="XsltListViewWebPart_HostWeb" 
            runat="server" ListUrl="http://vizatech.westeurope.cloudapp.azure.com/sites/dev/Lists/List" IsIncluded="True" 
            NoDefaultStyle="TRUE" Title="XsltListView web part - host web" PageType="PAGE_NORMALVIEW" 
            Default="False" ViewContentTypeId="0x"> 
        </WebPartPages:XsltListViewWebPart>  
    </WebPartPages:WebPartZone>
    <br />
--%>

</asp:Content>

