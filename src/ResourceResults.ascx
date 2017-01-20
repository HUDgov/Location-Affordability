<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ResourceResults.ascx.vb" Inherits="ResourceResults" ViewStateMode="Disabled" %>
       <div id="left_resources">
        <asp:DataList runat="server" ID="dlResults" RepeatLayout="Flow"  >
            <ItemTemplate>
               <div class="item">
                    <asp:HiddenField runat="server" ID="hfCategory" Value='<%# Eval("CategoryID") %>' />
                   <p class="title"><asp:Hyperlink Target="_blank" runat="server" ID="hlLink" CssClass="" NavigateUrl='<%# Iif(IsDBNull(Eval("url")),"&nbsp;",Eval("url"))%>' text='<%# Server.HtmlEncode(Eval("Title"))%>'><%# Server.HtmlEncode(Eval("Title"))%></asp:Hyperlink><br /><asp:Literal runat="server" ID="litMore"></asp:Literal></p>
                    <!--Document Panel-->
                    <asp:Literal runat="server" ID="divMore"></asp:Literal>
                        <p class="description"><%# Iif(IsDBNull(Eval("Description")),"&nbsp;",Eval("Description")) %></p>
                        <asp:Panel ID="panelCredit" runat="server">
                            <p class="credit"><span>Source:</span> <%# Server.HtmlEncode(IIf(IsDBNull(Eval("Author")), "", Eval("Author")))%><%# Server.HtmlEncode(IIf(IsDBNull(Eval("Source")), "", Eval("Source")))%>, <%# Eval("DateWritten")%></p>
                        </asp:Panel>
                        <asp:Panel ID="panelDate" runat="server"><p class="date"><span>Date:</span> <%# Server.HtmlEncode(IIf(IsDBNull(Eval("DateWritten")), "", Eval("DateWritten")))%></p></asp:Panel>
                        <p class="date"><span>Resource type: </span><%# Server.HtmlEncode(IIf(IsDBNull(Eval("Category")), "", Eval("Category")))%></p>
                        <!--Link Panel-->

                        <asp:Panel ID="panelDoc" runat="server">
                            <div class="download">
                                <asp:Hyperlink  NavigateUrl='<%# Server.HtmlEncode(Iif(IsDBNull(Eval("physicalfilename")),"&nbsp;",Eval("physicalfilename"))) %>' id="hlDownload" runat="server" ToolTip="View Resource" Target="_blank" ><asp:Image runat="server" ID="icon" style="width: 30px;"/></asp:Hyperlink>
                                <p class="size"><asp:Literal runat="server" ID="size" Text='<%# Eval("size")%>'></asp:Literal></p>
                                <asp:HiddenField runat="server" ID="mime" Value='<%# Eval("mime")%>' />
                            </div>
                        </asp:Panel>
                        
                    </div>
            </div>
            </ItemTemplate>
        </asp:DataList>
        </div>
