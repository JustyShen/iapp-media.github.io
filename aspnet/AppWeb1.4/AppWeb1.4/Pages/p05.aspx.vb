﻿Public Class p05
    Inherits System.Web.UI.Page
    Dim Main As New JDB()
    Dim Comm As New CommTool()
    Dim str As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Expires = 0
        Response.Cache.SetCacheability(HttpCacheability.NoCache)

        Dim page2 As New StringBuilder()
        str = "select Img01,h1,h2 from User_Page where IDNo=" & Request.QueryString("ID")
        Dim dr As DataTable = Main.GetDataSet(str)
        If dr.Rows.Count > 0 Then
            Dim url As String = dr.Rows(0).Item("Img01").ToString()
            Dim h1 As String = dr.Rows(0).Item("h1").ToString()
            If url <> "" Or h1 <> "" Then
                page2.Append(" <img class=""up moveIconUp"" src=""../Apps/img/icon_up.png"" />" & vbCrLf)
                page2.Append(" <a id=""show-upload"" onclick=""goValue(1)"" class='#' href='javascrip:void(0)'>" & vbCrLf)
                page2.Append(" <div class=""bg animated zoomInDown"" style=""background-image: url(../Apps/" & url & ");""> </div></a>" & vbCrLf)
                page2.Append(" <div  class=""bar2 animated fadeIn1""><p id=""dw"" onclick=""passValue(1)"" class=""text2 animated fadeInLeft1"">" & h1 & "</p></div>" & vbCrLf)
            End If
        End If
        L.Text = page2.ToString()
    End Sub

End Class