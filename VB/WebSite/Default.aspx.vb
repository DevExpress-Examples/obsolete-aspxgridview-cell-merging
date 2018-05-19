Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxGridView
Imports System.Collections.Generic
Imports System.Drawing

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		If Not(IsPostBack OrElse IsCallback) Then
			gridView.DataBind()
		End If

		Dim TempASPxGridViewCellMerger As ASPxGridViewCellMerger = New ASPxGridViewCellMerger(gridView)

		gridView.Columns(0).FixedStyle = GridViewColumnFixedStyle.Left
		gridView.Columns(1).FixedStyle = GridViewColumnFixedStyle.Left

		gridView.Columns(0).CellStyle.BackColor = Color.FromArgb(&HEE, &HEE, &HEE)
		gridView.Columns(1).CellStyle.BackColor = Color.FromArgb(&HEE, &HEE, &HEE)

		gridView.Settings.ShowHorizontalScrollBar = True
	End Sub
End Class

