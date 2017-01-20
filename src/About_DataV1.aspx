<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <h1>About the Portal</h1>
     <div id="left">
        <h2>Data & Methodology (Version 1)</h2>
         <p class="aboutsection">This page describes the data and methodology used for Version 1 of the Location Affordability Index, launched in November 2013. The data for Version 1 can be downloaded <a href="lai.aspx?url=download.php">here</a>.</p>
        <ul class="aboutmenu">
            <li><a href="#Overview">Overview</a></li>
            <li><a href="#DataSources">Data Sources</a></li>
            <li><a href="#Geographic">Geographical Scale and Scope</a></li>
            <li><a href="#KeyConcept">Key Concept: Regression Modeling</a></li>
            <li><a href="#ModelingTrans">Modeling Transportation Behavior</a></li>
            <li><a href="#CalculatingTrans">Calculating Transportation Costs</a></li>
            <li><a href="#ModelingHousing">Modeling Housing Costs</a></li>
            <li><a href="#Bring">Bringing It All Together: The Location Affordability Index</a></li>
        </ul>

        <p class="aboutsection">There’s more to affordability than how much you pay for housing.  Transportation costs are the second-biggest budget item for most families and have an important and robust relationship with housing costs and location.  The <a href="lai.aspx" >Location Affordability Index</a> sheds a new light on affordability by showing users the combined cost of housing and transportation as a percentage of income.</p>
        <img src="images/laiformula.png" alt="Housing + Transportation = Location Affordability" />
        <p class="aboutsection">Despite the simplicity of the concept, the Index is generated using an enormous amount of data and a series of complex analyses.  This page walks through exactly what the Index is and how it is produced in general language (for a more technical description, please see the <a href="About_TechDoc.aspx">LAI Methodology</a>.)</p>
    </div>
    <div id="right">
        <div id="imageblock_Mission">
                <img src="images/About_Mission.jpg" alt="People shopping at a farmers market"/>
        </div>
    </div>
    <div style="clear: both;"></div>
    
    <div style="width: 95%;">
        
        <a id="Overview"></a>
        <h3>Overview</h3>
        <p class="aboutsectionlong">The goal of the Location Affordability Index is to give consumers access to reliable, standardized data on the cost of location to make more informed decisions about where to live and work.  There are four elements—explained in greater detail in the following sections—that must be grasped in order to fully understand what the Index is, what it says, and how it is produced.  They are:</p>
        <ul class="aboutcontent">
            <li><strong>Data sources</strong> – the Index is calculated using data from a number of different sources</li>
            <li><strong>Geographical scale</strong> – as with any informational resource used by consumers, the level of specificity makes a difference in how it can be used.  For instance, weather forecasts are precise to the zip code, but flooding advisories apply to entire counties, making them less precise and thus less useful.</li>
            <li><strong>Prediction method</strong> – because there is no existing source of data that tells us what we’re interested in (the housing and transportation costs for a location, regardless of who lives there), we need to use existing data to make estimates. We do this using <a href="LAPMethodsv2.pdf" target="_blank">statistical regression modeling</a>.</li>
            <li><strong>Components</strong> – the Index is expressed in terms of housing costs, transportation costs, and income.  These three components are derived in three different ways.
                <ul>
                    <li>Housing costs – predicted using regression modeling</li>
                    <li>Transportation costs – calculated by predicting how much transportation people in a given neighborhood use—i.e. how many cars they own, how much they drive, and how much they use public transit—and then multiplying each of these quantities by the cost per use (e.g. annual cost per car).</li>
                    <li>Income – to make the Index as concrete and useful as possible, housing and transportation costs are calculated for eight different household profiles characterized by income level, household size and number of commuters.  These costs are then divided by the income for each profile to give a percentage of a given family’s income associated with a given location.  The incomes used are based on the median income levels in each region covered by the Index.</li>
                </ul>
            </li>
            </ul>
        
        <a id="DataSources"></a>
        <h3>Data Sources</h3>
        <p class="aboutsectionlong">In all, the Index draws from six different Federal data sources, Illinois state odometer readings, and transit data compiled by the Center for Neighborhood Technology:</p>
            <ul class="aboutcontent">
                <li><strong><a href="http://www.census.gov/acs/www/" target="_blank">U.S. Census American Community Survey (ACS)</a></strong> – an ongoing survey that generates data on community demographics, income, employment, transportation use, and housing characteristics. Here we use the 2008-2012 survey data.</li>
                <li><strong><a href="http://www.census.gov/geo/maps-data/data/tiger-line.html" target="_blank">U.S. Census TIGER/Line Files</a></strong> – contains data on geographical features such as roads, railroads, and rivers, as well as legal and statistical geographic areas.</li>
                <li><strong><a href="http://lehd.ces.census.gov/applications/help/onthemap.html#!what_is_onthemap" target="_blank">U.S. Census Longitudinal Employment-Household Dynamics (LEHD) Origin-Destination Employment Statistics (LODES)</a></strong> – detailed spatial distributions of workers' employment and residential locations and the relation between the two at the Census Block level and characteristic detail on age, earnings, industry distributions, and local workforce indicators (see overview <a href="http://lehd.ces.census.gov/applications/help/onthemap.html#!what_is_onthemap" target="_blank">here</a>).  Here we use LODES and OnTheMap Version 6, which are built on 2010 Census data.</li>
                <li><strong><a href="http://www.ntdprogram.gov/ntdprogram/" target="_blank">National Transit Database</a></strong> - over 660 transit providers who are recipients or beneficiaries of <a href="http://www.fta.dot.gov/" target="_blank">Federal Transit Administration</a> grants report annually on transit service and safety. We use the 2010 database, which corresponds to the middle year of the 2010-2012 ACS data.</li>
                <li><strong><a href="http://www.bls.gov/cex/" target="_blank">Consumer Expenditure Survey</a></strong> – a set of ongoing surveys conducted by the <a href="http://www.bls.gov/home.htm" target="_blank">Bureau of Labor Statistics</a> (part of the Department of Labor) that provide information on the buying habits of American consumers, including data on their expenditures, income, and consumer unit (families and single consumers) characteristics.</li>
                <li><strong>AllTransit&trade; database</strong> – developed by the <a href="http://www.cnt.org/" target="_blank">Center for Neighborhood Technology</a>, this is a compilation of General Transit Feed Specification (GTFS) station and stop data for bus, rail, and ferry service for more than 75 percent of all metropolitan and micropolitan areas in the country with populations larger than 250,000 and 41 percent of those with populations of less than 250,000 (see detailed documentation  for coverage area).</li>
                <li><strong>Illinois State odometer readings</strong> – as part of the smog check required for vehicles in the state’s non-attainment areas (the Chicago and St. Louis metro areas), the <a href="http://www.epa.state.il.us/air/vim/" target="_blank">Illinois Environmental Protection Agency</a> records odometer readings.  Odometer data for 2007 and 2009 were compared to determine how many miles had been driven by location.  To validate the use of this data for entire country, it was compared to the 2009 <a href="http://nhts.ornl.gov/" target="_blank">National Household Travel Survey</a> (maintained by the <a href="http://www.fhwa.dot.gov/policyinformation/" target="_blank">Federal Highway Administration</a>).</li>
            </ul>
        <p class="aboutsectionlong">These data contain information about the characteristics of every Census block group in the Index’s <a href="coverage.pdf" target="_blank">coverage area</a>.</p>

        <a id="Geographic"></a>
        <h3>Geographic Scale</h3>
        <p class="aboutsectionlong">Given currently available data, we are able to reliably estimate housing and transportation costs at the Census block-group level.  <a href="http://www.census.gov/geo/reference/gtc/gtc_bg.html" target="_blank">Census block groups</a> have populations between 600 and 3,000 people. They vary in size depending on an area’s population density, ranging from only a few city blocks to the entirety of some rural counties. Block groups are the smallest geographical unit for which reliable data is available; they can generally be thought of as representing neighborhoods (bearing in mind the <a href="http://www.rand.org/content/dam/rand/pubs/drafts/2006/DRU2400.8.pdf" target="_blank">different ways people understand the concept of “neighborhood”</a>).  The Index covers 942 Core Based Statistical Areas (similar to metropolitan areas), accounting for 94% of the U.S. population.</p>

        <a id="KeyConcept"></a>
        <h3>Key Concept: Regression Modeling</h3>
        <p class="aboutsectionlong">To calculate the housing and transportation costs for a given location, we use data for demographics and features of the built environment that we know influence these costs: income, average household size, average commuters per household, population density, walkability, transit access, and employment access. Using these data and <a href="http://www.youtube.com/watch?v=zPG4NjIkCjc" target="_blank">statistical regression</a> – a widely used statistical technique that assesses the relationship between one or more inputs and an output – we generate a series of mathematical models for the relationship between all of these data points and housing and transportation costs.  By plugging data into these models, we can estimate components of housing and transportation costs at the Census block-group level that can then be used to calculate the Index.</p>
        <p class="aboutsectionlong">For an illustration of how this works, think about the relationship between driving and walkability.  However you measure it, <a href="http://www.climateplan.org/wp-content/plugins/downloads-manager/upload/Travel_Built_Environ.pdf" target="_blank">the greater a neighborhood’s walkability, the less its residents will drive</a>, all else being equal.  In order to use data on walkability to predict transportation costs, a researcher would need to model this relationship.  He or she would do this by looking at existing data on vehicle miles traveled (VMT) and walkability for many block groups (there are almost 200,000 covered by the Index).  Next, he or she would use statistical regression modeling to come up with the best possible approximation (or model) of that relationship, represented by an equation for a line through the middle of the data points.  He or she then uses this equation and data on walkability to estimate the VMT for different block groups, which is used to calculate total transportation costs.</p>

        <p class="tabletitle">Figure 1: Regression Modeling in Concept</p>
        <img src="images/Figure1.jpg" alt="Regression Modeling in Concept" />

        <a id="ModelingTrans"></a>
        <h3>Modeling Transportation Behavior</h3>
        <p class="aboutsectionlong">To estimate transportation costs, we start by generating three regression models that predict the three major behaviors or decisions that determine transportation costs for a given block group: how many cars families own (average cars per household), how much they drive (average annual vehicle miles traveled or VMT), and how much they use transit (percent of commuters using transit). The inputs used to generate these models (Table 1) are calculated from Federal and transit data to approximate key demographic characteristics and features of the built environment: income, average household size, average commuters per household, population density, walkability, transit access, and employment access.  To capture walkability, for instance, we calculate a neighborhood’s block density (blocks per square mile) and intersection density (intersections per square mile), both of which are negatively correlated with how much people walk in an area. (For more information about these model inputs, see the <a href="LAPMethodsv2.pdf" target="_blank">detailed methodology documentation</a>.)  Data for dependent or outcome variables—i.e., the quantity each model will predict—are also required as inputs (Table 2).</p>
        <p class="tabletitle">Table 1: Regression Modeling Inputs: Independent (Predictor) Variables</p>
        <table class="abouttable" title="Regression Modeling Inputs: Independent (Predictor) Variables">
                <thead>
                    <tr>
                        <th width="200px">Variable</th>
                        <th>Description</th>
                        <th width="190px">Data Source</th>
                    </tr>
                </thead>
                <tr>
                    <td>Gross Density</td>
                    <td># of households/total acres</td>
                    <td>Census ACS, TIGER/Line files</td>
                </tr>
                <tr>
                    <td>Residential Density</td>
                    <td># households in residential blocks/total acres in residential blocks</td>
                    <td>Census ACS, TIGER/Line files</td>
                </tr>
                <tr>
                    <td>Block Density</td>
                    <td># of blocks/total land area</td>
                    <td>Census TIGER/Line files</td>
                </tr>
                <tr>
                    <td>Intersection Density</td>
                    <td># of intersections/total land area</td>
                    <td>Census TIGER/Line files</td>
                </tr>
                <tr>
                    <td>Transit Connectivity Index</td>
                    <td>Transit access as a function of transit service frequency and proximity to transit nodes, weighted by observed journey to work data</td>
                    <td>AllTransit&trade; database</td>
                </tr>
                <tr>
                    <td>Transit Access Shed</td>
                    <td>Optimal accessible area by public transportation within 30 minutes allowing for one transfer</td>
                    <td>AllTransit&trade; database</td>
                </tr>
                <tr>
                    <td>Transit Frequency of Service</td>
                    <td>Service frequency within a Transit Access Shed</td>
                    <td>AllTransit&trade; database</td>
                </tr>
                <tr>
                    <td>Employment Access Index</td>
                    <td>Number of jobs in area block groups/squared distance of block groups</td>
                    <td>Census LEHD-LODES</td>
                </tr>
                <tr>
                    <td>Job Diversity Index</td>
                    <td>Function of the correlation between employment in 20 different industry sectors and autos per household</td>
                    <td>Census LEHD-LODES</td>
                </tr>
                <tr>
                    <td>Average Median Commute Distance</td>
                    <td>Calculated from data on spatial distributions of workers' employment and residential locations and the relation between the two at the Census Block level</td>
                    <td>Census LEHD-LODES</td>
                </tr>
                <tr>
                    <td>Median Household Income</td>
                    <td></td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Average Household Size</td>
                    <td>Calculated from data on Tenure and Total Population in Occupied Housing Units by Tenure</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Per-capita Household Income</td>
                    <td>Median household income/average household size</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Average Commuters per Household</td>
                    <td>Calculated using the total number of workers 16 years and over who do not work at home</td>
                    <td>Census ACS</td>
                </tr>
        </table>
        <br />
        <p class="tabletitle">Table 2: Regression Modeling Outputs: Dependent (Outcome) Variables for Transportation Usage</p>
        <table class="abouttable" title="Table 2 - Regression Modeling Inputs: Dependent (Outcome) Variables for Transportation Usage">
                <thead>
                    <tr>
                        <th width="200px">Variable</th>
                        <th>Description</th>
                        <th width="190px">Data Source</th>
                    </tr>
                </thead>
                <tr>
                    <td>Cars per household</td>
                    <td></td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Annual VMT per household</td>
                    <td></td>
                    <td>Illinois Environmental Protection Agency, National Household Travel Survey</td>
                </tr>
                <tr>
                    <td>Percentage of commuters using transit</td>
                    <td></td>
                    <td>Census ACS</td>
                </tr>
        </table>

        <p class="aboutsectionlong">Once these models have been developed, we can use them to estimate average autos per household and vehicle miles traveled and the percent of commuters using transit for all 198,373 Census block groups covered by the Index.  This is accomplished by plugging data for each of the 14 predictor variables for each block group into each of the three models.</p>
        
        <p class="tabletitle">Figure 2: General Method for Estimating Transportation Usage from Regression Models</p>
        <img src="images/figure2.jpg" alt="Figure 2 - General method for estimating transportation usage from regression models" />
        

        <p class="aboutsectionlong">Most of the predictor variables come from data that describe features of a neighborhood that are the same regardless of who lives there: population density, walkability, and transit and employment access. For the demographic characteristics of a neighborhood—captured by the average household size, income, and number of commuters—using actual averages for each block group wouldn’t produce a very useful Index. Since people tend to live in places they can afford, using actual demographic data would produce a map where the majority of neighborhoods look more or less affordable. Instead, we have chosen eight household profiles—characterized by the number of family members, income, and number of commuters—that represent a wide range of American families.  We calculate these family profiles for each region and then use them to generate 8 different sets of outcome variables for each block group. This approach allows us to show how affordable all the neighborhoods in a region are for each specific household, rather than just households that currently live there.</p>
        <p class="tabletitle">Table 3: Household Profiles Used for Estimating Transportation Usage</p>
           <table class="abouttable" title="Table 3 - Household profiles used for estimating transportation usage">
                <thead>
                    <tr>
                        <th>Household type</th>
                        <th>Family members</th>
                        <th>Income</th>
                        <th>Commuters</th>
                    </tr>
                </thead>
                <tr>
                    <td>Regional Typical</td>
                    <td>Average Household Size for Region</td>
                    <td>Median Income for Region</td>
                    <td>Average number of Commuters per Household for Region</td>
                </tr>
                <tr>
                    <td>Regional Moderate</td>
                    <td>Average Household Size for Region</td>
                    <td>80% of Median Income for Region</td>
                    <td>Average number of Commuters per Household for Region</td>
                </tr>
                <tr>
                    <td>Low Income</td>
                    <td>3</td>
                    <td>50% of Housing and Urban Development Area Median Family Income</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>Single Person Very Low Income</td>
                    <td>1</td>
                    <td>National Poverty Line</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>Single Professional</td>
                    <td>1</td>
                    <td>200% of Per Capita Income for Region</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>Single Worker</td>
                    <td>1</td>
                    <td>Median Per Capita Income for Region</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>Dual-Income Family</td>
                    <td>4</td>
                    <td>150% of Median Income for Region</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td>Retirees</td>
                    <td>2</td>
                    <td>80% of Median Income for Region</td>
                    <td>0</td>
                </tr>
                </table>

                <br /> 

        <p class="tabletitle">Figure 3: Specific Method for Estimating Transportation Usage for Eight Different Household Profiles</p>
        <img src="images/figure3.jpg" alt="Figure 3 - Specific method for estimating transportation usage for eight different household profiles" />


        <a id="CalculatingTrans"></a>
        
        <h3>Calculating Transportation Costs</h3>
        <p class="aboutsectionlong">Once the average transportation usage for each block group is estimated for each demographic profile, we can use those estimates to calculate total annual transportation costs.</p>
        
        <h4>Auto ownership and driving costs</h4>
        <p class="aboutsectionlong">The regression models we use estimate transportation usage, not total transportation costs. In order to calculate total automobile-related transportation costs, we multiply the estimated transportation usage (i.e. car ownership and vehicle miles traveled) by the cost per use (Figure 4).  Ownership costs include all expenses, from the time of purchase on, that are required to keep the car roadworthy:  purchase costs (spread over length of car ownership) or car payments, insurance, license and registration fees, taxes, and routine repairs and maintenance.  Driving costs include the cost of gas and maintenance due to wear-and-tear. </p>
        
        <p class="tabletitle">Figure 4: Calculating Auto Ownership and Driving Costs</p>
       <img src="images/figure4.jpg" alt="Calculating Auto Ownership and Driving Costs" />
        
        <p class="aboutsectionlong">The car ownership cost and car use cost components of the Index are generated using the <a href="http://www.bls.gov/cex/" target="_blank">Consumer Expenditure Survey</a> (CES), from US Bureau of Labor Statistics. New research undertaken for the development of this site represents a significant advance over previous measures that focused primarily on autos less than five years old and used a single cost multiplier for all vehicle owners, regardless of income (a summary of the <a href="downloads/AutoCostResearch.pdf" target="_blank">analysis can be found here</a>). </p>
        
        <h4>Transit costs</h4>
        <p class="aboutsectionlong">There is no existing data on the average number of transit trips or expenditures per commuter or per household at the block-group level. Using regression modeling, we estimate the percentage of workers in each block group commuting by transit.  We then use these estimates along with data from the ACS, the <a href="http://www.ntdprogram.gov/ntdprogram/" target="_blank">National Transit Database</a> (maintained by the <a href="http://www.fta.dot.gov/" target="_blank">Federal Transit Administration</a>), and our household profiles to calculate estimated annual transit trips and expenditures per household using the following steps:</p>
        <ol class="aboutcontent">
            <li>Total transit commuters (metropolitan area)
                <ol type="a">
                    <li>Commuters in each block group = [number of households] X [commuters per household]</li>
                    <li>Transit commuters in each block group = [number of commuters] X [estimated percentage of commuters using transit]</li>
                    <li>Transit commuters in each metropolitan area = sum of transit commuters in all block groups in the metropolitan area</li>
                </ol>
            </li>
            <li>Annual transit trips and transit fares paid (metropolitan area) – Transit trips and transit revenue are reported to the National Transit Database by transit agency, not metro area. As a result, we need to allocate transit agency trips and farebox revenue (which should be equal to the total fares paid by transit riders) to metro areas according to the proportion of the transit agency’s coverage area in each metro area. For instance, the Massachusetts Bay Transportation Authority (MBTA) commuter rail serves stops in the Boston, Worcester, and Providence metropolitan areas, so the commuter rail’s reported farebox revenues and trips are allocated to those three regions according to the proportion of total stops in each.
                <ol type="a">
                    <li>Annual transit trips (metro area)</li>
                    <li>Annual transit fares (metro area)</li>
                </ol>
            </li>
            <li>Annual transit trips and transit fares per transit commuter (metropolitan area)
                <ol type="a">
                    <li>Annual transit trips per transit commuter = [2a] / [1]</li>
                    <li>Annual transit fares per transit commuter = [2b] / [1]</li>
                </ol>
            </li>
            <li>Estimated transit commuters per household (each household profile @ block group) = [commuters per household] X [estimated percentage of commuters using transit]</li>
            <li>Estimated transit trips and transit fares per household (each household profile @ block group)
                <ol type="a">
                    <li>Estimated annual transit trips per household = [4] X [3a]</li>
                    <li>Estimated annual transit fares per household = [4] X [3b]</li>
                </ol>    
            </li>
        </ol>
    <p class="aboutsectionlong">This calculation relies on the assumption that the average transit trips and fares per household in a given block group are proportional to the percentage of commuters using transit for their journey to work in that block group, relative to the other block groups in the same metro area.  This is a reasonable assumption given what we know about the proportion of transit trips that are work-related: the 2009 National Household Travel survey puts the <a href="http://nhts.ornl.gov/2009/pub/stt.pdf" target="_blank">percentage of transit trips related to work at 33%</a> (versus 20% of car trips; see Table 9), and an analysis of 150 separate on-board passenger surveys by the American Public Transit Association <a href="http://www.apta.com/resources/statistics/Documents/transit_passenger_characteristics_text_5_29_2007.pdf" target="_blank">found that 59.2% of transit trips are work-related</a>.  Nevertheless, as with the autos per household and annual vehicle miles travelled figures that appear in the Index, these numbers are averages and do not attempt to represent the exact transit expenses for any specific household.</p>    
        
        <!--
        <p class="aboutsectionlong">We use regression modeling to estimate the percentage of workers in each block group commuting by transit. Because there is no source of data on household transit spending, determining transit costs requires a number of sequential calculations:</p>
         <ol class="aboutcontent">
             <li>Transit commuters in each block group – [percentage of commuters using transit] X [total number of commuters]</li>
             <li>Transit commuters in each metropolitan area – sum of transit commuters in all block groups</li>
             <li>Transit trips and transit fares paid in each metropolitan area – transit trips and transit revenue are reported to the <a href="http://www.ntdprogram.gov/ntdprogram/" target="_blank">National Transit Database</a> (maintained by the <a href="http://www.fta.dot.gov/" target="_blank">Federal Transit Administration</a>) by transit agency, not metro area.  As a result, we need to allocate transit agency farebox revenue (which should be equal to fares paid by transit riders) and trips to metro areas according to the proportion of the transit agency’s coverage area in each metro area.  For instance, the Massachusetts Bay Transportation Authority (MBTA) commuter rail serves stops in the Boston, Worcester, and Providence metropolitan areas, so the commuter rail’s reported farebox revenues and trips are allocated to those three regions according to the proportion of total stops in each.</li>
             <li>Transit trips and transit fares paid per commuter in each metropolitan area – [3] / [2]</li>
             <li>Transit trips and transit fares paid per block group – [4] X [1]</li>
         </ol>
        <p class="aboutsectionlong">Once we have allocated trips and fares to each block group, we divide them by the number of households to get the average annual household transit costs and number of trips.</p>
        -->

        <a id="ModelingHousing"></a>
        <h3>Modeling Housing Costs</h3>
        <p class="aboutsectionlong">As with transportation usage, we model housing costs using statistical regression.  In addition to using the 14 variables from the transportation usage models, we include Regional Selected Monthly Ownership Costs (SMOC) and Regional Median Gross Rent when we are generating models for those two costs at the block-group level.  Since we are modeling housing costs directly, there is no need for further calculation.</p>
        <p class="tabletitle">Table 4: Regression Modeling Inputs Used for Housing Costs Only (all from Census ACS)</p>
               <table class="abouttable" title="Table 4 - Regression Modeling Inputs Used for Housing Costs Only (all from Census ACS)">
                <thead>
                    <tr>
                        <th>Dependent Variables</th>
                        <th>Additional Independent Variables</th>
                    </tr>
                </thead>
                <tr>
                    <td>Gross Rent</td>
                    <td>Regional Median Gross Rent</td>
                </tr>
                <tr>
                    <td>Selected Monthly Ownership Costs (SMOC)</td>
                    <td>Regional Median SMOC</td>
                </tr>
            </table>
        <br />
 
       <p class="tabletitle">Figure 5: Method for Estimating Housing Costs for Renters and Owners for Eight Different Household Profiles</p>
       <img src="images/figure5.jpg" alt="Figure 5 - Method for estimating housing costs for renters and owners for eight different household profiles" />
        <br /><br />
        <a id="Bring"></a>
        <h3>Bringing It All Together: The Location Affordability Index</h3>
        <p class="aboutsectionlong">After going through the steps described above, we have all the elements necessary for the Location Affordability Index: housing costs for renters and owners, transportation costs, and income for eight different household profiles for each block group covered by the Index.  Selecting from the Household Type menu in the upper left allows the user to pull up the map for each household type.</p>
        <img src="images/atlanta.png" alt="Atlanta in the LAI" />
    </div>
</div>
</asp:Content>



