Type=Activity
Version=5.8
ModulesStructureVersion=1
B4A=true
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: True
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private back As ImageView
	Private Button3 As Button
	Private Button4 As Button
	Private Button5 As Button
	Private header As Label
	Private headrpnl As Panel
	Private home As ImageView
	Private ImageView1 As ImageView
	Private ImageView2 As ImageView
	Private ImageView3 As ImageView
	Private ImageView4 As ImageView
	Private img1 As ImageView
	Private img2 As ImageView
	Private img3 As ImageView
	Private menupnl As Panel
	Private Panel1 As Panel
	Private Panel2 As Panel
	Private pnlmain As Panel
	Private title As Label
	Private title1 As Label
	Private title1pnl As Panel
	Private titlepnl As Panel
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("aboutpag")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub
