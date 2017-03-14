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
	Private ImageView1 As ImageView
	Private Label10 As Label
	Private Label11 As Label
	Private Label12 As Label
	Private Label13 As Label
	Private Label14 As Label
	Private Label15 As Label
	Private Label16 As Label
	Private Label17 As Label
	Private Label18 As Label
	Private Label19 As Label
	Private Label20 As Label
	Private Label21 As Label
	Private Label22 As Label
	Private Label23 As Label
	Private Label24 As Label
	Private Label25 As Label
	Private Label26 As Label
	Private Label27 As Label
	Private Label3 As Label
	Private Label4 As Label
	Private Label5 As Label
	Private Label6 As Label
	Private Label7 As Label
	Private Label8 As Label
	Private Label9 As Label
	Private Label1 As Label
	Private Label28 As Label
	Private Label29 As Label
	Private Label30 As Label
	Private Label31 As Label
	Private Label32 As Label
	Private Label33 As Label
	Private Label34 As Label
	Private Label35 As Label
End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("forecast")
	
	Dim job As HttpJob

job.Initialize("WE",Me)
	job.Download("http://api.openweathermap.org/data/2.5/weather?lat=8.18754&lon=123.303714&units=metric&appid=028ec8aaf04f2793add76d72afb51ee1")
End Sub

Sub JobDone (Job As HttpJob)

   If Job.Success = True Then
           parserjson(Job.GetString)
    End If
End Sub
   
Sub parserjson(jsontext As String)
  
  '-begining dat parese
Dim parser As JSONParser
parser.Initialize(jsontext)
Dim root As Map = parser.NextObject
                                            Log(jsontext)			
	'data parsing on this following lines.

Dim dt As Int = root.Get("dt")
Dim coord As Map = root.Get("coord")
Dim lon As Double = coord.Get("lon")
Dim lat As Double = coord.Get("lat")
Dim weatherdata As List = root.Get("weather")
For Each colweather As Map In weatherdata
 Dim icon As String = colweather.Get("icon")
 Dim description As String = colweather.Get("description")
 Dim maine As String = colweather.Get("main")
 Dim id As Int = colweather.Get("id")
Next
Dim name As String = root.Get("name")
Dim cod As Int = root.Get("cod")
Dim smain As Map = root.Get("main")
Dim temp As Double = smain.Get("temp")
Dim temp_min As Double = smain.Get("temp_min")
Dim grnd_level As Double = smain.Get("grnd_level")
Dim humidity As Int = smain.Get("humidity")
Dim pressure As Double = smain.Get("pressure")
Dim sea_level As Double = smain.Get("sea_level")
Dim temp_max As Double = smain.Get("temp_max")
Dim clouds As Map = root.Get("clouds")
Dim all As Int = clouds.Get("all")
Dim id As Int = root.Get("id")
Dim sys As Map = root.Get("sys")
Dim country As String = sys.Get("country")
Dim sunrise As Int = sys.Get("sunrise")
Dim sunset As Int = sys.Get("sunset")
Dim message As Double = sys.Get("message")
Dim base As String = root.Get("base")
Dim wind As Map = root.Get("wind")
Dim deg As Double = wind.Get("deg")
Dim speed As Double = wind.Get("speed") 


	
	

	Label3.Text=root.Get("name")
	Label5.Text=sys.Get("country")
	Label23.Text=root.Get("id")
	'label6.text=root.Get("dt_txt")
	
	
	'ImageView1.setbackgroundimage("icon")
	Label7.Text=smain.Get("temp")
	Label8.Text= colweather.Get("description")
	Label18.Text=smain.Get("temp")
	Label19.Text=wind.Get("speed") 
	Label20.Text=all
	Label21.Text=smain.Get("pressure")
	Label22.Text=smain.Get("humidity")
	Label25.text=smain.Get("grnd_level")
	Label27.text=smain.Get("sea_level")
	Label15.Text=coord.Get("lat")
	Label16.Text=coord.Get("lon")

End Sub



Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub ImageView12_Click
	StartActivity(Menu)
End Sub

Sub ImageView13_Click
	StartActivity(Menu)
End Sub