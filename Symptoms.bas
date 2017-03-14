Type=Activity
Version=5.8
ModulesStructureVersion=1
B4A=true
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: False
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.

	Private back As ImageView
	Private Button1 As Button
	Private Button10 As Button
	Private Button2 As Button
	Private Button3 As Button
	Private Button4 As Button
	Private Button5 As Button
	Private Button6 As Button
	Private Button7 As Button
	Private Button8 As Button
	Private Button9 As Button
	Private header As Label
	Private headrpnl As Panel
	Private home As ImageView
	Private ImageView1 As ImageView
	Private ImageView10 As ImageView
	Private ImageView11 As ImageView
	Private ImageView12 As ImageView
	Private ImageView13 As ImageView
	Private ImageView14 As ImageView
	Private ImageView15 As ImageView
	Private ImageView16 As ImageView
	Private ImageView2 As ImageView
	Private ImageView3 As ImageView
	Private ImageView4 As ImageView
	Private ImageView5 As ImageView
	Private ImageView6 As ImageView
	Private ImageView7 As ImageView
	Private ImageView8 As ImageView
	Private ImageView9 As ImageView
	Private Label1 As Label
	Private Label2 As Label
	Private menupnl As Panel
	Private Panel1 As Panel
	Private Panel2 As Panel
	Private Panel3 As Panel
	Private Panel4 As Panel
	Private Panel5 As Panel
	Private Panel6 As Panel
	Private Panel7 As Panel
	Private Panel8 As Panel
	Private Panel9 As Panel
	Private pnlmain As Panel
	Private title As Label
	Private Titlepn As Panel
	Private titlepnl As Panel
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("symptom")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub ImageView12_Click
	StartActivity(Pcontrol)
End Sub

Sub ImageView13_Click
	StartActivity(Menu)
End Sub

Sub Button10_Click
	StartActivity(Pcontrol)
End Sub