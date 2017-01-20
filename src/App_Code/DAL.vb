Imports Microsoft.VisualBasic
Imports System.Web.UI.Page
Imports System.Data.SqlClient
Imports System.Configuration
Imports System

Public Class DAL

    ''' <summary>
    ''' This function returns a dataset when given a SQL string.
    ''' </summary>
    ''' <param name="sSQLCommand"></param>
    ''' <returns>DataSet</returns>
    ''' <remarks>Author: Andy Simpson</remarks>
    Public Function GetDataset(ByVal sSQLCommand As String) As System.Data.DataSet
        Dim Dataset As New System.Data.DataSet
        Using conn As New SqlConnection(ConnectionString_LAP)
            Using Command As New SqlCommand(sSQLCommand.ToString, conn)
                Using Adapter As New SqlDataAdapter(Command)
                    conn.Open()
                    Adapter.Fill(Dataset, 0)
                End Using
            End Using
        End Using


        Return (Dataset)

    End Function

    Public Function GetDataset(ByVal sSQLCommand As SqlCommand) As System.Data.DataSet
        Dim Dataset As New System.Data.DataSet

        'Try

        Using conn As New SqlConnection(ConnectionString_LAP)

            Using Command As SqlCommand = sSQLCommand
                Command.Connection = conn
                Command.CommandTimeout = 90
                Using Adapter As New SqlDataAdapter(Command)
                    conn.Open()
                    Command.Connection = conn
                    Adapter.Fill(Dataset, 0)
                End Using
            End Using
        End Using
        'Catch ex As Exception

        ' End Try
        Return (Dataset)
    End Function
    Public Function ExecuteNonQuery(ByVal sSQLCommand As SqlCommand) As Integer
        Dim Result As New Integer
        Using conn As New SqlConnection(ConnectionString_LAP)
            Using Command As SqlCommand = sSQLCommand
                conn.Open()
                Command.Connection = conn
                Result = Command.ExecuteNonQuery
            End Using
        End Using

        Return (Result)
    End Function
    Public Function ExecuteScalar(ByVal sSQLCommand As SqlCommand) As String
        Dim Result As String = ""
        Dim DS As New Data.DataSet
        Using conn As New SqlConnection(ConnectionString_LAP)
            Using Command As SqlCommand = sSQLCommand
                conn.Open()
                Command.Connection = conn
                Result = Command.ExecuteScalar
            End Using
        End Using

        Return (Result)
    End Function

    ''' <summary>
    ''' Returns the connection string, reference this in code instead of directly pulling it from the web config
    ''' _in case the name changes in the web config.
    ''' </summary>
    Public ReadOnly Property ConnectionString_LAP() As String
        Get
            Return ConfigurationManager.ConnectionStrings("HUDLAP").ConnectionString
        End Get
    End Property



End Class
