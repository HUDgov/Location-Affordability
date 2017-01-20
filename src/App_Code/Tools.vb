Imports Microsoft.VisualBasic

Public Class Tools
    Public Function FormatSize(ByVal size As Integer) As String
        Try
            If size > 50000 Then
                Return Math.Round(size / 1024 / 1024, 2) & "Mb"
            Else
                Return Math.Round(size / 1024, 2) & "Kb"
                'Else
                'Return size & "Kb"
            End If

        Catch ex As Exception
            Return "Kb"
        End Try
    End Function
    Public Sub FormatIcon(ByRef image As Image, ByVal mime As String)
        Dim src As String = ""
        Dim alt As String = ""
        Select Case mime
            Case "image/gif", "image/jpeg", "image/png"
                src = "images/icon-image.png"
                alt = "Image"
            Case "application/pdf"
                src = "images/icon-pdf.png"
                alt = "PDF"
            Case "application/vnd.openxmlformats-officedocument.wordprocessingml.document", "application/msword"
                src = "images/icon-word.png"
                alt = "Microsoft Word Document"
            Case "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
                src = "images/icon-excel.png"
                alt = "Microsoft Excel Spreadsheet"
            Case "text/csv"
                src = "images/icon-csv.png"
                alt = "CSV"
            Case "application/vnd.ms-powerpoint", "application/vnd.openxmlformats-officedocument.presentationml.presentation"
                src = "images/icon-powerpoint.png"
                alt = "Microsoft PowerPoint Presentation"
            Case "video/x-ms-wmv"
                src = "images/icon-webinar.png"
                alt = "Webinar (Windows Media)"
            Case Else
                'Invalid file type uploaded
                src = "icon-text.png"
                alt = "Text"
        End Select
        image.ImageUrl = src
        image.AlternateText = alt

    End Sub
    Public Function GetKeywordSQL(ByVal str As String) As String
        Dim keywords As New Generic.List(Of String)
        Dim strings As String() = str.Split(",")

        If strings.Length > 1 Then
            For x = 0 To strings.Length - 1
                keywords.Add(strings(x))
            Next
        Else
            keywords.Add(str)
        End If

        Dim finalstring As String = ""
        For Each keyword As String In keywords
            'If finalstring.Length > 0 Then finalstring = " or"
            finalstring = finalstring & " RK.keyword like '%" & keyword & "%' or "
        Next
        Return Left(finalstring, finalstring.Length - 3)
    End Function

End Class
