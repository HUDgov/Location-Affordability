<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    #shadedbox{min-height: 52px; clear: both; float: none;}
    #shadedbox .frametop, #shadedbox .framebottom{clear: both; float: left; height: 26px; }
    #shadedbox .frametopleft{background:url(images/frametopleft.png) 0 0 no-repeat; width:26px; height: 26px; margin:0; padding: 0; float: left;} 
    #shadedbox .frametopmiddle{background:url(images/frametopmiddle.png) 0 0 repeat-x; height: 26px;  margin:0; padding: 0; float: left;}        
    #shadedbox .frametopright{background:url(images/frametopright.png) 0 0 no-repeat; width:26px; height: 26px;  margin:0; padding: 0; float: left;}        
    #shadedbox .framemiddle{clear: both; margin: 0; padding: 0;float: left; clear: both; height: 100%;}        
    #shadedbox .framemiddleleft{background:url(images/framemiddleleft.png) 0 0 repeat-y; width:26px; float: left; height: 100%;}        
    #shadedbox .framemiddlemiddle{background:url(images/framemiddle.png) 0 0 repeat; margin: 0; padding: 0; float: left; }        
    #shadedbox .framemiddleright{background:url(images/framemiddleright.png) 0 0 repeat-y; width:26px; float: left;  height: 100%;}        
    #shadedbox .framebottomleft{background:url(images/framebottomleft.png) 0 0 no-repeat; width:26px; height: 26px; margin:0; padding: 0; float: left;}        
    #shadedbox .framebottommiddle{background:url(images/framebottommiddle.png) 0 0 repeat-x; height: 26px; margin:0; padding: 0; float: left;}        
    #shadedbox .framebottomright{background:url(images/framebottomright.png) 0 0 no-repeat; width:26px; height: 26px; margin:0; padding: 0; float: left;} 
    #shadedbox .frametopmiddle, #shadedbox .framemiddlemiddle, #shadedbox .framebottommiddle{width: 330px;}   
    #shadedbox .framemiddleleft, #shadedbox .framemiddleright, #shadedbox .framemiddle, #shadedbox .framemiddlemiddle{height: 630px;}
    #shadedbox .framecontent{margin: 0; padding: 0; width: 320px; background-color:#E5E8ED; font-size: 0.8em; }    
       
</style></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="page" style="min-height: 600px;">
    <h1>About the Portal</h1>
    <div id="left">
        <h2>The Tools</h2>
        <p class="aboutsection">The Location Affordability Portal features two new data tools designed to help consumers, policymakers, developers, and researchers better understand the combined cost of housing and transportation.</p>
        
        <h3>Location Affordability Index</h3>
        <p class="aboutsection">
        The <a href="lai.aspx">Location Affordability Index</a> displays data describing the combined cost of housing and transportation at the <a href="about_data.aspx#DataSources">Census block-group level</a>. Index data is calculated for each of the 942 <a href="http://www.census.gov/geo/reference/gtc/gtc_cbsa.html" target="_blank">Core Based Statistical Areas</a> and covers neighborhoods where 94% of the U.S. population lives using statistical regression modeling (see <a href="about_data.aspx">Data and Methodology</a> for more information on how this is accomplished). Users can search for a location by address, intersection, city, county, state or zip code. In addition, users can view housing and transportation costs combined or separately. Full CBSA data sets are available for download on <a href="lai.aspx?url=download.php">this site</a> or <a href="http://data.hud.gov" target="_blank">data.hud.gov</a>.
        <br /><br />
        </p>
        
        
        <div style="clear: both"></div>
        <h3>My Transportation Cost Calculator</h3>
        <p class="aboutsection">
        <a href="tcc.aspx">My Transportation Cost Calculator</a> takes user-input information on household income, size, and number of workers and uses the Location Affordability Index model to generate customized transportation cost estimates using the household’s tenure, cars, employment locations, and travel patterns. Users can easily change any of their data either in the calculator or by moving pins on the map and the cost estimates will update automatically. Users can also enter any number of additional residential locations and compare the new cost estimates to all previously entered locations.
        <br /><br />
        The Cost Calculator is primarily intended to help consumers (and the housing counselors and realty professionals who work with them) get a better understanding of their own transportation costs, how much they would differ in other locations, and how much they are impacted by particular choices, helping them make more informed decisions about where to live and work.
        </p>
        <img src="images/about_tools_image.jpg" alt="Metro Bus on City Street" />
    </div>

   <div id="right" style="margin-left: 40px;">
        <!--<img src="images/bus.jpg" alt="City Bus" />-->
        <div id="shadedbox">
            <div class="frametop"><div class="frametopleft"></div><div class="frametopmiddle"></div><div class="frametopright"></div></div>
            <div class="framemiddle">
                <div class="framemiddleleft"></div>
                <div class="framemiddlemiddle">
                        <div class="framecontent">
                            
                            <p style="font-size: 1.1em; font-weight: bolder; color: #183956; margin:0; padding: 0 0 10px 0; ">Note on interpreting housing costs reported by the Index</p>
                            
                            <p>The Index is primarily intended for use by researchers, developers, planners, and policymakers to help enhance their understanding of combined housing and transportation cost burdens, analyze the relationships between the affordability landscape and other factors (e.g. transportation infrastructure, development pressure, etc.), and communicate this information to the public and stakeholders. One limitation of the Index is that the majority of the data on which it is based comes from the 2006-2010 <a href="http://www.census.gov/acs/www/data_documentation/2010_release/" target="_blank">American Community Survey</a>.  While this is not a major issue for transportation costs (because they are heavily determined by features of land use and the built environment that change very slowly), it does mean that the housing costs we report are only accurate as of that time period. Therefore, it is not appropriate to use the Index for applications that require real-time housing cost data.
                            <br /><br />
                            To account for the fact that housing and transportation costs are determined both by location and demographic characteristics, the user can view data from eight different household types for any location. These household types allow the Index to hold constant household characteristics—income, number of family members, and number of commuters—which can vary within any given location, making the Index vastly more informative and easy to interpret. However, this does not imply that every block group contains families matching each household type. The correct interpretation for housing cost estimates for any household type in a given location is that they represent what a particular household would be expected to pay for housing IF they had lived in that location between 2006 and 2010.
                            </p>
                        </div>
                </div>
                <div class="framemiddleright"></div>
            </div>
            <div class="framebottom"><div class="framebottomleft"></div><div class="framebottommiddle"></div><div class="framebottomright"></div></div>
            </div>
    </div>
</div>
</asp:Content>



