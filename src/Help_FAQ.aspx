<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="Help_FAQ.aspx.vb" Inherits="Help_FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <div id="faqleft">
    <h1>FAQs</h1>
    
    <p class="answer">The following is a list of the most commonly asked questions from the community, and will be updated as communities express their questions and concerns.</p>
    
        <h2>General</h2>
    <div id="faqlist">
        <h3><a href="#A1">Why have HUD and DOT developed the Location Affordability Index (LAI)?</a></h3>
        <h3><a href="#A3">How does the LAI predict housing and transportation costs? How precise are the estimates?</a></h3>
        <h3><a href="#A4">What neighborhood and regional characteristics are used to model transportation costs?</a></h3>
        <h3><a href="#A5">What are the Location Affordability Index (LAI) “household types” and how were they chosen?</a></h3>
        <h3><a href="#A10">How can I use Location Affordability Index (LAI) data?</a></h3>
        <h3><a href="#A12">Manhattan, San Francisco, and downtown Boston are some of the most expensive places to live in the country, yet the LAI shows them as affordable for the typical regional household. Why?</a></h3>
        <h3><a href="#A15">How do you define the regions used to calculate regional households, regional housing and transportation costs?</a></h3>
        <h3><a href="#A17">Why are housing costs in the LAI different from expected housing costs in my neighborhood?</a></h3>
        <h3><a href="#A20">Why is the Location Affordability Index (LAI) value for my neighborhood/city so different than what I expected?</a></h3>
        <h3><a href="#A21">Can the Location Affordability Index (LAI) tell me the location affordability for my specific address?</a></h3>
        <!--Phase 1 New Questions-->
        <h3><a href="#A24">How much of the US does the Location Affordability Index (LAI) cover?</a></h3>
        <!-- End Phase 1 New Questions -->
    </div>
        <h2>Technical</h2>
    <div id="faqlist2">
        <h3><a href="#B1">How was the geographic scale for the Location Affordability Index (LAI) chosen?</a></h3>
        <h3><a href="#B3">Does the Location Affordability Index (LAI) reflect the cost of living for actual residents of a given block group?</a></h3>
        <h3><a href="#B4">What is the proper methodology for aggregating the Location Affordability Index (LAI) data to other geographies?</a></h3>
        <h3><a href="#B5">How frequently will the Location Affordability Portal be updated?</a></h3>
    </div>
   <br /><hr /><br />

    
    <h2>General</h2>

    <a name="A1"></a><p class="faq_question">Why have HUD and DOT developed the Location Affordability Index (LAI)?</p>
    <p class="answer">
    In 2009, the Department of Housing and Urban Development (HUD), the Department of Transportation (DOT), and the Environmental Protection Agency (EPA) formed the Partnership for Sustainable Communities. The Partnership established six livability principles to serve as a foundation for coordinating their efforts to promote more sustainable, livable, inclusive communities. Two of these principles are "Provide more transportation choices" and "Promote equitable, affordable housing."
    <br /><br />
    HUD and DOT created the LAI as one step toward a more complete understanding of the costs associated with location—which include housing and transportation—so that consumers and policymakers can make informed decisions about where to live, work, and invest.
    </p>

    <a name="A3"></a><p class="faq_question">How does the LAI predict housing and transportation costs? How precise are the estimates?</p>
    <p class="answer">
    The LAI uses household and neighborhood characteristics to model housing and transportation costs for eight representative households. Some variation in housing and transportation costs is unexplained because the LAI model cannot capture every possible variable that may impact average costs in a particular neighborhood. Several metrics were used to assess the precision of the LAI model and found that it has a good fit; the SEM Memo explains the model’s precision in more detail.
    </p>

    <a name="A4"></a><p class="faq_question">What neighborhood and regional characteristics are used to model transportation costs?</p>
    <p class="answer">
    Built environment and housing variables used to model transportation costs include:
    </p>
    
    <ul>
        <li>Gross Household Density: calculated as total households divided by total land acres.</li>
        <li>Walkability and Street Connectivity: block density is used as a proxy measure for walkability. Greater connectivity, as a result of more streets and intersections, creates smaller blocks and tends to lead to more frequent walking trips.</li>
        <li>Employment Access and Job Density:
            <ul>
                <li>Employment access: the quantity of and distance to all employment destinations relative to the given Census block</li>
                <li>Retail employment access: the quantity of and distance to all retail employment destinations relative to the given Census block</li>
                <li>Job density: total number of jobs divided by the total land area</li>
                <li>Retail density: total number of retail jobs divided by the total land area</li>

            </ul>
        </li>
        <li>Median Commute Distance: calculated from data on spatial distributions of workers' employment and residential locations, and the relation between the two at the Census block level</li>
        <li>Fraction of Rental Units: the number of rental units as a percentage of total housing units</li>
        <li>Fraction of Single Family Detached Housing Units: the number of single family detached housing units as a percentage of total housing units</li>
    </ul>
    
    <p class="answer">See the <a href="lapmethodsv2.pdf" target="_blank">LAI Methods</a> document for a more detailed description of these measures and of the transportation cost model as a whole. 
    </p>
    
    <a name="A5"></a><p class="faq_question">What are the Location Affordability Index (LAI) “household types” and how were they chosen?</p>
    <p class="answer">
        The <a href="lai.aspx">LAI</a> shows how transportation costs vary depending on neighborhood characteristics and the built environment. However, household characteristics also impact average spending on transportation. The LAI estimates costs in each region separately for each of eight household types. This accomplishes two things: it accounts for the variation in costs due to demographics and allows users to learn more about costs for specific segments of the population. Given these approaches, users can see how costs vary by place as well as between different populations. 
         <br /><br />
        The <a href="lai.aspx?url=user_guide.php">LAI User Guide</a> (page 3) provides a table outlining the characteristics of the household types included in the LAI.
    </p>
    
  
    <a name="A10"></a><p class="faq_question">How can I use Location Affordability Index (LAI) data?</p>
    <p class="answer">
        Examples of how the LAI can be been used for consumer decision making, planning, policymaking, and performance measurement are illustrated in the <a href="vignettes.aspx">Vignettes</a> tab. For instructions on how to download and use LAI data, please refer to the <a href="lai.aspx?url=user_guide.php">User Guide</a>.
    </p>

   <a name="A12"></a><p class="faq_question">Manhattan, San Francisco, and downtown Boston are some of the most expensive places to live in the country, yet the LAI shows them as affordable for the typical regional household. Why?</p>
    <p class="answer">
    These areas have some of the lowest transportation costs in the country, which helps offset the high cost of housing. The area median income (AMI) in these regions is also high, so when costs are shown as a percent of income for the typical regional household these neighborhoods appear affordable; however, they are generally unaffordable to households earning less than the AMI.  
    </p>

    <a name="A15"></a><p class="faq_question">How do you define the regions used to calculate regional households, regional housing and transportation costs?</p>
    <p class="answer">
    Regions used in the LAI correspond to metropolitan and micropolitan statistical areas defined by the Office of Management and Budget (OMB) for use by federal statistical agencies in collecting, tabulating, and publishing national statistics. The term Core Based Statistical Area (CBSA) is a collective term for both metropolitan and micropolitan areas. Because 2012 American Community Survey (ACS) 5-year estimates serve as the primary dataset for the LAI, this dictates using the 917 CBSAs defined by the ACS (which excludes 12 regions in Puerto Rico due to data limitations). LAI Version 2 expanded its coverage to the full borders of the fifty states. Outside of CBSAs, the regional typical household is calculated using county level data.  
    </p>
    
        <a name="A17"></a><p class="faq_question">Why are housing costs in the LAI different from expected housing costs in my neighborhood?</p>
    <p class="answer">
    Housing costs in the LAI are modeled to estimate average costs for a specific household type, including income, size, and number of commuters. Actual residents of a given neighborhood will not have the exact same household income and makeup as the household type for which LAI data is modeled, and costs for individual households will not necessarily match the average. Market rate housing prices also reflect what it costs to enter a neighborhood, not necessarily what people already residing in that neighborhood spend.  
    </p>
    
    <a name="A20"></a><p class="faq_question">Why is the Location Affordability Index (LAI) value for my neighborhood/city so different than what I expected?</p>
    <p class="answer">
    Data in the LAI is modeled, meaning that it does not measure actual housing and transportation costs; it estimates what average costs will be for a specific household type. Actual residents of a given neighborhood will not have the exact same household makeup and income as the household type for which LAI data is modeled, and costs for individual households will not necessarily match the average.  
    </p>
    
    <a name="A21"></a><p class="faq_question">Can the Location Affordability Index (LAI) tell me the location affordability for my specific address?</p>
    <p class="answer">
        The LAI models data at the Census block group level and reports on average housing and transportation costs at this geography. Address level data on housing and transportation costs is not available in the LAI. However, the <a href="tcc.aspx">My Transportation Cost Calculator</a> (MTCC) allows you to enter an address and customize data from the LAI by entering basic information about your household's income, housing, cars, and travel patterns.
    </p>

    <a name="A24"></a><p class="faq_question">How much of the US does the Location Affordability Index (LAI) cover?</p>
    <p class="answer">
    The LAI covers the entire fifty states.
    </p>

    <h2>Technical</h2>
    
    <a name="B1"></a><p class="faq_question">How was the geographic scale for the Location Affordability Index (LAI) chosen?</p>
    <p class="answer">The LAI’s geographic scale was determined to reflect neighborhood conditions. The Census block group is the smallest geography for which there is ubiquitous, reliable data. One drawback of using American Community Survey (ACS) block group data is the high margins of error for some variables; however, this is considered an acceptable trade-off to provide the public this information resource.</p>
    
    <a name="B3"></a><p class="faq_question">Does the Location Affordability Index (LAI) reflect the cost of living for actual residents of a given block group?</p>
    <p class="answer">The LAI reports modeled housing and transportation costs for eight household profiles. However, this does not imply that households matching any particular profile actually live in a given location. Instead, this is a prediction of what households with certain characteristics would have paid for housing and transportation costs during 2008 through 2012, the time period covered by the most recent American Community Survey (ACS) data release. See Note on interpreting housing costs estimates in <a href="About_lai.aspx"></a> the Index.</p>

    <a name="B4"></a><p class="faq_question">What is the proper methodology for aggregating the Location Affordability Index (LAI) data to other geographies?</p>
    <p class="answer">
    To aggregate data to larger geographies, use a proportional weighted average, weighted by household.</p>

     <a name="B5"></a><p class="faq_question">How frequently will the Location Affordability Portal be updated?</p>
    <p class="answer">
    HUD plans to update the data and tools hosted on the Location Affordability Portal with every Census 5-year American Community Survey release.</p>
   



