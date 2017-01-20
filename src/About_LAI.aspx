<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <h1>Location Affordability Index</h1>
    <img style="position: absolute; top: -15px; left: 330px; width: 60px;" src="images/logo-lai-trans.png" alt="Location Affordability Index"/>
    <div id="left">
        <h2>About the Index</h2>
        <p class="aboutsection">
        The Location Affordability Index (LAI) Version 2 consists of estimates of the combined household and transportation costs. The LAI is calculated at the Census block-group level (block groups contain 600 to 3,000 residents each) for each of the 942 Core Based Statistical Areas and at the county level for non-metropolitan counties using statistical regression modeling (see Data and Methodology for more information on how this is accomplished). As a result of advances in data and modeling techniques, LAI Version 2 covers every populated area in all 50 states and the District of Columbia.
            </p>
         <p class="aboutsection">
         Because what is affordable is different for everyone, the Index is calculated for eight different household profiles, defined by different incomes, family sizes and number of commuters. Users can search for a location by address, intersection, city, county, state or zip code. In addition, users can view housing and transportation costs combined or separately, or view costs for renters and homeowners separately.   </p>
       
         <p class="aboutsection">
         For more information on how to use the LAI, see the illustrated <a href="lai.aspx?url=user_guide.php">User Guide</a>. Full CBSA data sets are available on the <a href="lai.aspx?url=download.php">download page</a>.   </p>

        <h3>Note on interpreting housing costs estimates</h3>
                            
        <p class="aboutsection">The Index is primarily intended for use by researchers, developers, planners, and policymakers to help enhance their understanding of combined housing and transportation cost burdens, analyze the relationships between the affordability landscape and other factors (e.g. transportation infrastructure, development pressure, etc.), and communicate this information to the public and stakeholders. One limitation of the Index is that the majority of the data on which it is based comes from the 2008-2012 <a href="http://www.census.gov/acs/www/data_documentation/2010_release/" target="_blank">American Community Survey</a>.  While this is not an issue for transportation costs (because they are heavily determined by features of land use and the built environment that change very slowly), it does mean that the housing cost estimates we report correspond to housing costs during that time period. Therefore, it is not appropriate to use the Index for applications that require real-time housing cost data.
        <br /><br />To account for the fact that housing and transportation costs are determined both by location and demographic characteristics, the user can view data from eight different household types for any location. These household types allow the Index to hold constant household characteristics—income, number of family members, and number of commuters—which can vary within any given location, making the Index vastly more informative and easy to interpret. However, this does not imply that every block group contains families matching each household type. Rather, housing cost estimates for any household type in a given location approximate what a particular household would be expected to pay for housing IF they had lived in that location between 2008 and 2012.
        </p>
    </div>

    <div id="right" style="margin-left: 0px; margin-top: 50px;">
        <div id="imageblock_Background">
                <img src="images/Abouttool1.jpg" alt="Traffic"/>
        </div>
    </div>
</div>
</asp:Content>



