<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <h1>My Transportation Cost Calculator</h1>
    <img style="position: absolute; top: -15px; left: 415px; width:60px;" src="images/logo-tcc-trans.png" alt="My Transportation Cost Calculator"/>
    <div id="left">
        <h2>About the Calculator</h2>
        <p class="aboutsection">
        My Transportation Cost Calculator allows users to customize information from the Location Affordability Index (LAI) by entering basic information about their families’ income, housing, cars, and travel patterns. The customized estimates offer a better understanding of an individual or household’s own transportation costs, how much they would vary in different locations, and how much they are impacted by individual choices, allowing users to make more informed decisions about where to live and work.
            </p>
         <p class="aboutsection">
         Users can easily change any of their data either by changing calculator inputs or by moving pins on the map, and the cost estimates will update automatically. Users can also enter any number of additional residential locations and compare the new cost estimates to all previously entered locations.</p>
       
         <p class="aboutsection">
         For more information on how to use the Calculator, see the illustrated <a href="tcc.aspx?url=/user_guide.php">User Guide</a>.</p>
    </div>

    <div id="right" style="margin-left: 0px; margin-top: 50px;">
        <div id="imageblock_Background">
                <img src="images/Abouttool2.jpg" alt="Traffic"/>
        </div>
    </div>
</div>
</asp:Content>



