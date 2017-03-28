<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="page">
    <h1>About the Portal</h1>
    <div id="left">
        <h2>Development</h2>
        <ul class="aboutmenu">
            <li><a href="#Background">Previous Research</a></li>
            <li><a href="#Process">Process</a></li>
            <li><a href="#Advances">Advances</a></li>
            <li><a href="#Additional">Additional Considerations</a></li>
        </ul>
    
        <a id="Background"></a>
        <h3>Previous Research</h3>
        <p class="aboutsection">The Location Affordability Index builds on an influential strain of research that has sought a better understanding of affordability by looking at transportation as well as housing costs. The Brookings Institution (<a href="http://www.brookings.edu/~/media/research/files/reports/2006/1/01 affordability index/20060127_affindex" target="_blank">2006</a>), Reconnecting America (<a href="http://www.reconnectingamerica.org/assets/Uploads/091030ra201mixedhousefinal.pdf" target="_blank">2009</a>), the Center for Housing Policy (<a href="http://www.nhc.org/media/documents/somethings_gotta_give.pdf" target="_blank">2005</a>, <a href="http://www.reconnectingamerica.org/assets/Uploads/pubheavyload1006.pdf" target="_blank">2006</a>,  and <a href="http://www.nhc.org/media/files/LosingGround_10_2012.pdf" target="_blank">2012</a>, among others), and The Urban Land Institute’s Terwilliger Center for Housing (<a href="http://www.reconnectingamerica.org/assets/Uploads/2009BayAreaBurden.pdf" target="_blank">2009</a>) have all contributed. There is also a strong body of academic research on this topic; for example, <a href="http://www.climateplan.org/wp-content/plugins/downloads-manager/upload/Travel_Built_Environ.pdf" target="_blank">2010</a> and <a href="http://bettercities.net/sites/default/files/06.117_142.pdf" target="_blank">2010</a> (for more, see the <a href="resourcelibrary.aspx" target="_blank">Resources</a> section).</p>
        <p class="aboutsection">In 2008, researchers from the <a href="http://www.cnt.org/" target="_blank">Center for Neighborhood Technology</a> (CNT) published a paper in the peer-reviewed Transportation Research Record <a href="http://trb.metapress.com/content/g73825l372u56587/?p=a025d8bdf4bc40ceb6fb0e4e529aaa8a&pi=8" target="_blank">describing a transportation cost model</a>—the Housing and Transportation (H+T®) Affordability Index—which used variables representing neighborhood and household characteristics to estimate vehicle ownership, annual vehicle miles traveled, and transit use. This model built on CNT’s earlier work with the Brookings Institution and Reconnecting America and featured estimates for housing and transportation costs in 52 regions; it was expanded to cover 337 metropolitan statistical areas in 2009. Results from the H+T® Index demonstrated that the location of a home can have a significant impact on transportation behavior and spending, serving to reframe the conversation about affordability in regions across the country (<a href="http://www.cnt.org/publications/penny-wise-pound-fuelish-new-measures-of-housing-and-transportation-affordability" target="_blank">see here for an overview</a>).</p>
        <a id="Process"></a>
        <h3>Process</h3>
        <p class="aboutsection">The Location Affordability Index (LAI) builds on this modeling approach but reflects significant changes based on new goals and research, third-party peer reviews, and expert and stakeholder consultation. These efforts included identifying and testing data sources and variables, ensuring the transparency of the model’s data inputs and regression framework, developing a new method for estimating the cost of car ownership and usage, constructing a novel housing cost model, and modeling housing and transportation costs for eight different household profiles covering a range of family compositions and incomes.</p>
        <p class="aboutsection">The new tools developed by HUD and DOT (with support from <a href="http://www.manhattanstrategy.com" target="_blank">Manhattan Strategy Group</a> and CNT) draw on input from a variety of sources:</p>
        <ul class="aboutcontent">
            <li>A Technical Review Panel composed of experts from the fields of urban and transportation planning, affordable housing, and community and economic development</li>
            <li>Independent, third-party reviews by Econsult Corporation and the Penn Institute for Urban Research of:
                <ul>
                    <li><a target="_blank" href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=4&ved=0CEAQFjAD&url=http%3A%2F%2Fportal.hud.gov%2Fhudportal%2Fdocuments%2Fhuddoc%3Fid%3DHTA-index.pdf&ei=QcJuUtf2DJOgkQe58ICgAg&usg=AFQjCNGaWza8kZi9bOY5RbryGN6UKP64Ew&bvm=bv.55123115,d.eW0">data and modeling techniques currently in use</a></li>
                    <li><a target="_blank" href="downloads/Third Party Review.pdf">the new housing cost model used in the Index</a></li>
                    <li><a href="downloads/AutoCostReview.pdf" target="_blank">the new method of calculating the Index’s auto cost multiplier using Consumer Expenditure Survey data</a></li>
                </ul>
            </li>
            <li>An advisory group made up of subject-matter experts from HUD, DOT, the Environmental Protection Agency, and the Treasury Department</li>
            <li>Other available research and data</li>
        </ul>

        <a id="Advances"></a>
        <h3>Advances</h3>
        <p class="aboutsection">This site embodies a number of technical advances:</p>
        <ul class="aboutcontent">
            <li>Additional Data sources
                <ul>
                    <li>Consumer Expenditure Survey Micro-Data (CEX) – used to calculate more accurate auto cost multipliers</li>
                    <li>National Household Transportation Survey responses (NHTS) –  Calibration of VMT model with NHTS data</li>
                </ul>
            </li>
            <li>Improvements to Independent Variables capturing block density, transit access, and employment density</li>
            <li>New models for Selected Monthly Ownership Costs and Gross Rent (both from ACS data)</li>
            <li>Simplified Regression technique and formula
                <ul>
                    <li>Moved from non-linear regression to Ordinary Least Squares regression</li>
                    <li>Moved from Linearized Functions to Second Order Flexible form, allowing analysts to better isolate how individual variables affect costs</li>
                </ul>
            </li>
                <li>More accurate <a href="downloads/AutoCostResearch.pdf" target="_blank">auto-ownership cost multipliers</a> to better reflect the actual U.S. fleet mix and the variability in costs for households with different incomes</li>
        </ul>
 
            <p class="aboutsection">These advances have allowed us to develop a valuable set of tools and resources on location efficiency for use by planners, researchers, policymakers, and consumers. Site features include:</p>
            <ul class="aboutcontent">
            <li>Coverage of every populated area in all 50 states and the District of Columbia</li>
            <li>Housing and transportation cost estimates for 8 different household profiles for every location</li>
            <li>A highly customizable transportation cost calculator with national coverage</li>
            <li>Complete data and methodology documentation available for download</li>
        </ul>
        <p class="aboutsection">Version 2 of the Portal (launched in September 2014) implemented key recommendations from the Technical Review Panel and third-party research, improving on Version 1 in several important ways:</p>
            <ul class="aboutcontent">
                <li>Moving to a Simultaneous Equation Modeling (SEM) approach from Ordinary Least Squares regression: SEM better incorporates and accounts for interaction effects on the model’s dependent variables, resulting in a model that has greater econometric validity</li>
                <li>Adding variables for housing stock: the model now includes variables for percent of single-family detached housing units and the number of rooms per dwelling unit</li>
                <li>Adding variables for local commercial amenities</li>
                <li>Splitting population data by tenure (renter vs. homeowner)</li>
            </ul>
