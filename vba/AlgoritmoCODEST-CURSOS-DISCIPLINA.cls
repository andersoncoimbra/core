

 
Public Sub getDisciplina()
Dim disciplinas As Scripting.Dictionary
Set disciplinas = New Scripting.Dictionary
 
indicetabela = 2
For I = indicetabela To Worksheets.Count
indicelinha = 3

    Do While ((Sheets(I).Cells(indicelinha, 3).Value <> "" And Sheets(I).Cells(indicelinha, 4).Value <> "") Or (Sheets(I).Cells(indicelinha + 1, 3).Value <> "" And Sheets(I).Cells(indicelinha + 1, 4).Value <> ""))
        Debug.Print Sheets(I).Cells(indicelinha, 3).Value
        If disciplinas.Exists(Sheets(I).Cells(indicelinha, 3).Value) Then
        Debug.Print "Valor já adicionado"
        Else
        Debug.Print Sheets(I).Cells(indicelinha, 4).Value
        disciplinas.Add Sheets(I).Cells(indicelinha, 3).Value, Sheets(I).Cells(indicelinha, 4).Value
        End If
     indicelinha = indicelinha + 1
    Loop

indicetabela = indicetabela + 1

Next
 Debug.Print disciplinas.Count
 
 
End Sub
