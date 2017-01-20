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
    <p class="intro">Housing and transportation costs consume about half of the average household budget, but transportation costs are difficult to track and account for. The Location Affordability Portal provides estimates of household housing and transportation costs at the neighborhood level to help consumers, policymakers, and developers make more informed decisions about where to live, work, and invest.</p>

<div id="left">
    <div class="homesection">
        <a href="tcc.aspx" class="cleanlink"><h2 class="sectionA">My Transportation Cost Calculator</h2></a>
        <div class="homeleft"><img src="images/logo-tcc-trans.png" alt="My Transportation Cost Calculator" /></div>
        <div class="homeright">
            <p>My Transportation Cost Calculator generates transportation cost estimates based on user-entered information, providing  households, real estate professionals, and housing counselors customized, apples-to-apples comparisons of housing and transportation costs in different communities..</p>
            <p><a href="tcc.aspx" style="color:#1b3a57; font-weight: bolder;" >Go to My Transportation Cost Calculator</a></p>
        </div>
    </div>

    <div class="homesection">
        <a href="lai.aspx" class="cleanlink"><h2 class="sectionB">Location Affordability Index</h2></a>
         <div class="homeleft"><img src="images/logo-lai-trans.png" alt="Location Affordability Index" /></div>
        <div class="homeright">
            <p>Developers, planners and policymakers can use the Location Affordability Index to make data-driven decisions about local and regional planning and investment. They can also use maps and data tools to help communicate with the public about different development scenarios.</p>
            <p><a href="lai.aspx" style="color:#1b3a57; font-weight: bolder;" >Go to the Location Affordability Index</a></p>
        </div>
   </div>
    
     <div class="homesection">
        <a href="lai.aspx?url=download.php" class="cleanlink"><h2 class="sectionC">Data Users</h2></a>
        <div class="homefull">
            <p>All of the Index data is <b><a href="lai.aspx?url=download.php">available for download</a></b> by researchers, planners, and other users.  <!--In addition, the data has now been published as a <b><a href="http://services.arcgis.com/VTyQ9soqVukalItT/arcgis/rest/services/LocationAffordabilityIndexData/FeatureServer" target="_blank">web service</a></b> for use by other web sites and app developers.--></p>
            <p><a href="lai.aspx?url=download.php" style="color:#1b3a57; font-weight: bolder;" >Go to Data Download page</a> | <a href="http://services.arcgis.com/VTyQ9soqVukalItT/arcgis/rest/services/LocationAffordabilityIndexData/FeatureServer" style="color:#1b3a57; font-weight: bolder;" target="_blank">Go to web service (Version 2 data)</a></p>
        </div>
    </div>       
    </div>
<div id="right">
    <p class="bigjob">How much does housing and transportation cost your family?</p>
    <img src="images/homepage_main2.jpg" alt="Calculator and paper on desk" />
</div>

</div>
</asp:Content>

