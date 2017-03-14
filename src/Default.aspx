<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .homeleft{ float: left; height: 145px; margin-right: 20px;}
    .homeright{width: 350px; float: left;}
    .homeright p, .homefull p{font-size: 0.8em;}
    .homefull{width: 100%;}
    .cleanlink:hover {
        text-decoration: none !important;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <p class="intro">Housing and transportation costs consume about half of the average household budget, but it can be difficult for people to fully factor transportation costs into decisions about where to live and worktransportation costs are difficult to track and account for. The <strong>Location Affordability Index (LAI)</strong> Portal provides works to close this gap by providing estimates of household housing and transportation costs at the neighborhood level along with constituent data on the built environment and demographics. to help consumers, policymakers, and developers make more informed decisions about where to live, work, and invest. This site provides access to that data as well as comprehensive documentation of how the Location Affordability Index has been developed and updated.  <strong>Please see the <a href="http://www.locationaffordability.info/About.aspx" target="_blank"></a>About page for information on recent changes to the site</strong>.</p>

<div id="left">
    <div class="homesection">
        <h2 class="sectionA">Access the Data</h2>
        <div class="homeright">
            <p>The current and version of the Location Affordability Index can be accessed either as downloads or data services through HUD’s eGIS Storefront:</p>
            <p><strong>Version 2.1 (September 2016)</strong> – uses 2010-2014 American Community Survey data</p>
            <p><strong><a href="https://egis-hud.opendata.arcgis.com/datasets/27b53ea69f98474eb002ac3b9c6b51eb_0" target="_blank">Version 2.0 (October 2014)</a></strong> – uses 2008-2012 American Community Survey data</p>
        </div>
    </div>

    <div class="homesection">
       <h2 class="sectionB">Documentation</h2>
        <div class="homeright">
            <p><a href="LAPMethodsV2.pdf" target="_blank">Click here</a> for comprehensive methodological documentation for LAI Version 2.1. The <a href="http://www.locationaffordability.info/About_Development.aspx" target="_blank">Development</a> page gives significant additional detail on previous research, the development of the LAI, and important caveats for understanding and interpreting the data. The <a href="http://www.locationaffordability.info/About_TechDoc.aspx" target="_blank">Documentation page archives all documentation about the LAI including research conducted as part of the development of the Index and modeling code for researchers looking to replicate the LAI or create modified versions using different data inputs.</a></p>
        </div>
   </div>
    
</div>
</div>
</asp:Content>

