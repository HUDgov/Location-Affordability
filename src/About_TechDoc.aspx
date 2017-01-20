<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <h1>About the Portal</h1>
    <div id="left">
        <h2>Technical Documentation</h2>
        <h3>Site Documentation</h3>
        <p class="aboutsection">This documentation describes exactly how the data behind the site was generated. <a href="About_Data.aspx">A more basic description of how the site was created and functions</a> is also available.</p>
        <ul class="aboutcontent">
            <li><a href="LAPMethodsV2.pdf" target="_blank">The Location Affordability Index Version 2: Data and Methodology</a></li>
            <li><a href="downloads/ModelingCode.pdf" target="_blank">Location Affordability Index: Modeling Code</a></li>
        </ul>
        <p class="aboutsection">Documentation for Version 1 of the Location Affordability Index can be found <a href="LAPMethods.pdf" target="_blank">here</a>. For additional information see <a href="Help_FAQ.aspx">Technical FAQs</a>.</p>

        <h3>Research and Development</h3>
        <p class="aboutsection">The development process for this site included original research and analysis, input from an expert Technical Review Panel, an advisory group made of subject-matter experts from HUD, DOT, EPA, and the Treasury Department, and in-depth third-party reviews of different techniques.</p>
        <ul class="aboutcontent">
            <!--<li><a href="downloads/sem.pdf"" target="_blank">Location Affordability Index Simultaneous Equation Model (SEM) Development Memo</a></li>-->
            <li><a href="http://portal.hud.gov/hudportal/documents/huddoc?id=HUDTRPSumProc11-29-2011.pdf" target="_blank">Technical Review Panel Meeting 1 Summary</a></li>
            <li><a href="http://portal.hud.gov/hudportal/documents/huddoc?id=TRPSumProc3-9-2012.pdf" target="_blank">Technical Review Panel Meeting 2 Summary</a></li>
            <li><a href="http://portal.hud.gov/hudportal/documents/huddoc?id=SumTRPmtg3June1_2012.pdf" target="_blank">Technical Review Panel Meeting 3 Summary</a></li>
            <li><a href="http://portal.hud.gov/hudportal/documents/huddoc?id=TRP4thmtg12-12-2012.pdf" target="_blank">Technical Review Panel Meeting 4 Summary</a></li>
            <li><a href="downloads/TRP5.pdf" target="_blank">Technical Review Panel Meeting 5 Summary</a></li>
            <li><a href="downloads/AutoCostResearch.pdf" target="_blank">White Paper: Summary of Auto Cost Research and Approach</a></li>
            <li><a href="downloads/Parking Cost.pdf" target="_blank">White Paper: Feasibility of Including Parking Costs</a></li>
            <li><a href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&ved=0CEAQFjAD&url=http%3A%2F%2Fportal.hud.gov%2Fhudportal%2Fdocuments%2Fhuddoc%3Fid%3DHTA-index.pdf&ei=QcJuUtf2DJOgkQe58ICgAg&usg=AFQjCNGaWza8kZi9bOY5RbryGN6UKP64Ew&bvm=bv.55123115,d.eW0‎" target="_blank">Third-Party Review: CNT's Housing and Transportation Affordability Index and Other Currently Existing Metrics</a></li>
            <li><a href="downloads/Third Party Review.pdf" target="_blank">Third-Party Review: Location Affordability Index Housing Cost Model</a></li>
            <li><a href="downloads/AutoCostReview.pdf" target="_blank">Third-Party Review: Auto Cost White Paper</a></li>
        </ul>
        
    </div>
   <div id="right">
        <img style="margin-left: 40px;" src="images/bridge_pic_about.jpg" alt="Bridge" />
    </div>
</div>
</asp:Content>



