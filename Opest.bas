﻿Type=Activity
Version=5.8
ModulesStructureVersion=1
B4A=true
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle:false
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
	Private header As Label
	Private headrpnl As Panel
	Private home As ImageView
	Private ImageView1 As ImageView
	Private img1 As ImageView
	Private img2 As ImageView
	Private img3 As ImageView
	Private pnlmain As Panel
	Private title1 As Label
	Private title1pnl As Panel
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("opest1")


	
End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub Button5_Click
	StartActivity(Opest1)
End Sub

Sub Button4_Click
	StartActivity(Opest2)
End Sub
	
Sub Button1_Click
	StartActivity(Opest3)
End Sub

Sub Button2_Click
	StartActivity(Opest4)
End Sub

Sub Button3_Click
	StartActivity(Opest5)
End Sub

Sub back_Click
	StartActivity(Tips)
End Sub

Sub home_Click
	StartActivity(Menu)
End Sub