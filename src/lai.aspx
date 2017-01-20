<%@ Page Title="" Language="VB" MasterPageFile="~/LAP.master" AutoEventWireup="false" CodeFile="lai.aspx.vb" Inherits="lai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="toolpage">
    
    <h1 class="sectionB" style="margin-left: 28px; color: #fff !important; width: 520px; margin-top:20px; ">Location Affordability Index</h1>
    <img style="position: absolute; top: -15px; left: 330px; width: 60px;" src="images/logo-lai-trans.png" alt="Location Affordability Index"/>


<iframe runat="server" id="iframe" src="http://lai.locationaffordability.info" title="Location Affordability Index" frameborder="0" scrolling="no" style="width: 100%; border: none !important; margin: 0px 0 0 0; padding:0; " />
</div>
</asp:Content>

