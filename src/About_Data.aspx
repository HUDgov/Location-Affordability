<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <h1>About the Portal</h1>
     <div id="left">
        <h2>Data & Methodology</h2>
        <ul class="aboutmenu">
            <li><a href="#Overview">Overview</a></li>
            <li><a href="#DataSources">Data Sources</a></li>
            <li><a href="#Geographic">Geographical Scale and Scope</a></li>
            <li><a href="#KeyConcept1">Key Concept 1: Regression Modeling</a></li>
            <li><a href="#KeyConcept2">Key Concept 2: Simultaneous Equation Modeling</a></li>
            <li><a href="#ModelingTrans">Estimating Household Transportation Behavior and Housing Costs</a></li>
            <li><a href="#CalculatingTrans">Calculating Transportation Costs</a></li>
            <li><a href="#Bring">Bringing It All Together: The Location Affordability Index</a></li>
        </ul>
        <p><strong>Note: this explanation of the data and methodology behind the Location Affordability Index is specific to Version 2 of the LAI.</strong> While it has value as a lay-language narrative explanation and is broadly applicable to Version 2.1, data users should consult the full <a href="LAPMethodsV2.pdf" target="_blank">Version 2.1 documentation</a>.</p>
        <p class="aboutsection">There’s more to affordability than how much you pay for housing. Transportation costs are the second-biggest budget item for most families and have an important and robust relationship with the location and cost housing. The <a href="lai.aspx">Location Affordability Index</a> offers a more holistic perspective on affordability by showing users the combined cost of housing and transportation as a percentage of household income.</p>
        <img src="images/laiformula.png" alt="Housing + Transportation = Location Affordability" />
        <p class="aboutsection">Despite the simplicity of the concept, the Index is generated using an enormous amount of data and a series of complex analyses. This page walks through in detail what the Index is and how it is produced in general language.</p>
        <p>For a more technical description, please see the <a href="LAPMethodsV2.pdf" target="_blank">LAI Methodology</a>. Note that this document applies specifically to Version 2 of the LAI; data and methodology documentation for Version 1 of the LAI can be found <a href="About_DataV1.aspx">here</a>.</p>
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
        <p class="aboutsectionlong">The goal of the Location Affordability Index is to give consumers access to reliable, standardized data on the cost of location to make more informed decisions about where to live and work.  There are four elements—explained in greater detail in the following sections—that must be grasped in order to fully understand what the Index is, how it is produced, and and what it tells us.  They are:</p>
        <ul class="aboutcontent">
            <li><strong>Data sources</strong> – the Index is calculated using data from a number of different sources</li>
            <li><strong>Geographical scale</strong> – as with any informational resource used by consumers, the level of specificity makes a difference in how it can be used.  For instance, weather forecasts are precise to the zip code, but flooding advisories apply to entire counties, making them less precise and thus less useful.</li>
            <li><strong>Prediction method</strong> – because there is no existing source of data that tells us what we’re interested in (the housing and transportation costs for a location, regardless of who lives there), we need to use existing data to make estimates. We do this using two types of statistical regression modeling.</li>
            <li><strong>Components</strong> – the Index is expressed in terms of housing costs, transportation costs, and income.  These three components are derived in three different ways.
                <ul>
                    <li>Housing costs – predicted using regression modeling</li>
                    <li>Transportation costs – calculated by estimating how much transportation people in a given neighborhood use—i.e. how many cars they own, how much they drive, and how much they use public transit—and then multiplying each of these quantities by their unit cost (e.g. annual cost per car).</li>
                    <li>Income – to make the Index as concrete and useful as possible, housing and transportation costs are calculated for eight different household profiles characterized by income level, household size and number of commuters.  These costs are then divided by the income for each profile to give a percentage of a given family’s income associated with a given location.  The incomes used are based on the median income levels in each region covered by the Index.</li>
                </ul>
            </li>
            </ul>
        
        <a id="DataSources"></a>
        <h3>Data Sources</h3>
        <p class="aboutsectionlong">In all, the Index draws from six different Federal data sources and Illinois state odometer readings:</p>
            <ul class="aboutcontent">
                <li><strong><a href="http://www.census.gov/acs/www/" target="_blank">U.S. Census American Community Survey (ACS)</a></strong> – an ongoing survey that generates data on community demographics, income, employment, transportation use, and housing characteristics. Here we use the 2008-2012 survey data.</li>
                <li><strong><a href="http://www.census.gov/geo/maps-data/data/tiger-line.html" target="_blank">U.S. Census TIGER/Line Files</a></strong> – contains data on geographical features such as roads, railroads, and rivers, as well as legal and statistical geographic areas.</li>
                <li><strong><a href="http://lehd.ces.census.gov/applications/help/onthemap.html#!what_is_onthemap" target="_blank">U.S. Census Longitudinal Employment-Household Dynamics (LEHD) Origin-Destination Employment Statistics (LODES)</a></strong> – detailed spatial distributions of workers' employment and residential locations and the relation between the two at the Census Block level and characteristic detail on age, earnings, industry distributions, and local workforce indicators (see overview <a href="http://lehd.ces.census.gov/applications/help/onthemap.html#!what_is_onthemap" target="_blank">here</a>).  Here we use LODES and OnTheMap Version 6, which are built on 2010 Census data.</li>
                <li><strong><a href="http://www.ntdprogram.gov/ntdprogram/" target="_blank">National Transit Database</a></strong> - over 660 transit providers who are recipients or beneficiaries of <a href="http://www.fta.dot.gov/" target="_blank">Federal Transit Administration</a> grants report annually on transit service and safety. We use the 2010 database, which corresponds to the middle year of the 2008-2012 ACS data.</li>
                <li><strong><a href="http://www.bls.gov/cex/" target="_blank">Consumer Expenditure Survey</a></strong> – a set of ongoing surveys conducted by the <a href="http://www.bls.gov/home.htm" target="_blank">Bureau of Labor Statistics</a> (part of the Department of Labor) that provide information on the buying habits of American consumers, including data on their expenditures, income, and consumer unit (families and single consumers) characteristics.</li>
                <li><strong>Illinois State odometer readings</strong> – as part of the smog check required for vehicles in the state’s non-attainment areas (the Chicago and St. Louis metro areas), the <a href="http://www.epa.state.il.us/air/vim/" target="_blank">Illinois Environmental Protection Agency</a> records odometer readings.  Odometer data for 2007 and 2009 were compared to determine how many miles had been driven by location.  To validate the use of this data for entire country, it was compared to the 2009 <a href="http://nhts.ornl.gov/" target="_blank">National Household Travel Survey</a> (maintained by the <a href="http://www.fhwa.dot.gov/policyinformation/" target="_blank">Federal Highway Administration</a>).</li>
            </ul>
        <p class="aboutsectionlong">These data contain information about the characteristics of every Census block group in the Index’s <a href="coverage.pdf" target="_blank">coverage area</a>.</p>

        <a id="Geographic"></a>
        <h3>Geographic Scale</h3>
        <p class="aboutsectionlong">The LAI covers virtually every populated block group in the 50 states and the District of Columbia. <a href="http://www.census.gov/geo/reference/gtc/gtc_bg.html" target="_blank">Census block groups</a> generally have populations between 600 and 3,000 people. They vary in size depending on an area’s population density, ranging from only a few city blocks to the entirety of some rural counties. Block groups are the smallest geographical unit for which reliable data is available; they can generally be thought of as representing neighborhoods (bearing in mind the <a href="http://www.rand.org/content/dam/rand/pubs/drafts/2006/DRU2400.8.pdf" target="_blank">different ways people understand the concept of “neighborhood”</a>).</p>
        <p class="aboutsectionlong">For non-metropolitan areas that account for the balance of the population living in the 50 states and the District of Columbia, the LAI is calculated at the county level.  For simplicity, the remainder of this page will refer only to block groups, but all of the data and methodology described applies to non-metropolitan counties as well.</p>
        
        <a id="KeyConcept1"></a>
        <h3>Key Concept 1: Regression Modeling</h3>
        <p class="aboutsectionlong">To calculate the housing and transportation costs for a given location, we use data for demographics and features of the built environment that we know influence these costs: income, average household size, average commuters per household, population density, walkability, transit access, and employment access. Using these data and <a href="http://www.youtube.com/watch?v=zPG4NjIkCjc" target="_blank">statistical regression</a> – a widely used statistical technique that assesses the relationship between one or more input variables and an output variable – we generate mathematical models for the relationship between all of these data points and housing and transportation costs.  By plugging data into these models, we can estimate components of housing and transportation costs - mostly at the Census block-group level - that can then be used to calculate the Index.</p>
        <p class="aboutsectionlong">For an illustration of how this works, think about the relationship between driving and walkability.  However you measure it, <a href="http://www.climateplan.org/wp-content/plugins/downloads-manager/upload/Travel_Built_Environ.pdf" target="_blank">the greater a neighborhood’s walkability, the less its residents will drive</a>, all else being equal.  In order to use data on walkability to predict driving (and thus transportation costs), a researcher would need to model this relationship.  He or she would do this by looking at existing data on vehicle miles traveled (VMT) and walkability for many block groups (there are almost 200,000 covered by the Index).  Next, he or she would use statistical regression modeling to come up with the best possible approximation (or model) of that relationship, represented by an equation for a line through the middle of the data points (think of this model as a machine that takes in data on walkability and spits out estimates on VMT, as in Figure 1 below).  He or she would use this equation and data on walkability to estimate the VMT for specific block groups, which could then be used to calculate total transportation costs.</p>

        <p class="tabletitle">Figure 1: Regression Modeling in Concept</p>
        <img src="images/Figure1.jpg" alt="Regression Modeling in Concept" />

        <p class="aboutsectionlong">For the purposes of the LAI, we are interested in predicting the following outputs as they apply to households:</p>
        <ul class="aboutcontent">
            <li>Annual vehicle miles traveled</li>
            <li>Automobiles per household (renters and homeowners)</li>
            <li>Annual transit trips and transit expenditures (renters and homeowners)</li>
            <li>Gross Rent (includes rent and utilities)</li>
            <li>Selected Monthly Ownership Costs – SMOC (includes mortgage, utilities, and other costs related to homeownership like property taxes and condo fees)</li>
        </ul>

        <p class="aboutsectionlong">These are predicted using the input and output variables listed in Table 1.</p>
        
        <p class="tabletitle">Table 1: Regression Modeling Input and Output Variables</p>

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
                    <td># of households (HH) / total acres</td>
                    <td>Census ACS, TIGER/Line files</td>
                </tr>
                <tr>
                    <td>Block Density</td>
                    <td># of blocks / total land area</td>
                    <td>Census TIGER/Line files</td>
                </tr>
                <tr>
                    <td>Employment Access Index</td>
                    <td>Number of jobs in area block groups / squared distance of block groups</td>
                    <td>Census LEHD-LODES</td>
                </tr>
                <tr>
                    <td>Retail Employment Access Index</td>
                    <td>Number of retail jobs in area block groups / squared distance of block groups</td>
                    <td>Census LEHD-LODES</td>
                </tr>
                <tr>
                    <td>Median Commute Distance</td>
                    <td>Calculated from data on spatial distributions of workers' employment and residential locations and the relation between the two at the Census block level</td>
                    <td>Census LEHD-LODES</td>
                </tr>
                <tr>
                    <td>Job Density</td>
                    <td># of jobs / total land area</td>
                    <td>Census LEHD-LODES</td>
                </tr>
                <tr>
                    <td>Retail Density</td>
                    <td># of retail jobs / total land area</td>
                    <td>Census LEHD-LODES</td>
                </tr>
                <tr>
                    <td>Fraction of Rental Units</td>
                    <td>Number of rental units as a percentage of total housing units</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Fraction of Single Family Detached Housing Units</td>
                    <td>Number of single family detached housing units as a percentage of total housing units</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Median Rooms/Owner HU</td>
                    <td>Median number of rooms in owner occupied housing units (HU)</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Median Rooms/Renter HU</td>
                    <td>Median number of rooms in renter occupied housing units</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Area Median Household Income</td>
                    <td>Determined using County median household income for rural areas or CBSA median household income for Metropolitan and Micropolitan Areas</td>
                    <td>Census ACS</td>
                </tr>
                 <tr>
                    <td>Fraction of Median Income Owners</td>
                    <td>Median income for owners at the block group level as a percentage of either CBSA or County median income (County for rural areas / CBSA for Metropolitan and Micropolitan Areas)</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Fraction of Area Median Income Renters</td>
                    <td>Median income for renters at the block group level as a percentage of either CBSA or County median income (County for rural areas / CBSA for Metropolitan and Micropolitan Areas)</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Average Household Size: Owners</td>
                    <td>Calculated from data on Tenure and Total Population in Occupied Housing Units by Tenure</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Average Household Size: Renters</td>
                    <td>Calculated from data on Tenure and Total Population in Occupied Housing Units by Tenure</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Average Commuters per Household Owners</td>
                    <td>Calculated using the total number of workers 16 years and over who do not work at home</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Average Commuters per Household Renters</td>
                    <td>Calculated using the total number of workers 16 years and over who do not work at home</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Median Selected Monthly Owner Costs</td>
                    <td>Includes mortgage payments, utilities, fuel, and condominium and mobile home fees where appropriate</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Median Gross Rent</td>
                    <td>Includes contract rent as well as utilities and fuel if paid by the renter</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Autos per Household Owners</td>
                    <td>Calculated from Aggregate Number of Vehicles Available by Tenure and Occupied Housing Units</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Autos per Household Renters</td>
                    <td>Calculated from Aggregate Number of Vehicles Available by Tenure and Occupied Housing Units</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Percent Transit Journey to Work Owners</td>
                    <td>Calculated from Means of Transportation to Work by Tenure</td>
                    <td>Census ACS</td>
                </tr>
                <tr>
                    <td>Percent Transit Journey to Work Renters</td>
                    <td>Calculated from Means of Transportation to Work by Tenure</td>
                    <td>Census ACS</td>
                </tr>
        </table>

        <p class="aboutsectionlong">The inputs used to generate these models (Table 1) are calculated from Federal and transit data to approximate key demographic characteristics and features of the built environment: income, average household size, average commuters per household, population density, walkability, transit access, and employment access. To capture walkability, for instance, we calculate a neighborhood’s block density (blocks per square mile) and intersection density (intersections per square mile), both of which are negatively correlated with how much people walk in an area. (For more information about these model inputs, see the detailed <a href="LAPMethodsV2.pdf" target="_blank">methodology documentation</a>.)</p>
        
        
        <a id="KeyConcept2"></a>
        <h3>Key Concept 2: Simultaneous Equation Modeling</h3>
        <p class="aboutsectionlong">Many advances in statistics have enabled the creation of more nuanced models for explaining complex phenomena like impact of demographics and the built environment on housing and transportation costs. One approach that has proved useful in urban planning studies is simultaneous (or structural) equation modeling (SEM). SEM allows set of regression models that are theoretically related to interact directly and influence each others’ outputs.</p>
        <p class="aboutsectionlong">Consider, for instance, the autos per household for homeowners can be predicted using the following input variables:</p>
        <ul class="aboutcontent">
            <li>Employment Access</li>
            <li>Gross HH Density</li>
            <li>HH Size Owner</li>
            <li>Commuters/HH Owners</li>
            <li>Fraction Single Detached HU</li>
            <li>Area Income Fraction Owners</li>
            <li>Fraction Rental Units</li>
            <li>Retail Gravity</li>
            <li>Area Median Income</li>
            <li>Median Rooms/Owner HU</li>
            <li>Block Density</li>
            <li>Selected Monthly Ownership Costs (SMOC)</li>
         </ul>       
        <p class="aboutsectionlong">Notice that Selected Monthly Ownership costs (SMOC) are included here but are also, like autos per household, one of the quantities that need to be predicted using regression modeling.  Using SEM, we can model all of our outputs simultaneously, which allows outputs to directly influence each other (in addition to all of the relevant inputs for each output).  The resulting model looks like this (for simplicity, only four out of 15 input variables are shown):</p>
        
        
        <p class="tabletitle">Figure 2: Simplified LAI Simultaneous Equations Model</p>
        <img src="images/Figure2v2.jpg" alt="Simplified LAI Simultaneous Equations Model" width="900px" />
        

        <p class="aboutsectionlong">Due to limitations with the data for VMT, it was not included in the SEM; it continues to be modeled using standard regression</p>



        <a id="ModelingTrans"></a>
        <h3>Estimating Household Transportation Behavior and Housing Costs</h3>
        <p class="aboutsectionlong">Once these models have been developed, we can use them to estimate average autos per household and vehicle miles traveled and the percent of commuters using transit for all 198,373 Census block groups covered by the Index.  This is accomplished by plugging data for each of the 15 predictor variables for each block group into both the SEM and the VMT model.</p>
        
        
        <p class="tabletitle">Figure 3: General Method for Estimating Transportation Usage from Regression Models</p>
        <img src="images/figure3v2.jpg" alt="Figure 3 - General Method for Estimating Transportation Usage from Regression Models"  width="900px"/>
        

        <p class="aboutsectionlong">Most of the input variables come from data that describe features of a neighborhood that are common to everyone who lives there: population density, walkability, transit access and quality, and employment access (these are all features of the built environment). For inputs that identify characteristics the residents themselves--household size, income, and number of commuters--using actual data for each block group wouldn’t produce a very useful Index. Since people tend to live in places they can afford, using actual demographic data would produce a map where the majority of neighborhoods look more or less affordable. Instead, we have chosen eight household profiles—characterized by the number of family members, income, and number of commuters—that represent a wide range of American families, providing useful insight on affordability for a variety of different users, including consumers, planning agencies, real estate professionals, and housing counselors.</p>
        <p class="tabletitle">Table 3: Household Profiles Used for Estimating Transportation Usage</p>
           <table class="abouttable" title="Table 3 - Household profiles used for estimating transportation usage">
                <thead>
                    <tr>
                        <th>Household Profile</th>
                        <th>Income</th>
                        <th>Size</th>
                        <th># of Commuters</th>
                    </tr>
                </thead>
                <tr>
                    <td>Median-income family</td>
                    <td>MHHI</td>
                    <td>4</td>
                    <td>2</td>
                </tr>
                
                <tr>
                    <td>Very low-income individual</td>
                    <td>National poverty line</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                
                <tr>
                    <td>Working individual</td>
                    <td>50% of MHHI</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                
                <tr>
                    <td>Single professional</td>
                    <td>135% of MHHI</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                
                <tr>
                    <td>Retired couple</td>
                    <td>80% of MHHI</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                
                <tr>
                    <td>Single-parent family</td>
                    <td>50% of MHHI</td>
                    <td>3</td>
                    <td>1</td>
                </tr>
                
                <tr>
                    <td>Moderate-income family</td>
                    <td>80% of MHHI</td>
                    <td>3</td>
                    <td>1</td>
                </tr>
                
                <tr>
                    <td>Dual-professional family</td>
                    <td>150% of MHHI</td>
                    <td>4</td>
                    <td>2</td>
                </tr>
                </table>      
        <p class="aboutsectionlong">MHHI = Median household income for a given CBSA</p>
        <p class="aboutsectionlong">Each CBSA and rural county has a unique set of household profiles.  We use these regional profiles in combination with the model’s block-group-level input variables to estimate household housing and transportation costs. Figures 3 and 4 illustrate how this is done for homeowners and renters, respectively, using the SEM, which estimates the number of autos per household, the percentage of commuters using transit, and housing costs for each Census block group and non-metropolitan county.  This results in 16 sets of estimates for these 3 variables: a set of homeowners and renters for each of the eight household profiles.</p>

        
        <p class="tabletitle">Figure 4: Estimating Autos per Household, the Percentage of Commuters Using Transit, and Housing Costs for Eight Different Homeowner Household Profiles</p>
        <img src="images/Figure4v2.jpg" alt="Estimating Autos per Household, the Percentage of Commuters Using Transit, and Housing Costs for Eight Different Homeowner Household Profiles"  width="900px"/>
        <p class="tabletitle">Figure 5: Estimating Autos per Household, the Percentage of Commuters Using Transit, and Housing Costs for Eight Different Renter Household Profiles</p>
        <img src="images/Figure5v2.jpg" alt="Estimating Autos per Household, the Percentage of Commuters Using Transit, and Housing Costs for Eight Different Renter Household Profiles"  width="900px"/>
        <p class="aboutsectionlong">Figure 5 illustrates how this works using the VMT Model, generating VMT estimates for the eight profiles.</p>
        <p class="tabletitle">Figure 6: Method for Estimating VMT for Eight Different Renter Household Profiles</p>
        <img src="images/Figure6v2.jpg" alt="Method for Estimating VMT for Eight Different Renter Household Profiles"  width="900px"/>
        


        <a id="CalculatingTrans"></a>
        
        <h3>Calculating Transportation Costs</h3>
        <p class="aboutsectionlong">Once the average transportation usage for each block group is estimated for each demographic profile, we can use those estimates to calculate total annual transportation costs.</p>
        
        <h4>Auto ownership and driving costs</h4>
        <p class="aboutsectionlong">The regression models we use estimate transportation usage, not total transportation costs. In order to calculate total automobile-related transportation costs, we multiply the estimated transportation usage (i.e. car ownership and vehicle miles traveled) by the cost per use (Figure 4).  Ownership costs include all expenses, from the time of purchase on, that are required to keep the car roadworthy:  purchase costs (spread over length of car ownership) or car payments, insurance, license and registration fees, taxes, and routine repairs and maintenance.  Driving costs include the cost of gas and maintenance due to wear-and-tear. </p>
        
        <p class="tabletitle">Figure 7: Calculating Auto Ownership and Driving Costs</p>
       <img src="images/figure4.jpg" alt="Calculating Auto Ownership and Driving Costs" />
        
        <p class="aboutsectionlong">The car ownership cost and car use cost components of the Index are generated using the <a href="http://www.bls.gov/cex/" target="_blank">Consumer Expenditure Survey</a> (CES), from US Bureau of Labor Statistics. New research undertaken for the development of this site represents a significant advance over previous measures that focused primarily on autos less than five years old and used a single cost multiplier for all vehicle owners, regardless of income (a summary of the <a href="downloads/AutoCostResearch.pdf" target="_blank">analysis can be found here</a>). </p>
        
        <h4>Transit costs</h4>
        <p class="aboutsectionlong">There is no existing data on the average number of transit trips or expenditures per commuter or per household at the block-group level. Using the SEM, we estimate the percentage of workers for each household profile in each block group commuting by transit.  We then use these estimates along with data from the ACS, the <a href="http://www.ntdprogram.gov/ntdprogram/" target="_blank">National Transit Database</a> (maintained by the <a href="http://www.fta.dot.gov/" target="_blank">Federal Transit Administration</a>), and our household profiles to calculate estimated annual transit trips and expenditures per household using the following steps:</p>
        <ol class="aboutcontent">
            <li>Total transit commuters (metropolitan area)
                <ol type="a">
                    <li>Commuters in each block group = [number of households] X [commuters per household]</li>
                    <li>Transit commuters in each block group = [number of commuters] X [estimated percentage of commuters using transit]</li>
                    <li>Transit commuters in each metropolitan area = sum of transit commuters in all block groups in the metropolitan area</li>
                </ol>
            </li>
            <li>Annual transit trips and transit fares paid (metropolitan area) – Transit trips and transit revenue are reported to the National Transit Database by transit agency, not CBSA. As a result, for larger transit systems that serve multiple CBSAs, we need to allocate transit agency trips and farebox revenue (which should be equal to the total fares paid by transit riders) to CBSAs according to the proportion of the transit agency’s coverage area and frequency of service in each one. For instance, the Massachusetts Bay Transportation Authority (MBTA) commuter rail serves stops in the Boston, Worcester, and Providence CBSAs, so the commuter rail’s reported farebox revenues and trips are allocated to those three regions according to the combination of proportion of total stops and service frequency in each.
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


        <a id="Bring"></a>
        <h3>Bringing It All Together: The Location Affordability Index</h3>
        <p class="aboutsectionlong">After going through the steps described above, we have all the elements necessary for the Location Affordability Index: housing costs for renters and owners, transportation costs, and income for eight different household profiles for each block group covered by the Index. Selecting from the Household Profile menu in the upper left allows the user to pull up the map for each profile.</p>
        <img src="images/atlanta2.png" alt="Atlanta in the LAI" />
    </div>
</div>
</asp:Content>



