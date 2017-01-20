Imports System.IO
Imports System.Diagnostics



Partial Class ResourceLibrary
    Inherits Base

    Dim DocManager As New DocManager

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        UpdateDateLastUpdated("07/26/12")
        SetPageTitle("Location Affordability Portal - Resource Library")

        If Not Page.IsPostBack Then
            Me.ResourceResults.Categories = "9999"
            Me.ResourceResults.SearchString = ""
            Me.ResourceResults.ShowResults()
            Me.litCount.Text = Me.ResourceResults.Count.ToString

            Dim ds As DataTable = DAL.GetDataset("select distinct c.CategoryID, replace(Category, '&', '&amp;') as Category, c.category from Category c inner join resourcecategory rc on c.categoryid=rc.categoryid order by c.Category").Tables(0)
            Me.cblCategories.DataValueField = "CategoryID"
            Me.cblCategories.DataTextField = "Category"
            Me.cblCategories.DataSource = ds
            Me.cblCategories.DataBind()
        End If
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles btnSubmit.Click
        ReloadResults()

    End Sub

    Public Sub ReloadResults()
        Dim CategoryList As New Generic.List(Of Integer)
        Dim Cats As String = ""

        For x As Integer = 0 To cblCategories.Items.Count - 1
            If cblCategories.Items(x).Selected Then
                CategoryList.Add(cblCategories.Items(x).Value)
            End If
        Next

        If CategoryList.Count > 0 Then
            For Each item As Integer In CategoryList
                Cats = Cats & item & ","
            Next
            Cats = Left(Cats, Cats.Length - 1)
        End If
        If CategoryList.Count > 0 Or Me.tbKeyword.Text.Length > 2 Then
            Me.ResourceResults.Categories = Cats
            Me.ResourceResults.SearchString = Me.tbKeyword.Text
            Me.ResourceResults.OrderBy = "sTitle asc"

            Me.ResourceResults.ShowResults()
            Me.litCount.Text = Me.ResourceResults.Count.ToString
            Me.panelCount.Visible = True
            ' ShowResults(Cats, Me.tbKeyword.Text)
            'Me.dlResults.Visible = True

        ElseIf CategoryList.Count <= 0 And Me.tbKeyword.Text.Length <= 0 Then
            Me.ResourceResults.Categories = "9999"
            Me.ResourceResults.SearchString = ""
            Me.ResourceResults.OrderBy = "sTitle asc"

            Me.ResourceResults.ShowResults()
            Me.litCount.Text = Me.ResourceResults.Count.ToString
            Me.panelCount.Visible = True

        Else
            Me.litCount.Text = 0
            Me.panelCount.Visible = True

        End If
    End Sub


    ' Protected Sub ddlOrderBy_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ddlOrderBy.SelectedIndexChanged
    'ReloadResults()
    'End Sub
End Class
