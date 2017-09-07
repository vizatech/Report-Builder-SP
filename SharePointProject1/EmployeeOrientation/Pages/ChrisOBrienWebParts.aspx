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
    Examples for webparts 
</asp:Content>


<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <h1>Content Query web part:</h1>
    <br />   
        <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone1">
            <PublishingWebControls:ContentByQueryWebPart ID="CQWP1" runat="server" 
                Title="Content Query web part" 
                ListName="Projects" 
                MainXslLink="http://vizatech.westeurope.cloudapp.azure.com/sites/dev">
            </PublishingWebControls:ContentByQueryWebPart>
        </WebPartPages:WebPartZone>
    <br /> 

    <h1>XsltListView web part:</h1>
    <br />   
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone2">
        <WebPartPages:XsltListViewWebPart ID="XsltListViewWebPart_AppWeb" 
            runat="server" ListUrl="Lists/OutputList" IsIncluded="True" 
            NoDefaultStyle="TRUE" Title="XsltListView web part" PageType="PAGE_NORMALVIEW" 
            Default="False" ViewContentTypeId="0x"> 
        </WebPartPages:XsltListViewWebPart>  
    </WebPartPages:WebPartZone>

    <h1>XsltListView web part - host web:</h1>
    <br />  
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone3">
        <WebPartPages:XsltListViewWebPart ID="XsltListViewWebPart_HostWeb" 
            runat="server" ListUrl="http://vizatech.westeurope.cloudapp.azure.com/sites/dev/Lists/List" IsIncluded="True" 
            NoDefaultStyle="TRUE" Title="XsltListView web part - host web" PageType="PAGE_NORMALVIEW" 
            Default="False" ViewContentTypeId="0x"> 
        </WebPartPages:XsltListViewWebPart>  
    </WebPartPages:WebPartZone>

    <h1>Content Search web part:</h1>
    <br />   
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone4">
        <SearchWebControls:ContentBySearchWebPart ID="ContentBySearchWebPart1" runat="server" 
           Title="Content Search web part" 
            DataProviderJSON="{'QueryGroupName':'Default','QueryPropertiesTemplateUrl':'sitesearch://webroot','IgnoreQueryPropertiesTemplateUrl':false,'SourceID':'8413cd39-2156-4e00-b54d-11efd9abdb89','SourceName':'Local SharePoint Results','SourceLevel':'Ssa','CollapseSpecification':'','QueryTemplate':'sharepoint','FallbackSort':null,'FallbackSortJson':'null','RankRules':null,'RankRulesJson':'null','AsynchronousResultRetrieval':false,'SendContentBeforeQuery':true,'BatchClientQuery':true,'FallbackLanguage':-1,'FallbackRankingModelID':'','EnableStemming':true,'EnablePhonetic':false,'EnableNicknames':false,'EnableInterleaving':true,'EnableQueryRules':true,'EnableOrderingHitHighlightedProperty':false,'HitHighlightedMultivaluePropertyLimit':-1,'IgnoreContextualScope':false,'ScopeResultsToCurrentSite':false,'TrimDuplicates':true,'Properties':{},'PropertiesJson':'{}','ClientType':'','UpdateAjaxNavigate':true,'SummaryLength':180,'DesiredSnippetLength':90,'PersonalizedQuery':false,'FallbackRefinementFilters':null,'IgnoreStaleServerQuery':false,'RenderTemplateId':'DefaultDataProvider','AlternateErrorMessage':null,'Title':''}">
        </SearchWebControls:ContentBySearchWebPart>
    </WebPartPages:WebPartZone>
    <br /> 

    <h1>Page Viewer web part:</h1>
    <br /> 
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone5">
        <WebPartPages:PageViewerWebPart ID="PageViewerWebPart1" runat="server" 
            Title="Page Viewer web part" ContentLink="http://www.vizatech.com" Height="600" Width="600" ScrollBars="Both">
        </WebPartPages:PageViewerWebPart>
    </WebPartPages:WebPartZone>
    <br /> 

    <h1>Result Script web part:</h1>
    <br /> 
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone7">
        <SearchWebControls:ResultScriptWebPart  ID="ResultScriptWebPart1" runat="server" 
            Title="Result Script web part" 
            DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;Default&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;sitesearch://webroot&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;8413cd39-2156-4e00-b54d-11efd9abdb89&quot;,&quot;SourceName&quot;:&quot;Local SharePoint Results&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;(FileExtension:doc OR FileExtension:docx OR FileExtension:xls OR FileExtension:xlsx OR FileExtension:ppt OR FileExtension:pptx OR FileExtension:pdf) (IsDocument:\&quot;True\&quot; OR contentclass:\&quot;STS_ListItem\&quot;)&quot;,&quot;FallbackSort&quot;:[{&quot;p&quot;:&quot;LastModifiedTime&quot;,&quot;d&quot;:1}],&quot;FallbackSortJson&quot;:&quot;[{\&quot;p\&quot;:\&quot;LastModifiedTime\&quot;,\&quot;d\&quot;:1}]&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:true,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:false,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:true,&quot;Properties&quot;:{&quot;FillIn&quot;:&quot;false&quot;,&quot;Scope&quot;:&quot;{Site.URL}&quot;},&quot;PropertiesJson&quot;:&quot;{\&quot;FillIn\&quot;:\&quot;false\&quot;,\&quot;Scope\&quot;:\&quot;{Site.URL}\&quot;}&quot;,&quot;ClientType&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}">
        </SearchWebControls:ResultScriptWebPart>
    </WebPartPages:WebPartZone>

    <h1>Search Core Results web part:</h1>
    <br /> 
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="WebPartZone6">
        <SearchWebControls:CoreResultsWebPart  ID="CoreResultsWebPart1" runat="server" 
            Title="Search Core Results web part" 
            FixedQuery="author:Chris">
        </SearchWebControls:CoreResultsWebPart>
    </WebPartPages:WebPartZone>

</asp:Content>
