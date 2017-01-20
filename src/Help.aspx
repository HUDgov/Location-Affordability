<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="Help.aspx.vb" Inherits="Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page">
    <h1>Help</h1>
    <div id="faqleft">
        <p class="aboutsection"></p>

        <table id="help">
            <tr style="height: 75px;">
                <td><a href="lai.aspx?url=user_guide.php " target="blank"><img src="images/UserGuideLAI2.jpg" alt="Location Affordability Index - User Guide" /></a></td>
                <td>Location Affordability Index<br /><span>User Guide</span></td>
            </tr>
            <tr style="height: 75px;">
                <td><a href="tcc.aspx?url=/user_guide.php" target="blank"><img src="images/UserGuideTCC2.jpg" alt="My Transportation Cost Calculator - User Guide" /></a></td>
                <td>My Transportation Cost Calculator<br /><span>User Guide</span></td>
            </tr>
            <tr style="height: 75px;">
                <td><a href="http://youtu.be/7chvorxoC3w" target="_blank"><img src="images/tutorial.png" alt="LAP Tutorial" /></a></td>
                <td>Location Affordability Portal (Last Updated: December 2013)<br /><span>Video Tutorial</span></td>
            </tr>        
            <tr style="height: 75px;">
                <td><a href="mailto:locationaffordability@hud.gov"><img src="images/helpemail2.jpg" alt="Send help requests to locationaffordability@hud.gov" /></a></td>
                <td>Send Help Requests to<br /><span>locationaffordability@hud.gov</span></td>
            </tr>
            <tr style="height: 75px;">
                <td><a href="http://get.adobe.com/reader/" target="_blank"><img src="images/HelpPDF2.jpg" alt="Get the latest version of Adobe Reader" /></a></td>
                <td>Get the Latest Version of<br /><span>Adobe Reader</span></td>
            </tr>        
        </table>
    </div>
    <div id="faqright">
        <div class="applications">
            <div class="blankframetop"><h2 style="color: #609336">See also</h2></div>
            <div class="blankframemiddle">
                <p style="font-size: 10pt;"><a style="font-size: 10pt;" href="help_faq.aspx">FAQs</a> - A list of the most frequently asked questions</p>
                <p style="font-size: 10pt;"><a style="font-size: 10pt;" href="help_contact.aspx">Contact Us</a> - Contact information</p>
            </div>
            <div class="blankframebottom"></div>
        </div>
    </div>
</div>

</asp:Content>