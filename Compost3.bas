Type=Activity
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


	Private Panel1 As Panel
	Private Label1 As Label
	Private btnZoomIn As Button
	Private btnZoomOut As Button
	
	Dim pdfv As PDFViewer
	Dim pc As Int=0

	Private Panel1 As Panel
	Private btnZoomIn As Button
	Private btnZoomOut As Button
	Dim zoom = 1.0 As Double
	Private Label1 As Label
	Private back As ImageView
	Private header As Label
	Private headrpnl As Panel
	Private home As ImageView
	Private pnlmain As Panel
	Private title As Label
	Private titlepnl As Panel
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("cpost2")


	pdfv.init
	Panel1.AddView(pdfv,0,0,-1,-1)
	File.Copy(File.DirAssets,"kitto.pdf",File.DirRootExternal,"kitto.pdf")
	pdfv.getpdf(File.DirRootExternal&"/kitto.pdf")
	
	If pdfv.isValid Then
		Log("pagecount:" & pdfv.GetPageCount)
		Label1.Text =  "# of Page: " & pdfv.GetPageCount 
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
	StartActivity(Compost)
End Sub


Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub
