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
    #shadedbox .framemiddleleft, #shadedbox .framemiddleright, #shadedbox .framemiddle, #shadedbox .framemiddlemiddle{height: 330px;}
    #shadedbox .framecontent{margin: 0; padding: 0; width: 320px; background-color:#E5E8ED; font-size: 0.8em; }    
       
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <h1>About the Portal</h1>
    <div id="left">
        <h2>Background</h2>
        <p class="aboutsection">
        The Location Affordability Portal is an initiative of the federal <a href="http://www.sustainablecommunities.gov/" target="_blank">Partnership for Sustainable Communities</a>. The Partnership, which includes the Department of Housing and Urban Development, the Department of Transportation, and the Environmental Protection Agency, works to coordinate federal housing, transportation, water, and other infrastructure investments to make neighborhoods more prosperous, allow people to live closer to jobs, save households time and money, and reduce pollution. One objective of this collaboration is to <a href="http://www.sustainablecommunities.gov/toolsKeyResources.html" target="_blank">increase public access to data on housing, transportation, and land use</a>. EPA's new <a href="http://www.epa.gov/smartgrowth/smartlocationdatabase.htm" target="_blank">Smart Location Database</a> is another resource developed for this purpose. 
        <br /><br />
        The prevailing standard of housing affordability in the United States is for a family to spend no more than 30 percent of their income on housing, but there is no similar standard for transportation costs. One reason is that transportation costs are a much bigger factor now than in the past. According to the Bureau of Labor Statistics, in the 1930's American households spent just 8 percent of their income on transportation. Since then, as people have moved away from job centers to the suburbs and relied more heavily on cars, that percentage has steadily increased, peaking at 19.1 percent in 2003. Today, households spend on average about 17 percent of their annual income on transportation, second only to housing costs in terms of budget impact (and transportation costs actually exceed housing costs for many rural and working-class households).
        <br /><br />
        Despite the fact that housing and transportation costs consume about half of the average household budget, before this Portal there was no accurate, standardized data source on household transportation expenses, which prevented homebuyers and renters from fully accounting for the cost of living in a particular city or neighborhood. This site seeks to fill that gap.
        <br /><br />
        Planners, policymakers, and developers also stand to benefit from access to this data when making decisions about land use, housing, transportation, and economic development. With support from Manhattan Strategy Group and the Center for Neighborhood Technology, the project has <a href="about_Development.aspx#Process">engaged experts and key stakeholders</a> from the fields of urban and transportation planning, affordable housing, and economic development and has produced <a href="about_techdoc.aspx">extensive reviews of the data and modeling techniques</a> used in the tools that have been made available on this site for the first time.
        </p>
    </div>

    <div id="right" style="margin-left: 40px;">
        <div id="imageblock_Background">
                <img src="images/About_Background.jpg" alt="Fountain as Silver Spring, MD"/>
        </div>
        <!--<br />
        <div id="shadedbox">
            <div class="frametop"><div class="frametopleft"></div><div class="frametopmiddle"></div><div class="frametopright"></div></div>
            <div class="framemiddle">
                <div class="framemiddleleft"></div>
                <div class="framemiddlemiddle">
                    <div class="framecontent">
                            
                        <p style="font-size: 1.1em; font-weight: bolder; color: #183956; margin:0; padding: 0 0 10px 0; ">Transportation Costs and Location Efficiency</p>
                        <p>Beyond the fact that housing and transportation costs combine to account for almost half of the typical household budget, it is important to look at them together (rather than in isolation) because they have a specific relationship with each other, one that is mediated by housing location. In general, areas that are <a href="help_faq.aspx" />location efficient</a> —i.e. easily accessible to everyday destinations like jobs, shopping, restaurants, parks and other amenities—have higher housing prices at least partly because they are appealing places to live. At the same time, this accessibility makes transportation costs lower because people can more easily get to places they want to go. By contrast, land prices are comparatively low in areas that lack easy access to amenities, but since it is farther and more time-consuming for residents to get other places, transportation costs are higher.</p>
                    </div>
                </div>
                <div class="framemiddleright"></div>
            </div>
            <div class="framebottom"><div class="framebottomleft"></div><div class="framebottommiddle"></div><div class="framebottomright"></div></div>
            </div>    -->   
    </div>
</div>
</asp:Content>



