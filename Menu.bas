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

	Private about As Button
	Private grows As Button
	Private pest As Button
	Private pnlmn As Panel
	Private update As Button
	Private weathe As Button
	Private Star As Button
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("mainmenu")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub

Sub Star_Click
	StartActivity(Start)
End Sub

Sub grows_Click
	StartActivity(Grow)
End Sub

Sub pest_Click
	StartActivity(Pcontrol)
End Sub

Sub weathe_Click
	StartActivity(Weather)
End Sub

Sub update_Click
	StartActivity(Upadate)
End Sub

Sub about_Click
	StartActivity(AboutUs)
End Sub