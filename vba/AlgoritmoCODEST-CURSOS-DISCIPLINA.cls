

 
Public Sub getDisciplina()
Dim disciplinas As Scripting.Dictionary
Set disciplinas = New Scripting.Dictionary
 
indicetabela = 2
For i = indicetabela To Worksheets.Count
indicelinha = 3

    Do While ((Sheets(i).Cells(indicelinha, 3).Value <> "" And Sheets(i).Cells(indicelinha, 4).Value <> "") Or (Sheets(i).Cells(indicelinha + 1, 3).Value <> "" And Sheets(i).Cells(indicelinha + 1, 4).Value <> ""))
        Debug.Print Sheets(i).Cells(indicelinha, 3).Value
        If disciplinas.Exists(Sheets(i).Cells(indicelinha, 3).Value) Then
        Debug.Print "Valor já adicionado"
        Else
        Debug.Print Sheets(i).Cells(indicelinha, 4).Value
            If (Sheets(i).Cells(indicelinha, 3).Value <> "" And Sheets(i).Cells(indicelinha, 4).Value <> "") Then
            disciplinas.Add Sheets(i).Cells(indicelinha, 3).Value, Sheets(i).Cells(indicelinha, 4).Value
            End If
        End If
     indicelinha = indicelinha + 1
    Loop

indicetabela = indicetabela + 1

Next
 Debug.Print disciplinas.Count
 
 Dim k As Long
For k = 0 To disciplinas.Count - 1
   Debug.Print disciplinas.Keys(k), disciplinas.Items(k)
   Sheets(1).Cells(k + 3, 10).Value = disciplinas.Keys(k)
   Sheets(1).Cells(k + 3, 11).Value = disciplinas.Items(k)
Next k
End Sub