</div>
<div id="faqright">
    <div style="margin-top: 55px;">
        <div class="applications">
            <div class="blankframetop"><h2 style="color: #609336">See also</h2></div>
            <div class="blankframemiddle">
                <p style="font-size: 10pt;"><a style="font-size: 10pt;" href="help.aspx">User Guides</a> - Links to the User Guides</p>
                <p style="font-size: 10pt;"><a style="font-size: 10pt;" href="help_contact.aspx">Contact Us</a> - Contact information</p>
            </div>
            <div class="blankframebottom"></div>
        </div>
    </div>

    <div class="applications">
        <div class="blankframetop"><h2 style="color: #609336">Glossary of Terms</h2></div>
        <div class="blankframemiddle">
            <p><span class="term">Built Environment</span> - The built environment refers to man-made (versus natural) resources and infrastructure designed to support human activity, such as buildings, roads, transit, parks, stores and other amenities.</p>
            <br />
            <p><span class="term">Core-Based Statistical Areas</span> - The Office of Management and Budget (OMB) defines metropolitan and micropolitan statistical areas for use by federal statistical agencies in collecting, tabulating, and publishing national statistics. A Core-Based Statistical Area (CBSA) is a collective term for both metro and micro areas.</p>
            <br />
            <p><span class="term">Location Affordability</span> - Typically, a family's housing is considered affordable if it accounts for no more than 30 percent of pre-tax income. The cost of transportation is not considered in this metric. Location Affordability recognizes that a home’s location impacts not only housing costs (such as rent or mortgage), but transportation expenses as well. While every household has its own unique transportation needs, their level of access to a range of transportation options, employment and educational opportunities, and retail and recreational outlets plays a much bigger role in their transportation costs. Location Affordability provides a fuller picture of the two largest expenses in the average household’s budget: housing and transportation.</p>
            <br />
            <p><span class="term">Location Efficiency</span> - Location efficiency describes how accessible everyday destinations&mdash;like jobs, shopping, entertainment, parks and other amenities&mdash;are to a neighborhood or community. Location-efficient neighborhoods are often characterized by compact, mixed-use development, easy access to public transit, good walking and biking conditions, and nearby commercial and retail hubs. Location affordability takes the concept of location efficiency one step further by looking at whether a location is not only efficient but is also affordable based on the combined costs of housing and transportation both for current and prospective residents.</p>
            <br />
            <p><span class="term">Transit</span> - Transit in the LAI  refers to fixed-route public transportation provided on a repetitive, set schedule along a specific route. Each fixed-route trip serves the same origins and destinations, such as rail and bus; unlike demand responsive and vanpool services.</p>
            <br />
            <p><span class="term">Walkability</span> - Walkability describes how welcoming an area is for walking. The presence or absence of quality sidewalks, traffic and road conditions, land use patterns, building accessibility, and safety are some of the factors that affect walkability. Measures of street connectivity have been found to be good proxies for pedestrian friendliness and walkability. Greater connectivity, from more streets and intersections, creates smaller blocks, and tends to lead to more frequent walking trips.</p>
        </div>
        <div class="blankframebottom"></div>
    </div>

</div>
    </div>
</asp:Content>