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
	Dim SQL1 As SQL
	
End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.
	
	Private back As ImageView
	Private head As Label
	Private headrpnl As Panel
	Private home As ImageView
	Private img1 As ImageView
	Private img2 As ImageView
	Private img3 As ImageView
	Private pnlmain As Panel
	Private title As Label
	Private title1 As Label
	Private title1pnl As Panel
	Private titlepnl As Panel
	Private Add As Button
	
	
	
	Dim SV As ScrollView
	Dim header As Panel
	Dim Table As Panel
	Dim NumberOfColumns, RowHeight, RowHeight_1 As Int
	Dim ColumnWidth(3) As Int
	Dim ColumnWidth_1(3) As Int
	Dim HeaderColor, LineColor, CellColor, FontColor, HeaderFontColor As Int
	Dim ColLineWidth, RowLineWidth As Int
	Dim FontSize As Float
	Type RowCol (Row As Int, Col As Int)
	Dim Alignment As Int
	Dim SelectedRow As Int
	Dim SelectedRowColor As Int		: SelectedRowColor=Colors.LightGray
	
	
	'Table settings
	HeaderColor = Colors.Gray
	NumberOfColumns = 3 'will be overwritten when loading from CSV file.
	ColLineWidth = 1dip
	RowLineWidth = 1dip
	RowHeight_1 = 30dip
	RowHeight=RowHeight_1+RowLineWidth
	LineColor = Colors.Black
	CellColor = Colors.White
	FontColor = Colors.Black
	HeaderFontColor = Colors.White
	FontSize = 14
	Alignment = Gravity.CENTER 'change to Gravity.LEFT or Gravity.RIGHT for other alignments.

End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	Activity.LoadLayout("Growing")
	Dim i As Int
	
	Dim ruta As String
	
	If File.ExternalWritable Then
		ruta = File.DirDefaultExternal
		Else
			ruta = File.DirInternal
			End If
	
	If File.Exists(ruta, "pagpangumas.db") = False Then
		
		File.Copy(File.DirAssets, "pagpanguma.db", ruta, "pagpangumas.db")
		 
	End If
        
		SQL1.initialize(ruta, "pagpangumas.db", True)

	SV.Initialize(0)
'	SV.Color=Colors.Transparent
	SV.Panel.Color=Colors.Black
	Table = SV.Panel
	Table.Color = LineColor
	Activity.AddView(SV, 0, 260dip, 100%x, 285dip)
'	For i=0 To NumberOfColumns-1
'		ColumnWidth(i) = SV.Width / NumberOfColumns
'	Next
	'ColumnWidth(0) = 1
	ColumnWidth(0) = SV.Width / 2
	ColumnWidth(1) = SV.Width / 2
	For i=0 To NumberOfColumns-1
		ColumnWidth_1(i) = ColumnWidth(i)-ColLineWidth
	Next
	SelectedRow = -1
	ReadSQLTable
End Sub


Sub ReadSQLTable
	Dim i As Int
	Dim Cursor1 As Cursor

	Cursor1 = SQL1.ExecQuery("SELECT plantname,palnimage FROM usertask")

	Dim row(NumberOfColumns) As String
	row(0)="plantname"
	row(1)="planimage"
	
	AddRow(row)
	
	For i = 0 To Cursor1.RowCount - 1
		Dim row(NumberOfColumns) As String
		Cursor1.Position = i
		row(0)=Cursor1.GetString("plantname")
		row(1)=Cursor1.GetString("planimage")
		
		AddRow(row)
	Next
	Cursor1.Close
	End Sub
	
	Sub Cell_Click
	Dim rc As RowCol
	Dim l As Label
	l = Sender
	rc = l.Tag
	SelectRow(rc.Row)
'	Activity.Title = "Cell clicked: (" & rc.Row & ", " & rc.Col & ")"
	Activity.Title = "Code = "&GetView(rc.row,0).Text
End Sub

Sub Header_Click
	Dim l As Label
	Dim col As Int
	l = Sender
	col = l.Tag
	Activity.Title = "Header clicked: " & col
End Sub

Sub SelectRow(Row As Int)
	'remove the color of previously selected row
	If SelectedRow > -1 Then
		For col = 0 To NumberOfColumns - 1
			GetView(SelectedRow, col).Color = CellColor
		Next
	End If
	SelectedRow = Row
	For col = 0 To NumberOfColumns - 1
		GetView(Row, col).Color = SelectedRowColor
	Next
End Sub

'Returns the label in the specific cell
Sub GetView(Row As Int, Col As Int) As Label
	Dim l As Label
	l = Table.GetView(Row * NumberOfColumns + Col)
	Return l
End Sub

'Adds a row to the table
Sub AddRow(Values() As String)
	Dim ColWidth As Int
	
	If Values.Length <> NumberOfColumns Then
		Log("Wrong number of values.")
		Return
	End If
	Dim lastRow As Int
	lastRow = NumberOfRows
	ColWidth=0
	For i = 0 To NumberOfColumns - 1
		Dim l As Label
		l.Initialize("cell")
		l.Text = Values(i)
		l.Gravity = Alignment
		l.TextSize = FontSize
		l.TextColor = FontColor
		l.Color=Colors.White
		Dim rc As RowCol
		rc.Initialize
		rc.Col = i
		rc.Row = lastRow
		l.Tag = rc
'		Table.AddView(l, ColumnWidth(i)*i, RowHeight * lastRow, ColumnWidth_1(i), RowHeight_1)
		Table.AddView(l, ColWidth, RowHeight * lastRow, ColumnWidth_1(i), RowHeight_1)
		ColWidth=ColWidth+ColumnWidth(i)
	Next
	Table.Height = NumberOfRows * RowHeight
End Sub

'Set the headers values
Sub SetHeader(Values() As String)
	Dim ColWidth As Int

	If header.IsInitialized Then Return 'should only be called once
	header.Initialize("")
	ColWidth=0
	For i = 0 To NumberOfColumns - 1
		Dim l As Label
		l.Initialize("header")
		l.Text = Values(i)
		l.Gravity = Gravity.CENTER
		l.TextSize = FontSize
		l.Color = HeaderColor
		l.TextColor = HeaderFontColor
		l.Tag = i
'		header.AddView(l, ColumnWidth(i) * i, 0, ColumnWidth_1(i), RowHeight_1)
		header.AddView(l, ColWidth, 0, ColumnWidth_1(i), RowHeight_1)
		ColWidth=ColWidth+ColumnWidth(i)
	Next
	Activity.AddView(header, SV.Left, SV.Top - RowHeight, SV.Width, RowHeight)
End Sub

Sub NumberOfRows As Int
	Return Table.NumberOfViews / NumberOfColumns
End Sub

'Sets the value of the given cell
Sub SetCell(Row As Int, Col As Int, Value As String)
	GetView(Row, Col).Text = Value
End Sub

'Gets the value of the given cell
Sub GetCell(Row As Int, Col As Int) As String
	Return GetView(Row, Col).Text
End Sub

'Clears the table
Sub ClearAll
	For i = Table.NumberOfViews -1 To 0 Step -1
		Table.RemoveViewAt(i)
	Next
	Table.Height = 0
	SelectedRow = -1
End Sub
Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub


Sub Add_Click
	StartActivity(Categories)
End Sub

Sub back_Click
	StartActivity(Menu)
End Sub

Sub home_Click
	StartActivity(Menu)
End Sub