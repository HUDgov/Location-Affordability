
Partial Class ResourceResults
    Inherits System.Web.UI.UserControl
    Private sSearchString As String
    Private sCategories As String
    Private sCSSClass As String
    Private sOrderBy As String
    Dim OST As String = ""

    Dim SectionCount As Double = 0
    Dim LiveSectionCount As Double = 0
    Dim Flipped As Boolean = False

    Dim DAL As New DAL
    Dim DocManager As New DocManager
    Public Count As Integer

    Public WriteOnly Property SearchString As String
        Set(value As String)
            sSearchString = value
        End Set
    End Property
    Public WriteOnly Property Categories As String
        Set(value As String)
            sCategories = value
        End Set
    End Property
    Public WriteOnly Property CssClass As String
        Set(value As String)
            sCSSClass = value
        End Set
    End Property
    Public WriteOnly Property OrderBy As String
        Set(value As String)
            sOrderBy = value
        End Set
    End Property




    Public Sub ShowResults()
        Dim Where As String = ""
        Dim OrderBy As String = ""
        OrderBy = "c.category, r.title"
        Try

            If sCategories = "9999" Then
                Where = "where 1=1 "
            Else
                If sCategories.Length > 0 Or sSearchString.Length > 0 Then Where = "where "

                If sCategories.Length > 0 Then Where = Where & "RC.CategoryID in (" & sCategories & ")"

                If sSearchString.Length > 0 Then
                    If sCategories.Length > 0 Then
                        Where = Where & " and "
                    End If
                    Where = Where & "("
                    Where = Where & "(" & DocManager.Tools.GetKeywordSQL(sSearchString) & ")"
                    Where = Where & " or " & Replace("(" & DocManager.Tools.GetKeywordSQL(sSearchString) & ")", "RK.keyword", "R.description")
                    Where = Where & " or " & Replace("(" & DocManager.Tools.GetKeywordSQL(sSearchString) & ")", "RK.keyword", "R.title")
                    Where = Where & ")"
                End If

            End If
        Catch ex As Exception

        End Try
        Try
            Dim oCommand As New SqlCommand
            oCommand.CommandType = CommandType.StoredProcedure
            oCommand.CommandText = "GetResourceResults"
            oCommand.Parameters.Add("@Where", SqlDbType.VarChar)
            oCommand.Parameters("@Where").Value = Where
            oCommand.Parameters.Add("@OrderBy", SqlDbType.VarChar)
            oCommand.Parameters("@OrderBy").Value = OrderBy

            Dim dtResults As DataTable = DAL.GetDataset(oCommand).Tables(0)

            Dim oSections As New List(Of String)
            For Each row As DataRow In dtResults.Rows
                If Not oSections.Contains(row(0)) Then oSections.Add(row(0))
            Next
            SectionCount = oSections.Count

            dlResults.DataSource = dtResults
            Count = dtResults.Rows.Count
            dlResults.DataBind()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try

    End Sub
    Protected Sub dlResults_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.DataListItemEventArgs) Handles dlResults.ItemDataBound
        Dim image As New Image
        Dim size As String = ""
        Dim mime As String = ""
        Dim ST As String = ""
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then

            OST = ST
            If IsDBNull(e.Item.DataItem("author")) Then e.Item.DataItem("author") = ""
            If IsDBNull(e.Item.DataItem("source")) Then e.Item.DataItem("source") = ""
            Select Case (CType(e.Item.FindControl("hfCategory"), HiddenField).Value)
                Case 1 'Webinar
                    e.Item.FindControl("panelCredit").Visible = False

                    'Check to see if a physical filename exists
                    If IsDBNull(e.Item.DataItem("physicalfilename")) Then
                        CType(e.Item.FindControl("hlLink"), HyperLink).Enabled = False 'If filename is null then disable the link
                        e.Item.FindControl("paneldoc").Visible = False
                    Else
                        CType(e.Item.FindControl("hlLink"), HyperLink).NavigateUrl = e.Item.DataItem("physicalfilename") 'Enable the link
                        e.Item.FindControl("panelDoc").Visible = True

                    End If


                    size = DocManager.Tools.FormatSize((CType(e.Item.FindControl("size"), Literal).Text))
                    Dim litSize = CType(e.Item.FindControl("size"), Literal)
                    litSize.Text = size.ToString
                    mime = CType(e.Item.FindControl("mime"), HiddenField).Value

                    image = CType(e.Item.FindControl("icon"), Image)
                    DocManager.Tools.FormatIcon(image, mime)



                    'Case 3, 9
                    '    e.Item.FindControl("panelDoc").Visible = True
                    '    e.Item.FindControl("panelCredit").Visible = False
                    '    size = DocManager.Tools.FormatSize(CType(e.Item.FindControl("size"), Literal).Text)
                    '    Dim litSize = CType(e.Item.FindControl("size"), Literal)
                    '    litSize.Text = size.ToString
                    '    mime = CType(e.Item.FindControl("mime"), HiddenField).Value

                    '    image = CType(e.Item.FindControl("icon"), Image)
                    '    DocManager.Tools.FormatIcon(image, mime)

                Case Else
                    If Not IsDBNull(e.Item.DataItem("physicalfilename")) Then
                        CType(e.Item.FindControl("hlLink"), HyperLink).NavigateUrl = e.Item.DataItem("physicalfilename") 'Enable the link
                        e.Item.FindControl("panelDoc").Visible = True
                        size = DocManager.Tools.FormatSize((CType(e.Item.FindControl("size"), Literal).Text))
                        Dim litSize = CType(e.Item.FindControl("size"), Literal)
                        litSize.Text = size.ToString
                        mime = CType(e.Item.FindControl("mime"), HiddenField).Value

                        image = CType(e.Item.FindControl("icon"), Image)
                        DocManager.Tools.FormatIcon(image, mime)
                    Else
                        e.Item.FindControl("panelDoc").Visible = False

                    End If
                    If e.Item.DataItem("author").ToString.Length <= 6 And e.Item.DataItem("source").ToString.Length <= 6 Then
                        e.Item.FindControl("panelCredit").Visible = False
                    Else
                        e.Item.FindControl("panelCredit").Visible = True

                    End If

            End Select

            CType(e.Item.FindControl("divMore"), Literal).Text = "<div id=""more" & e.Item.DataItem("resourceid") & """ class=""none"" >"
            CType(e.Item.FindControl("litMore"), Literal).Text = "<span onclick=""More(" & e.Item.DataItem("resourceID") & ");"" id=""more" & e.Item.DataItem("resourceid") & "a"" class=""more"">more</span>"


        End If

    End Sub
    Protected Sub dlResults_ItemCommand(source As Object, e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles dlResults.ItemCommand
        ShowDocument(CInt(e.CommandName))
    End Sub

    Public Sub ShowDocument(ByVal DocID As Integer)
        Dim File As DocManager.Document = DocManager.Retrieve(DocID)
        Response.AddHeader("Content-type", File.MIME)
        Response.AddHeader("Content-Disposition", "attachment; filename=" + File.Filename)
        Response.AppendHeader("Content-Length", File.Size)
        Response.ContentType = "application/download"
        Response.BinaryWrite(File.Bytes)
        Response.Flush()
        Response.End()
    End Sub

End Class
