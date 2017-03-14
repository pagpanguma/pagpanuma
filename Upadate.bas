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

	Private ImageView12 As ImageView
	Private ImageView13 As ImageView
	Private Label2 As Label
	Private Panel3 As Panel
	Private Panel9 As Panel
	Private ProgressBar1 As ProgressBar
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("updte")

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub ImageView13_Click
	StartActivity(Menu)
End Sub

Sub ImageView12_Click
	StartActivity(Menu)
End Sub