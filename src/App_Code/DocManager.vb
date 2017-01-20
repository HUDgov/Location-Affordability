Imports Microsoft.VisualBasic
Imports System
Imports System.IO
Imports System.Text
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Data

Public Class DocManager
    Public FU As FileUpload
    Public myfile As Document
    Private DAL As New DAL
    Public Tools As New Tools

    Public Structure Document
        Public Filename As String
        Public Size As Integer
        Public MIME As String
        Public Bytes As Byte()
        Public Reader As BinaryReader
        Public PhysicalFilename As String

    End Structure

    Public Sub Initialize(Uploadedfile As FileUpload)
        FU = Uploadedfile
        myfile.Filename = FU.PostedFile.FileName.ToLower
        myfile.MIME = GetMIME(FU)
        myfile.Size = GetSize(FU)
        myfile.Bytes = GetBytes(FU)

    End Sub
    Public Sub SaveFile(theFile As FileUpload)
        FU = theFile
        myfile.Filename = FU.PostedFile.FileName.ToLower
        myfile.MIME = GetMIME(FU)
        myfile.Size = GetSize(FU)
        myfile.Bytes = GetBytes(FU)

        SaveToDB()

    End Sub
    Private Sub SaveToDB()
        Dim strQuery As String = "insert into Document(Filename, size, mime, bytes) values (@filename, @size, @mime, @bytes)"
        Dim cmd As SqlCommand = New SqlCommand(strQuery)
        cmd.Parameters.Add("@filename", SqlDbType.VarChar).Value = myfile.Filename
        cmd.Parameters.Add("@size", SqlDbType.Int).Value = myfile.Size
        cmd.Parameters.Add("@mime", SqlDbType.VarChar).Value = myfile.MIME
        cmd.Parameters.Add("@bytes", SqlDbType.Binary).Value = myfile.Bytes

        DAL.ExecuteNonQuery(cmd)
    End Sub
    Private Function GetMIME(ByRef UploadedFile As FileUpload) As String
        Dim extension As String = IO.Path.GetExtension(UploadedFile.PostedFile.FileName).ToLower()

        Dim MIMEType As String = Nothing

        Select Case extension
            Case ".gif"
                Return "image/gif"
            Case ".jpg", ".jpeg", ".jpe"
                Return "image/jpeg"
            Case ".png"
                Return "image/png"
            Case ".pdf"
                Return "application/pdf"
            Case ".docx"
                Return "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
            Case ".doc"
                Return "application/msword"
            Case ".xls"
                Return "application/vnd.ms-excel"
            Case ".xlsx"
                Return "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
            Case ".csv"
                Return "text/csv"
            Case ".ppt"
                Return "application/vnd.ms-powerpoint"
            Case ".pptx"
                Return "application/vnd.openxmlformats-officedocument.presentationml.presentation"
            Case ".wmv"
                Return "video/x-ms-wmv"
            Case Else
                'Invalid file type uploaded
                Return "text/html"
                Exit Function
        End Select

    End Function
    Private Function GetSize(ByRef UploadedFile As FileUpload) As Integer
        Return UploadedFile.PostedFile.ContentLength
    End Function
    Private Function GetBytes(FU As FileUpload) As Byte()
        Dim imageBytes(FU.PostedFile.InputStream.Length) As Byte
        FU.PostedFile.InputStream.Read(imageBytes, 0, imageBytes.Length)
        Return imageBytes

        '    Const SQL As String = "INSERT INTO [BinaryTable] ([FileName], [DateTimeUploaded], [MIME], [BinaryData]) VALUES (@FileName, @DateTimeUploaded, @MIME, @BinaryData)"
        '    Dim cmd As New SqlCommand(SQL, Conn)
        '    cmd.Parameters.AddWithValue("@FileName", FileName.Text.Trim())
        '    cmd.Parameters.AddWithValue("@MIME", FileToUpload.PostedFile.ContentType)
    End Function
    Public Function Retrieve(ByVal DocID As Integer) As Document
        Dim dtRow As DataRow = DAL.GetDataset(New SqlCommand("select resourceid,title,description,filename,size,mime,bytes,userid,dateadded, isnull(physicalfilename,'') from resource where resourceid=" & DocID)).Tables(0).Rows(0)

        Dim newDocument As New Document
        With newDocument
            .Filename = dtRow(3)
            .Size = dtRow(4)
            .MIME = dtRow(5)
            If Not IsDBNull(dtRow(6)) Then .Bytes = dtRow(6)
            .PhysicalFilename = dtRow(9)
        End With

        Return newDocument
    End Function
    Private Function GetMemoryStream() As BinaryReader
        Dim memStream As New MemoryStream(100)
        memStream.Write(myfile.Bytes, 0, myfile.Bytes.Length - 1)
        Dim reader As New IO.BinaryReader(memStream)
        Return reader
    End Function
    Public Function GetDocuments() As DataTable
        Dim dtDocuments As DataTable
        dtDocuments = DAL.GetDataset("select ResourceID, Filename, Size, MIME, Bytes from resource").Tables(0)
        Return dtDocuments
    End Function
End Class
