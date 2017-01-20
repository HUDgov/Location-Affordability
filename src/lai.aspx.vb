
Partial Class lai
    Inherits Base

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        UpdateDateLastUpdated("07/26/12")
        SetPageTitle("Location Affordability Portal - Location Affordability Index Tool")

        Dim prefix As String = "http://lai.locationaffordability.info/"
        'Dim prefix As String = "http://lai.cnt.org/"
        Dim height As String = "1000"

        If Request.QueryString("height") <> Nothing Then
            Me.iframe.Style("height") = Request.QueryString("height").ToString & "px"
        Else
            Me.iframe.Style("height") = height & "px"
        End If

        'Grab the full querystring, if it exists and append it to the iFrame source
        If Request.QueryString.ToString.Length >= 0 Then
            If Request.QueryString.ToString.Contains("url") Then
                Me.iframe.Attributes("src") = prefix & "/" & Request.QueryString("url")
            Else
                Me.iframe.Attributes("src") = prefix & "?" & Request.QueryString.ToString()

            End If
        Else
            Me.iframe.Attributes("src") = prefix
        End If


        Select Case Request.QueryString("url")
            Case "about.php"
                Me.iframe.Style("height") = "800px"
            Case "download.php"
                Me.iframe.Style("height") = "7150px"
                Me.iframe.Style("overflow-y") = "scroll"
            Case "user_guide.php"
                Me.iframe.Style("height") = "7100px"
                Me.iframe.Style("overflow-y") = "scroll"
            Case Else : Me.iframe.Style("height") = "900px"
        End Select

        'Set height based on iFrame src
        'Select Case Me.iframe.Attributes("src")
        '    Case prefix
        '        Me.iframe.Style("height") = "800px"
        '    Case prefix & "about.php"
        '        Me.iframe.Style("height") = "800px"
        '    Case prefix & "download.php"
        '        Me.iframe.Style("height") = "6050px"
        '        Me.iframe.Style("overflow-y") = "scroll"
        '    Case prefix & "user_guide.php"
        '        Me.iframe.Style("height") = "7100px"
        '        Me.iframe.Style("overflow-y") = "scroll"
        '    Case Else : Me.iframe.Style("height") = "900px"
        'End Select

        'Select Case Me.iframe.Attributes("src")
        '    Case "http://lai.locationaffordability.info"
        '        Me.iframe.Style("height") = "800px"
        '    Case "http://lai.locationaffordability.info/about.php"
        '        Me.iframe.Style("height") = "800px"
        '    Case "http://lai.locationaffordability.info/download.php"
        '        Me.iframe.Style("height") = "6050px"
        '        Me.iframe.Style("overflow-y") = "scroll"
        '    Case "http://lai.locationaffordability.info/user_guide.php"
        '        Me.iframe.Style("height") = "7100px"
        '        Me.iframe.Style("overflow-y") = "scroll"
        '    Case Else : Me.iframe.Style("height") = "900px"
        'End Select


    End Sub
End Class
