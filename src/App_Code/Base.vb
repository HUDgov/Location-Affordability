Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class Base
    Inherits System.Web.UI.Page
    Public DAL As New DAL

    Public Sub UpdateDateLastUpdated(ByVal sDate As String)
        CType(Master.FindControl("litDateLastUpdated"), Literal).Text = sDate.ToString
    End Sub
    Public Sub SetPageTitle(ByVal sTitle As String)
        Master.Page.Title = sTitle.ToString
    End Sub

End Class
