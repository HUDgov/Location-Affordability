<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="ResourceLibrary.aspx.vb" Inherits="ResourceLibrary" %>
<%@ Register TagName="ResourceResults" TagPrefix="LAP" Src="~/ResourceResults.ascx"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #resourcecontrolpanel {
            width: 94%;
            padding: 1px 7px 7px 7px;
            background-color: #DBECCC;
            border-radius: 5px 5px;
            border-color: #DBECCC;
            margin-bottom: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <h1>Resource Library</h1>
    <p class="intro">The Location Affordability Index and the My Transportation Cost Calculator build upon a <a href="about_development.aspx">large body of work</a> supported by HUD and DOT as well as by public and private organizations that have been studying housing and transportation costs for more than a decade. This resource library includes documentation of the research and development process behind these tools, as well as related analysis, commentary, and educational materials that provide insights on location efficiency and affordability and discuss potential applications of transportation costs data.   If you have any questions or would like to suggest additional materials for inclusion, please contact us at <a href="mailto:locationaffordability@hud.gov">locationaffordability@hud.gov</a>.</p>
    <div id="resourcecontrolpanel">
        <p class="keyword"><asp:Label runat="server" ID="lbKeyword" AssociatedControlID="tbKeyword" >Keyword:</asp:Label> <asp:TextBox runat="server" ID="tbKeyword" style="width: 400px"></asp:TextBox> </p>

        <div id="categories">
        <asp:CheckBoxList ID="cblCategories" runat="server" RepeatColumns="3" CssClass="category"></asp:CheckBoxList>
    </div>
    <br />
    <asp:ImageButton runat="server" ID="btnSubmit" usesubmitbehavior="true" ImageUrl="images/searchbutton.jpg" AlternateText="Submit" />
    </div>
    <div id="resourceresults">
        <asp:Panel ID="panelCount" runat="server" CssClass="count">
            <div class="counter"><asp:Literal runat="server" ID="litCount"></asp:Literal> Results Found</div>
        </asp:Panel>
        <LAP:ResourceResults runat="Server" id="ResourceResults" CssClass="item" />
    </div>
</div>
</asp:Content>

