
Public Sub getDisciplina()

indicetabela = 2
For i = indicetabela To Worksheets.Count
indicelinha = 3
Do While ((Sheets(i).Cells(indicelinha, 3).Value <> "" And Sheets(i).Cells(indicelinha, 4).Value <> "") Or (Sheets(i).Cells(indicelinha + 1, 3).Value <> "" And Sheets(i).Cells(indicelinha + 1, 4).Value <> ""))
 Debug.Print Sheets(i).Cells(indicelinha, 3).Value
 Debug.Print Sheets(i).Cells(indicelinha, 4).Value
 indicelinha = indicelinha + 1
Loop
indicetabela = indicetabela + 1
Next

End Sub
