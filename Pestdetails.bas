﻿Type=Activity
Version=5.8
ModulesStructureVersion=1
B4A=true
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle:False
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
	Private ImageView5 As ImageView
	Private pnlmain As Panel
	Private title As Label
	Private titlepnl As Panel
	
	
	Private ListView1 As ListView
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("pestd")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub back_Click
	StartActivity(Pcontrol)
End Sub

Sub home_Click
	StartActivity(Menu)
End Sub