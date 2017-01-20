<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="tcc.aspx.vb" Inherits="tcc" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="toolpage">
    <h1 class="sectionA" style="margin-left: 28px; color: #fff !important; width: 520px; margin-top:20px; ">My Transportation Cost Calculator</h1>
    <img style="position: absolute; top: -15px; left: 415px; width:60px;" src="images/logo-tcc-trans.png" alt="My Transportation Cost Calculator"/>

<iframe id="iframe" runat="server" title="My Transportation Cost Calculator" src="http://lai.locationaffordability.info/mtcc/" frameborder="0" style="width: 100%; border:none !important; min-height: 100px; margin: 0px 0 0 0; padding:0;"/>
</div>
</asp:Content>


