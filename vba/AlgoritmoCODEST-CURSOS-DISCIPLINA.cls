

 
Public Sub getDisciplina()
Dim disciplinas As Scripting.Dictionary
Set disciplinas = New Scripting.Dictionary

Dim combinado As Scripting.Dictionary
Set combinado = New Scripting.Dictionary
 
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
         combinado.Add Sheets(i).Name & ExtrairNumeros(Sheets(i).Cells(indicelinha, 2).Value) & Sheets(i).Cells(indicelinha, 3).Value , Sheets(i).Cells(indicelinha, 1).Value&Sheets(i).Cells(indicelinha, 4).Value
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

   For k = 0 To combinado.Count - 1
   Debug.Print combinado.Keys(k), combinado.Items(k)
   Sheets(1).Cells(k + 3, 13).Value = combinado.Keys(k)
   Sheets(1).Cells(k + 3, 14).Value = combinado.Items(k)
   Next k
End Sub

Function ExtrairNumeros(ref As String)
Dim x, y As Long
Dim num As String
For x = Len(ref) To 1 Step -1
    If IsNumeric(Mid(ref, x, 1)) Then
        y = y + 1
        num = Mid(ref, x, 1) & num
    End If
    If y = 1 Then num = CInt(Mid(num, 1, 1))
Next x
ExtrairNumeros = num
End Function
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'If disciplinas.Exists(UCase(coddisciplina)) Then
 '   If combinados.Exists(UCase(codigo)) Then
  '      getcurriculo = ExtrairNumeros(combinados.Item(UCase(codigo)))
   ' Else
    'For i = 1 To 10
'    If combinados.Exists(UCase(codigocurso & i & coddisciplina)) Then
 '   getcurriculo = ExtrairNumeros(combinados.Item(UCase(codigocurso & i & coddisciplina)))
  '  End If    
   ' Next i
  '  
 '   End If
'Else
   ' If combinados.Exists(UCase(codigo)) Then
    '        getcurriculo = ExtrairNumeros(combinados.Item(UCase(codigo)))
   '     Else
  '           getcurriculo = "-"
 '       End If
'
'End If