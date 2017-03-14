﻿Type=Activity
Version=5.8
ModulesStructureVersion=1
B4A=true
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: false
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private back As ImageView
	Private header As Label
	Private headrpnl As Panel
	Private home As ImageView
	Private pnlmain As Panel
	Private title As Label
	Private titlepnl As Panel
	
	
	
	Private Panel1 As Panel
	Private Label1 As Label
	Private btnZoomOut As Button
	
		Dim pdfv As PDFViewer
Dim pc As Int=0

	Private Panel1 As Panel
	Private btnZoomIn As Button
	Private btnZoomOut As Button
	Dim zoom = 1.0 As Double
	Private Label1 As Label
End Sub




Sub Activity_Create(FirstTime As Boolean)
Activity.LoadLayout("Introdesign1")
   
	pdfv.init
	Panel1.AddView(pdfv,0%x,0%y,100%x,100%y)
	File.Copy(File.DirAssets,"demo.pdf",File.DirRootExternal,"demo.pdf")
	pdfv.getpdf(File.DirRootExternal&"/demo.pdf")
	
	If pdfv.isValid Then
		Log("pagecount:" & pdfv.GetPageCount)
		Label1.Text =  "Page: " & pdfv.GetPageCount 
		pdfv.scrollToPage(0)
		pc=pdfv.GetPageCount
		Log("pc:"&pc)
		pdfv.zoom(zoom)
	Else
		Msgbox("Error pdf file!","Error")
		Activity.Finish
		Return
	End If
End Sub

Sub btnZoomIn_Click
	zoom=zoom + 0.3
	pdfv.zoom(zoom)
End Sub
Sub btnZoomOut_Click
	zoom=zoom - 0.3
	pdfv.zoom(zoom)
End Sub

Sub home_Click
	StartActivity(Menu)
End Sub

Sub back_Click
	StartActivity(Start)
End Sub

