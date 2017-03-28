<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <h1>About the Portal</h1>
    <div id="left">
        <h2>Documentation</h2>
        <h3>Data and Methodology</h3>
        <p class="aboutsection">This documentation describes exactly how the Location Affordability Index is generated.</p>
        <p>Version 2.1 (September 2016):</p>
        <ul class="aboutcontent">
            <li><a href="LAPMethodsV2.pdf" target="_blank">Location Affordability Index: Data and Methodology, Version 2.1</a></li>
            <li>Data Extraction Code (F# scripts)
                <ul>
                    <li><a href="ACS_Master.fsx" target="_blank">ACS data</a></li>
                    <li><a href="Fuel_Master.fsx" target="_blank">Regional Average Fuel Prices</a></li>
                    <li><a href="Gravity_Master_v2.fsx" target="_blank">Local Employment Gravity Model building</a></li>
                    <li><a href="Density_Master.fsx" target="_blank">Block and job density building</a></li>
                    <li><a href="VMT_Master_v2.fsx" target="_blank">VMT model building</a></li>
                    <li><a href="NHTS_Master.fsx" target="_blank">National Household Travel Survey</a></li>
                </ul>
            </li>
            <li><a href="SEM_VMT_CODE_LAI Version 2.1.txt" target="_blank">Model Fitting Codes (R script)</a></li>
            <li><a href="final_fit_v3.fsx" target="_blank">Model Running (Index Estimation) Code</a>(F# script)</li>
        </ul>
        <p>Version 2 (October 2014):</p>
        <ul class="aboutcontent">
            <li><a href="LAPMethodsV2.pdf" target="_blank">The Location Affordability Index Version 2: Data and Methodology</a> (technical)</li>
            <li><a href="downloads/ModelingCode.pdf" target="_blank">Location Affordability Index: Modeling Code</a></li>
            <li><a href="http://www.locationaffordability.info/About_Data.aspx" target="_blank">Data and methodology explanation</a> (general audience)</li>
        </ul>
        <p>Version 1 (November 2013):</p>
        <ul class="aboutcontent">
            <li><a href="LAPMethods.pdf" target="_blank">Data and Methodology Documentation</a>.</li>
        </ul>
        <p>See also <a href="Help_FAQ.aspx">Technical FAQs</a>.</p>

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



