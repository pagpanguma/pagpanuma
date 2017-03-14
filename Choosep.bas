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
	
		Dim s As SQL
		Dim c As Cursor
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
	
	Private ImageView5 As ImageView
	Private ImageView6 As ImageView
	Private ImageView7 As ImageView
	Private lv As ListView
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("cplant")
	
	
	Dim ruta As String
	
	If File.ExternalWritable Then
		ruta = File.DirDefaultExternal
		Else
			ruta = File.DirInternal
			End If
	
	If File.Exists(ruta, "chinook.db") = False Then
		
		File.Copy(File.DirAssets, "chinook.db", ruta, "chinook.db")
		 
	End If
        
		s.initialize(ruta, "chinook.db", True)
		
		
		
		
		c = s.ExecQuery("SELECT  Title FROM albums ")
	If c.RowCount > 0 Then
    For i = 0 To c.RowCount - 1
        c.Position = i
		lv.AddSingleline(c.GetString("Title"))'names put in list to run in duplicate check
    Next
	End If

End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub Button1_Click
	StartActivity(Pdetails)
End Sub

Sub back_Click
	StartActivity(Categories)
End Sub

Sub home_Click
	StartActivity(Menu)
End Sub