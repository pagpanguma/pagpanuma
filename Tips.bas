﻿Type=Activity
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
	Private Button2 As Button
	Private Button3 As Button
	Private Button4 As Button
	Private Button5 As Button
	Private Button6 As Button
	Private header As Label
	Private headrpnl As Panel
	Private home As ImageView
	Private pnlmain As Panel
	Private title As Label
	
	Private titlepnl As Panel
	Private Button7 As Button
	Private Button8 As Button
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("orgtips")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub Button1_Click
	StartActivity(Compost)
End Sub

Sub back_Click
	StartActivity(Start)
End Sub

Sub home_Click
	StartActivity(Menu)
End Sub

Sub Button8_Click
	StartActivity(Dangan)
End Sub

Sub Button7_Click
	StartActivity(Opest)
End Sub

Sub Button3_Click
	StartActivity(Foliar)
End Sub

Sub Button2_Click
	StartActivity(Gardening)
End Sub

Sub Button4_Click
	StartActivity(Seed)
End Sub

Sub Button6_Click
	StartActivity(Indigenous)
End Sub

Sub Button5_Click
	StartActivity(Diff)
End Sub