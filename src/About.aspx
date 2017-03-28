<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="page">
        <h1>About the Portal</h1>
        <div id="left">
            <p class="aboutsection">
                There is more to housing affordability than how much rent or mortgage you pay. Transportation costs are 
                the second-biggest budget item for most families, but it can be difficult for people to fully factor 
                transportation costs into decisions about where to live and work. The Location Affordability Index (LAI) 
                is user-friendly source of standardized data on combined housing and transportation costs to help consumers, 
                policymakers, and developers make more informed decisions about where to live, work, and invest.
            </p>
            <p class="aboutsection">
                The Portal features two new cutting-edge tools — the <a href="lai.aspx">Location Affordability Index</a> and 
                <a href="tcc.aspx">My Transportation Cost Calculator</a>—that illustrate from different perspectives how 
                housing and transportation costs impact affordability. In addition to these decision-support tools, the Portal 
                provides access to supporting resources that offer a wide range of information on current research and practice 
                aimed at understanding, and ultimately reducing, the combined housing and transportation cost burden borne by 
                American families.
            </p>
            <p class="aboutsection">
                <strong>Note on recent changes</strong>. Due to resource constraints, HUD is no longer able to support the 
                two data apps formerly available on this site: the map-driven Location Affordability Index app and My 
                Transportation Cost Calculator. HUD will continue to update the LAI on an annual basis, which will allow 
                interested policymakers, researchers, and web developers to use current data for new research and other 
                applications going forward.
            </p>
            <p class="aboutsection">
                HUD and DOT are committed to engaging with the public to continually improve and expand this resource. Please 
                email <a href="mailto:locationaffordability@hud.gov">locationaffordability@hud.gov</a> with any questions or 
                comments.    
            </p>
            <p>&nbsp;</p>
            <!-- Background Section -->
            <h3>Background</h3>
            <p class="aboutsection">
                The Location Affordability Portal is the product of a collaboration between HUD and the Department of 
                    Transportation (DOT) under the federal Partnership for Sustainable Communities. The Partnership, which 
                    includes the Department of Housing and Urban Development, the Department of Transportation, and the 
                    Environmental Protection Agency, works to coordinate federal housing, transportation, water, and other 
                    infrastructure investments to make neighborhoods more prosperous, allow people to live closer to jobs, 
                    save households time and money, and reduce pollution. One objective of this collaboration is to increase 
                    public access to data on housing, transportation, and land use. EPA's Smart Location Database and 
                    <a href="https://www.epa.gov/ejscreen" target="_blank">EJSCREEN</a> tools and HUD’s 
                    forthcoming <a href="https://egis.hud.gov/Affht/" target="_blank">AFFH Data Tool</a> are other resources 
                    developed for this purpose.
            </p>
            <p class="aboutsection">
                The prevailing standard of affordability in the United States is paying 30 percent or less of your family’s 
                    income on housing, which fails to account for for transportation costs. One reason is that transportation costs 
                    are a much bigger factor now than in the past. According to the Bureau of Labor Statistics, in the 1930's 
                    American households spent just 8 percent of their income on transportation. Since then, as millions of 
                    families  have migrated from center cities to surrounding suburbs and exurbs and come to rely more heavily 
                    on cars, that percentage has steadily increased, peaking at 19.1 percent in 2003. Today, households spend 
                    on average about 17 percent of their annual income on transportation, second only to housing costs in terms 
                    of budget impact. And for many-working class and rural households, transportation costs actually exceed 
                    housing costs.
            </p>
            <p class="aboutsection">
                Before this Portal, though, there was no accurate, standardized data source on household transportation 
                    expenses, which limited the ability of homebuyers and renters to fully account for the cost of living in a 
                    particular city or neighborhood. This site seeks to fill that gap.
            </p>
            <p class="aboutsection">
                Planners, policymakers, and developers also stand to benefit from access to this data when making decisions 
                    about land use, housing, transportation, and economic development. HUD and DOT have  engaged experts and key 
                    stakeholders from the fields of urban and transportation planning, affordable housing, and economic development 
                    and produced extensive reviews of the data and modeling techniques used in the tools that have been made 
                    available on this site for the first time.
            </p>
            <p>&nbsp;</p>
            <!-- Data Methodology Section -->
            <h3>Data Methodology</h3>
            <p class="aboutsection">
                <strong>Note: this explanation of the data and methodology behind the Location Affordability Index is specific to 
                Version 2 of the LAI. While it has value as a lay-language narrative explanation and is broadly applicable 
                to Version 2.1, data users should consult the full <a href="LAPMethodsV2.pdf" target="_blank">Version 2.1 documentation.</a></strong>
            </p>
            <p class="aboutsection">
                There’s more to affordability than how much you pay for housing. Transportation costs are the second-biggest 
                budget item for most families and have an important and robust relationship with the location and cost housing. 
                The <a href="https://egis-hud.opendata.arcgis.com/datasets/27b53ea69f98474eb002ac3b9c6b51eb_0" target="_blank">
                Location Affordability Index</a> offers a more holistic perspective on affordability by showing users the 
                combined cost of housing and transportation as a percentage of household income.
            </p>
            <p class="aboutsection">
                Despite the simplicity of the concept, the Index is generated using an enormous amount of data and a series of 
                complex analyses. This page walks through in detail what the Index is and how it is produced in general language.
            </p>
            <p class="aboutsection">
                For a more technical description, please see the <a href="LAPMethodsV2.pdf" target="_blank">LAI Methodology</a>. 
                Note that this document applies specifically to Version 2 of the LAI; data and methodology documentation for 
                Version 1 of the LAI can be found <a href="About_DataV1.aspx">here</a>.
            </p>
            <h4>Overview</h4>
            <p class="aboutsection">
                The goal of the Location Affordability Index is to give consumers access to reliable, standardized data on 
                the cost of location to make more informed decisions about where to live and work. There are key four 
                elements—explained in greater detail in the following sections—that must be grasped in order to fully 
                understand what the Index is,  how it is produced, and what it tells us. They are:
            </p>
            <ul class="aboutcontent">
                <li><strong>Data sources</strong> – the Index is calculated using data from a number of different sources.</li>
                <li>
                    <strong>Geographical scale</strong> – as with any informational resource used by consumers, the level of 
                    specificity makes a difference in how it can be used. For instance, weather forecasts are precise to the 
                    zip code, but flooding advisories apply to entire counties, making them less precise and thus less useful.
                </li>
                <li>
                    <strong>Prediction method</strong> – because there is no existing source of data that tells us what we’re 
                    interested in (the housing and transportation costs for a location, regardless of who lives there), we 
                    need to use existing data to create statistical models that we can then use to make estimates. We do this 
                    using two types of statistical regression modeling.
                </li>
                <li>
                    <strong>Components</strong> – the Index is expressed in terms of housing costs, transportation costs, and 
                    income. These three components are derived in three different ways.
                    <ul>
                        <li>Housing costs – predicted using regression modeling</li>
                        <li>Transportation costs – calculated by estimating how much transportation people in a given 
                            neighborhood use—i.e. how many cars they own, how much they drive, and how much they use public 
                            transit—and then multiplying each of these quantities by their unit cost (e.g. annual cost per car).
                        </li>
                        <li>Income – to make the Index as concrete and useful as possible, housing and transportation costs are 
                            calculated for eight different household profiles characterized by income level, household size and 
                            number of commuters. These costs are then divided by the income for each profile to give a percentage 
                            of a given family’s income associated with a given location. The incomes used are based on the 
                            median income levels in each region covered by the Index.
                        </li>
                    </ul>
                </li>
            </ul>
            <h4>Data Sources</h4>
            <p class="aboutsection">
                In all, the Index draws from six different Federal data sources and Illinois state odometer readings:
            </p>
            <ul class="aboutcontent">
                <li><a href="http://www.census.gov/acs/www/" target="_blank">U.S. Census American Community Survey (ACS)</a> – 
                    an ongoing survey that generates data on community demographics, income, employment, transportation use, 
                    and housing characteristics. Here we use the 2008-2012 survey data.</li>
                <li><a href="http://www.census.gov/geo/maps-data/data/tiger-line.html" target="_blank">U.S. Census TIGER/Line 
                    Files</a> – contains data on geographical features such as roads, railroads, and rivers, as well as legal 
                    and statistical geographic areas.</li>
                <li><a href="http://lehd.ces.census.gov/applications/help/onthemap.html#!what_is_onthemap" target="_blank">
                    U.S. Census Longitudinal Employment-Household Dynamics (LEHD) Origin-Destination Employment Statistics</a> 
                    (LODES) – detailed spatial distributions of workers' employment and residential locations and the relation 
                    between the two at the Census Block level and characteristic detail on age, earnings, industry distributions, 
                    and local workforce indicators (see overview here). Here we use LODES and OnTheMap Version 6, which are built 
                    on 2010 Census data.</li>
                <li><a href="http://www.ntdprogram.gov/ntdprogram/" target="_blank">National Transit Database</a> - over 660 
                    transit providers who are recipients or beneficiaries of <a href="http://www.fta.dot.gov/">Federal Transit 
                    Administration</a> grants report annually on transit service and safety. We use the 2010 database, 
                    which corresponds to the middle year of the 2008-2012 ACS data.</li>
                <li><a href="http://www.bls.gov/cex/" target="_blank">Consumer Expenditure Survey</a> – a set of ongoing surveys 
                    conducted by the <a href="http://www.bls.gov/home.htm" target="_blank">Bureau of Labor Statistics</a> (part of the Department of Labor) that provide information on 
                    the buying habits of American consumers, including data on their expenditures, income, and consumer unit 
                    (families and single consumers) characteristics.</li>
                <li><strong>Illinois State odometer readings</strong> – as part of the smog check required for vehicles in the state’s 
                    non-attainment areas (the Chicago and St. Louis metro areas), the <a href="http://www.epa.state.il.us/air/vim/"
                    target="_blank">Illinois Environmental Protection</a> Agency records odometer readings. Odometer data for 2007 and 2009 were compared to determine how many 
                    miles had been driven by location. To validate the use of this data for entire country, it was compared 
                    to the 2009 <a href="http://nhts.ornl.gov/" target="_blank">National Household Travel Survey</a> (maintained 
                    by the <a href="http://www.fhwa.dot.gov/policyinformation/" target="_blank">Federal Highway Administration</a> ).</li>
            </ul>
            <p class="aboutsection">
                These data contain information about the characteristics of every Census block group in the Index’s 
                <a href="http://www.locationaffordability.info/coverage.pdf" target="_blank">coverage area</a>.
            </p>
            <h4>Geograpic Scale</h4>
            <p class="aboutsection">
                The LAI covers virtually every populated block group in the 50 states and the District of Columbia. <a href="http://www.census.gov/geo/reference/gtc/gtc_bg.html"
                target="_blank">Census block</a> groups generally have populations between 600 and 3,000 people. They vary in size depending on an area’s 
                population density, ranging from only a few city blocks to the entirety of some rural counties. Block groups 
                are the smallest geographical unit for which reliable data is available; they can generally be thought of as 
                representing neighborhoods (bearing in mind the <a href="http://www.rand.org/content/dam/rand/pubs/drafts/2006/DRU2400.8.pdf" 
                target="_blank">different ways people understand the concept of “neighborhood”</a>).
            </p>
            <p class="aboutsection">
                For non-metropolitan areas that account for the balance of the population living in the 50 states and the 
                District of Columbia, the LAI is calculated at the county level. For simplicity, the remainder of this page 
                will refer only to block groups, but all of the data and methodology described applies to non-metropolitan 
                counties as well.
            </p>
        </div>
    </div>
</asp:Content>