<p class="aboutsection">These changes have resulted in a more sophisticated model with far more comprehensive geographical coverage: the inclusion of non-metropolitan areas allows the LAI to cover the entire populated area of the 50 states and the District of Columbia (contrasted to Version 1, which covered 94% of the U.S. population). See the detailed <a href="LAPMethodsV2.pdf" target="_blank">Data and Methodology for Version 2.1</a> (completed September 2016) for more information.</p>


        <a id="Additional"></a>
        <h3>Additional Considerations</h3>
        <p class="aboutsection">A significant volume of research and analysis has gone into creating this site in order to try to capture all of the features of the built and demographic environment that contribute to transportation costs: population density, walkability, transit access, employment access, per capita income, family size, and number of commuters. This has engendered a great deal of complexity and nuance that should be taken into account when using the tools, particularly to make policy decisions. HUD and DOT have worked throughout this project to ensure that these details are captured in order to maximize transparency about the development and proper use of these tools. The following are important considerations for using and interpreting the information found on this site, many of which we are endeavoring to address in our ongoing work.</p>

        <h4>Interpreting Housing Cost Estimates</h4>
        <p class="aboutsection">The Index is primarily intended for use by researchers, developers, planners, and policymakers to help enhance their understanding of combined housing and transportation cost burdens, analyze the relationships between the affordability landscape and other factors (e.g. transportation infrastructure, development pressure, etc.), and communicate this information to the public and stakeholders. One limitation of the Index is that the majority of the data on which it is based comes from the 2010-2014 <a href="http://www.census.gov/acs/www/data_documentation/2010_release/" target="_blank">American Community Survey</a>. While this is not an issue for transportation costs (which are heavily determined by features of land use and the built environment that change very slowly), it does mean that the housing cost estimates correspond to housing costs during that time period. Therefore, it is not appropriate to use the Index for applications that require real-time housing cost data.</p>
        <p class="aboutsection">To account for the fact that housing and transportation costs are jointly determined by locational and household demographic characteristics, the LAI provides estimates for eight different household profiles for any location. These household profiles allow the Index to hold household characteristics—i.e. income, number of family members, and number of commuters—constant across each metropolitan area, making the Index vastly more informative and easy to interpret. However, this does not imply that every block group contains families matching each household profile. Rather, housing cost estimates for any household type in a given location approximate what a particular household would be expected to pay for housing IF they had lived in that location between 2010 and 2014 (with some additional caveats, detailed in the following sections).</p>

        <h4>Qualitative Factors that Contribute to Housing Costs</h4>
        <p class="aboutsection">The LAI accounts for a number of qualitative factors that impact the cost of housing including neighborhood walkability, access to transit, and access to employment (which to some extent can also be considered a proxy for access to commercial amenities). However, there are some qualitative factors the Index does not take into account. These include the quality/condition of housing stock, school quality, public safety, and natural amenities (e.g. a view of or proximity to a beach, river, forested trails, etc.). They should be considered as part of the model’s unexplained variation: the amount of variability in housing costs it does not explain. (See Sections 5.5 and 6.2 of the <a href="downloads/Third Party Review.pdf" target="_blank">third-party review</a> of the LAI’s housing cost model  for an expanded discussion of this and the following issue).</p>

        <h4>Additional Quantitative Factors</h4>
        <p class="aboutsection">There are also quantitative factors not accounted for by the models used to generate the LAI. A major factor not covered by the model is housing subsidies, either through the Mortgage Interest Tax Deduction or any form of rental assistance. This is due to the fact that the housing costs reported in the American Community Survey - either Gross Rent or Selected Monthly Ownership Costs - do not include these subsidies.</p>
        <p class="aboutsection">The models for autos per household, annual vehicle miles traveled, and percent of commuters using transit also omit common subsidies for transit and parking costs. Teasing out parking costs is particularly tricky since they are so often subsidized by taxpayers or bundled with the cost of housing. An <a href="downloads/Parking Cost.pdf" target="_blank">analysis of the feasibility of including parking costs in the Index</a> found that it would require an inordinate amount of time and resources to explicitly incorporate the cost of parking since there is no existing source for this data. (Donald Shoup’s <a href="http://www.planning.org/apastore/Search/Default.aspx?p=1814" target="_blank">The High Cost of Free Parking</a> is the definitive source on this subject.)</p>
        <p class="aboutsection">The transportation cost model also does not account for the value of time spent travelling. This is difficult to capture for at least two reasons. First, people value their time differently. Second, different travel types (e.g. commuting versus driving to the beach) and modes (e.g. driving versus biking versus taking the bus or subway) produce qualitatively different experiences whose values would be impossible to generalize.</p>
        <p class="aboutsection">Finally, the transportation cost model does not take into account the rising prevalence of telecommuting.</p>
        <h4>Geographical Precision</h4>
        <p class="aboutsection">The LAI is calculated at the Census block-group level. Block groups contain between 600 and 3,000 people and vary in size depending on an area’s population density, ranging from only a few city blocks to the entirety of some of the more rural counties. In the case of large, sparsely populated rural block groups, estimates are likely still reliable because the factors that determine transportation costs—residential density, per-capita income, the road network, access to transit and employment, etc.—will be largely uniform across the entire area. The same is true to some extent for housing costs, which are modeled from the data used to predict transportation costs, although housing prices change much more rapidly. It is important to remember that the Index does not predict the cost of housing or transportation for any specific address, household, or housing unit.</p>
 
    </div>
    <div id="right">
        <img style="margin:0 0 0 30px" src="images/about_development_image.jpg" alt="Cars traveling in same direction on a two ray rural road" />
    </div>

</div>
</asp:Content>



