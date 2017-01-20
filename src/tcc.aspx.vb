
Partial Class tcc
    Inherits Base

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        UpdateDateLastUpdated("07/26/12")
        SetPageTitle("Location Affordability Portal - My Transportation Cost Calculator Tool")

        Dim prefix As String = "http://lai.locationaffordability.info/mtcc"
        'Dim prefix As String = "http://lai.cnt.org/mtcc"
        Dim height As String = "1000"

        If Request.QueryString("height") <> Nothing Then
            Me.iframe.Style("height") = Request.QueryString("height").ToString & "px"
        Else
            Me.iframe.Style("height") = height & "px"
        End If


        If Request.QueryString("url") <> Nothing Then
            Me.iframe.Attributes("src") = prefix & Request.QueryString("url").ToString()
        Else
            Me.iframe.Attributes("src") = prefix
        End If

        Select Case Me.iframe.Attributes("src")
            Case prefix & "" : Me.iframe.Style("height") = "1300px"
            Case prefix & "/about.php" : Me.iframe.Style("height") = "800px"
            Case prefix & "/user_guide.php"
                Me.iframe.Style("height") = "10680px"
                Me.iframe.Style("overflow-y") = "hidden"
                'Me.iframe.Attributes.Add("Scrolling", "off")
            Case Else : Me.iframe.Style("height") = "1000px"
        End Select
    End Sub




 End Class
