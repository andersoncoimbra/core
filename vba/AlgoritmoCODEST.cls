VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Plan2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True


Public Sub Consolidado()
Dim M As Worksheet
Dim Work As Workbook
Set M = Sheets(1)
Set Work = Application.ActiveWorkbook
Dim linha As Integer
linha = 2

'Indice da planilha para inicio da consolidação
indice = 5

For i = indice To Work.Sheets.Count
'Segunda Feira
'-----------------------------
'Manha
'-----------------------------
'Verificando Segunda Feira 08:00 - 08:50
'-----------------------------
If verificaHorario("B3", "C3", "B4", "C4", i) Then
    If Consolida("B3", "C3", "B4", "C4", i, linha, "Segunda Feira", "08:00-08:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Segunda Feira 08:50 - 09:40
'-----------------------------
If verificaHorario("B5", "C5", "B6", "C6", i) Then
    If Consolida("B5", "C5", "B6", "C6", i, linha, "Segunda Feira", "08:50-09:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Segunda Feira 10:00 - 10:50
'-----------------------------
If verificaHorario("B7", "C7", "B8", "C8", i) Then
   If Consolida("B7", "C7", "B8", "C8", i, linha, "Segunda Feira", "10:00-10:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Segunda Feira 10:50 - 11:40
'-----------------------------
If verificaHorario("B9", "C9", "B10", "C10", i) Then
   If Consolida("B7", "C7", "B8", "C8", i, linha, "Segunda Feira", "10:50-11:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Segunda Feira 11:40 - 12:30
'-----------------------------
If verificaHorario("B11", "C11", "B12", "C12", i) Then
   If Consolida("B11", "C11", "B12", "C12", i, linha, "Segunda Feira", "11:40-12:30") Then
    linha = linha + 1
    End If
End If

'Noite
'-----------------------------
'Verificando Segunda Feira 18:00 - 18:50
'-----------------------------
If verificaHorario("B25", "C25", "B26", "C26", i) Then
   If Consolida("B25", "C25", "B26", "C26", i, linha, "Segunda Feira", "18:00-18:50") Then
    linha = linha + 1
    End If
End If
'-----------------------------
'Verificando Segunda Feira 18:50 - 19:40
'-----------------------------
If verificaHorario("B27", "C27", "B28", "C28", i) Then
   If Consolida("B27", "C27", "B28", "C28", i, linha, "Segunda Feira", "18:50-19:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Segunda Feira 19:40 - 20:30
'-----------------------------
If verificaHorario("B29", "C29", "B30", "C30", i) Then
   If Consolida("B29", "C29", "B30", "C30", i, linha, "Segunda Feira", "19:40-20:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Segunda Feira 20:40 - 21:30
'-----------------------------
If verificaHorario("B31", "C31", "B32", "C32", i) Then
   If Consolida("B31", "C31", "B32", "C32", i, linha, "Segunda Feira", "20:40-21:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Segunda Feira 21:30 - 22:20
'-----------------------------
If verificaHorario("B33", "C33", "B34", "C34", i) Then
   If Consolida("B33", "C33", "B34", "C34", i, linha, "Segunda Feira", "21:30-22:20") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Segunda Feira 22:20 - 23:10
'-----------------------------
If verificaHorario("B35", "C35", "B36", "C36", i) Then
   If Consolida("B35", "C35", "B36", "C36", i, linha, "Segunda Feira", "22:20-23:10") Then
    linha = linha + 1
    End If
End If


'Terça Feira
'-----------------------------
'Manha
'-----------------------------
'Verificando Terça Feira 08:00 - 08:50
'-----------------------------
If verificaHorario("D3", "E3", "D4", "E4", i) Then
    If Consolida("D3", "E3", "D4", "E4", i, linha, "Terça Feira", "08:00-08:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Terça Feira 08:50 - 09:40
'-----------------------------
If verificaHorario("D5", "E5", "D6", "E6", i) Then
    If Consolida("D5", "E5", "D6", "E6", i, linha, "Terça Feira", "08:50-09:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'VVerificando Terça Feira 10:00 - 10:50
'-----------------------------
If verificaHorario("D7", "E7", "D8", "E8", i) Then
   If Consolida("D7", "E7", "D8", "E8", i, linha, "Terça Feira", "10:00-10:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Terça Feira 10:50 - 11:40
'-----------------------------
If verificaHorario("D9", "E9", "D10", "E10", i) Then
   If Consolida("D7", "E7", "D8", "E8", i, linha, "Terça Feira", "10:50-11:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Terça Feira 11:40 - 12:30
'-----------------------------
If verificaHorario("D11", "E11", "D12", "E12", i) Then
   If Consolida("D11", "E11", "D12", "E12", i, linha, "Terça Feira", "11:40-12:30") Then
    linha = linha + 1
    End If
End If

'Noite
'-----------------------------
'Verificando Terça Feira 18:00 - 18:50
'-----------------------------
If verificaHorario("D25", "E25", "D26", "E26", i) Then
   If Consolida("D25", "E25", "D26", "E26", i, linha, "Terça Feira", "18:00-18:50") Then
    linha = linha + 1
    End If
End If
'-----------------------------
'Verificando Terça Feira 18:50 - 19:40
'-----------------------------
If verificaHorario("D27", "E27", "D28", "E28", i) Then
   If Consolida("D27", "E27", "D28", "E28", i, linha, "Terça Feira", "18:50-19:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Terça Feira  19:40 - 20:30
'-----------------------------
If verificaHorario("D29", "E29", "D30", "E30", i) Then
   If Consolida("D29", "E29", "D30", "E30", i, linha, "Terça Feira", "19:40-20:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Terça Feira 20:40 - 21:30
'-----------------------------
If verificaHorario("D31", "E31", "D32", "E32", i) Then
   If Consolida("D31", "E31", "D32", "E32", i, linha, "Terça Feira", "20:40-21:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Terça Feira 21:30 - 22:20
'-----------------------------
If verificaHorario("D33", "E33", "D34", "E34", i) Then
   If Consolida("D33", "E33", "D34", "E34", i, linha, "Terça Feira", "21:30-22:20") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Terça Feira 22:20 - 23:10
'-----------------------------
If verificaHorario("D35", "E35", "D36", "E36", i) Then
   If Consolida("D35", "E35", "D36", "E36", i, linha, "Terça Feira", "22:20-23:10") Then
    linha = linha + 1
    End If
End If


'Quarta Feira
'-----------------------------
'Manha
'-----------------------------
'Verificando Quarta Feira 08:00 - 08:50
'-----------------------------
If verificaHorario("F3", "G3", "F4", "G4", i) Then
    If Consolida("F3", "G3", "F4", "G4", i, linha, "Quarta Feira", "08:00-08:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quarta Feira 08:50 - 09:40
'-----------------------------
If verificaHorario("F5", "G5", "F6", "G6", i) Then
    If Consolida("F5", "G5", "F6", "G6", i, linha, "Quarta Feira", "08:50-09:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'VVerificando Quarta Feira 10:00 - 10:50
'-----------------------------
If verificaHorario("F7", "G7", "F8", "G8", i) Then
   If Consolida("F7", "G7", "F8", "G8", i, linha, "Quarta Feira", "10:00-10:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quarta Feira 10:50 - 11:40
'-----------------------------
If verificaHorario("F9", "G9", "F10", "G10", i) Then
   If Consolida("F7", "G7", "F8", "G8", i, linha, "Quarta Feira", "10:50-11:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quarta Feira 11:40 - 12:30
'-----------------------------
If verificaHorario("F11", "G11", "F12", "G12", i) Then
   If Consolida("F11", "G11", "F12", "G12", i, linha, "Quarta Feira", "11:40-12:30") Then
    linha = linha + 1
    End If
End If

'Noite
'-----------------------------
'Verificando Quarta Feira 18:00 - 18:50
'-----------------------------
If verificaHorario("F25", "G25", "F26", "G26", i) Then
   If Consolida("F25", "G25", "F26", "G26", i, linha, "Quarta Feira", "18:00-18:50") Then
    linha = linha + 1
    End If
End If
'-----------------------------
'Verificando Quarta Feira 18:50 - 19:40
'-----------------------------
If verificaHorario("F27", "G27", "F28", "G28", i) Then
   If Consolida("F27", "G27", "F28", "G28", i, linha, "Quarta Feira", "18:50-19:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quarta Feira  19:40 - 20:30
'-----------------------------
If verificaHorario("F29", "G29", "F30", "G30", i) Then
   If Consolida("F29", "G29", "F30", "G30", i, linha, "Quarta Feira", "19:40-20:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quarta Feira 20:40 - 21:30
'-----------------------------
If verificaHorario("F31", "G31", "F32", "G32", i) Then
   If Consolida("F31", "G31", "F32", "G32", i, linha, "Quarta Feira", "20:40-21:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quarta Feira 21:30 - 22:20
'-----------------------------
If verificaHorario("F33", "G33", "F34", "G34", i) Then
   If Consolida("F33", "G33", "F34", "G34", i, linha, "Quarta Feira", "21:30-22:20") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quarta Feira 22:20 - 23:10
'-----------------------------
If verificaHorario("F35", "G35", "F36", "G36", i) Then
   If Consolida("F35", "G35", "F36", "G36", i, linha, "Quarta Feira", "22:20-23:10") Then
    linha = linha + 1
    End If
End If


'Quinta Feira
'-----------------------------
'Manha
'-----------------------------
'Verificando Quinta Feira 08:00 - 08:50
'-----------------------------
If verificaHorario("H3", "I3", "H4", "I4", i) Then
    If Consolida("H3", "I3", "H4", "I4", i, linha, "Quinta Feira", "08:00-08:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quinta Feira 08:50 - 09:40
'-----------------------------
If verificaHorario("H5", "I5", "H6", "I6", i) Then
    If Consolida("H5", "I5", "H6", "I6", i, linha, "Quinta Feira", "08:50-09:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'VVerificando Quinta Feira 10:00 - 10:50
'-----------------------------
If verificaHorario("H7", "I7", "H8", "I8", i) Then
   If Consolida("H7", "I7", "H8", "I8", i, linha, "Quinta Feira", "10:00-10:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quinta Feira 10:50 - 11:40
'-----------------------------
If verificaHorario("H9", "I9", "H10", "I10", i) Then
   If Consolida("H7", "I7", "H8", "I8", i, linha, "Quinta Feira", "10:50-11:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quinta Feira 11:40 - 12:30
'-----------------------------
If verificaHorario("H11", "I11", "H12", "I12", i) Then
   If Consolida("H11", "I11", "H12", "I12", i, linha, "Quinta Feira", "11:40-12:30") Then
    linha = linha + 1
    End If
End If

'Noite
'-----------------------------
'Verificando Quinta Feira 18:00 - 18:50
'-----------------------------
If verificaHorario("H25", "I25", "H26", "I26", i) Then
   If Consolida("H25", "I25", "H26", "I26", i, linha, "Quinta Feira", "18:00-18:50") Then
    linha = linha + 1
    End If
End If
'-----------------------------
'Verificando Quinta Feira 18:50 - 19:40
'-----------------------------
If verificaHorario("H27", "I27", "H28", "I28", i) Then
   If Consolida("H27", "I27", "H28", "I28", i, linha, "Quinta Feira", "18:50-19:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quinta Feira  19:40 - 20:30
'-----------------------------
If verificaHorario("H29", "I29", "H30", "I30", i) Then
   If Consolida("H29", "I29", "H30", "I30", i, linha, "Quinta Feira", "19:40-20:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quinta Feira 20:40 - 21:30
'-----------------------------
If verificaHorario("H31", "I31", "H32", "I32", i) Then
   If Consolida("H31", "I31", "H32", "I32", i, linha, "Quinta Feira", "20:40-21:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quinta Feira 21:30 - 22:20
'-----------------------------
If verificaHorario("H33", "I33", "H34", "I34", i) Then
   If Consolida("H33", "I33", "H34", "I34", i, linha, "Quinta Feira", "21:30-22:20") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Quinta Feira 22:20 - 23:10
'-----------------------------
If verificaHorario("H35", "I35", "H36", "I36", i) Then
   If Consolida("H35", "I35", "H36", "I36", i, linha, "Quinta Feira", "22:20-23:10") Then
    linha = linha + 1
    End If
End If

'Sexta Feira
'-----------------------------
'Manha
'-----------------------------
'Verificando Sexta Feira 08:00 - 08:50
'-----------------------------
If verificaHorario("J3", "K3", "J4", "K4", i) Then
    If Consolida("J3", "K3", "J4", "K4", i, linha, "Sexta Feira", "08:00-08:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Sexta Feira 08:50 - 09:40
'-----------------------------
If verificaHorario("J5", "K5", "J6", "K6", i) Then
    If Consolida("J5", "K5", "J6", "K6", i, linha, "Sexta Feira", "08:50-09:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'VVerificando Sexta Feira 10:00 - 10:50
'-----------------------------
If verificaHorario("J7", "K7", "J8", "K8", i) Then
   If Consolida("J7", "K7", "J8", "K8", i, linha, "Sexta Feira", "10:00-10:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Sexta Feira 10:50 - 11:40
'-----------------------------
If verificaHorario("J9", "K9", "J10", "K10", i) Then
   If Consolida("J7", "K7", "J8", "K8", i, linha, "Sexta Feira", "10:50-11:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Sexta Feira 11:40 - 12:30
'-----------------------------
If verificaHorario("J11", "K11", "J12", "K12", i) Then
   If Consolida("J11", "K11", "J12", "K12", i, linha, "Sexta Feira", "11:40-12:30") Then
    linha = linha + 1
    End If
End If

'Noite
'-----------------------------
'Verificando Sexta Feira 18:00 - 18:50
'-----------------------------
If verificaHorario("J25", "K25", "J26", "K26", i) Then
   If Consolida("J25", "K25", "J26", "K26", i, linha, "Sexta Feira", "18:00-18:50") Then
    linha = linha + 1
    End If
End If
'-----------------------------
'Verificando Sexta Feira 18:50 - 19:40
'-----------------------------
If verificaHorario("J27", "K27", "J28", "K28", i) Then
   If Consolida("J27", "K27", "J28", "K28", i, linha, "Sexta Feira", "18:50-19:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Sexta Feira  19:40 - 20:30
'-----------------------------
If verificaHorario("J29", "K29", "J30", "K30", i) Then
   If Consolida("J29", "K29", "J30", "K30", i, linha, "Sexta Feira", "19:40-20:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Sexta Feira 20:40 - 21:30
'-----------------------------
If verificaHorario("J31", "K31", "J32", "K32", i) Then
   If Consolida("J31", "K31", "J32", "K32", i, linha, "Sexta Feira", "20:40-21:30") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Sexta Feira 21:30 - 22:20
'-----------------------------
If verificaHorario("J33", "K33", "J34", "K34", i) Then
   If Consolida("J33", "K33", "J34", "K34", i, linha, "Sexta Feira", "21:30-22:20") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando Sexta Feira 22:20 - 23:10
'-----------------------------
If verificaHorario("J35", "K35", "J36", "K36", i) Then
   If Consolida("J35", "K35", "J36", "K36", i, linha, "Sexta Feira", "22:20-23:10") Then
    linha = linha + 1
    End If
End If

'S?bado
'-----------------------------
'Manha
'-----------------------------
'Verificando S?bado 08:00 - 08:50
'-----------------------------
If verificaHorario("L3", "M3", "L4", "M4", i) Then
    If Consolida("L3", "M3", "L4", "M4", i, linha, "S?bado", "08:00-08:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando S?bado 08:50 - 09:40
'-----------------------------
If verificaHorario("L5", "M5", "L6", "M6", i) Then
    If Consolida("L5", "M5", "L6", "M6", i, linha, "S?bado", "08:50-09:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'VVerificando S?bado 10:00 - 10:50
'-----------------------------
If verificaHorario("L7", "M7", "L8", "M8", i) Then
   If Consolida("L7", "M7", "L8", "M8", i, linha, "S?bado", "10:00-10:50") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando S?bado 10:50 - 11:40
'-----------------------------
If verificaHorario("L9", "M9", "L10", "M10", i) Then
   If Consolida("L7", "M7", "L8", "M8", i, linha, "S?bado", "10:50-11:40") Then
    linha = linha + 1
    End If
End If

'-----------------------------
'Verificando S?bado 11:40 - 12:30
'-----------------------------
If verificaHorario("L11", "M11", "L12", "M12", i) Then
   If Consolida("L11", "M11", "L12", "M12", i, linha, "S?bado", "11:40-12:30") Then
    linha = linha + 1
    End If
End If



Next i

End Sub

Public Function verificaHorario(cell1 As String, cell2 As String, cell3 As String, cell4 As String, i) As Boolean
If Len(Worksheets(i).Range(cell1).Value) > 0 Then
    If Len(Worksheets(i).Range(cell2).Value) > 0 Then
        If Len(Worksheets(i).Range(cell3).Value) > 0 Then
            If Len(Worksheets(i).Range(cell4).Value) > 0 Then
                verificaHorario = True
            End If
        End If
    End If
End If
End Function

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

Function Turma(dados As String) As String
Turma = ExtrairNumeros(dados)
End Function

Function curso(dados As String) As String
C = UCase(dados)
Nome = ""
If C Like "K*" Then
    Nome = "Engenharia Elétrica"
ElseIf C Like "AU*" Then
    Nome = "Arquitetura e Urbanismo"
ElseIf C Like "A*" Then
    Nome = "Administração"
ElseIf C Like "C*" Then
    Nome = "Ciência Contabeis"
ElseIf C Like "M*" Then
    Nome = "Comunicação Social: Multimídia"
ElseIf C Like "D*" Then
    Nome = "Design de Produto"
ElseIf C Like "J*" Then
    Nome = "Engenharia Ambiental"
ElseIf C Like "EC*" Then
    Nome = "Engenharia Civil"
ElseIf C Like "C*" Then
    Nome = "Engenharia de Computação"
ElseIf C Like "EP*" Then
    Nome = "Engenharia Produção"
ElseIf C Like "EM*" Then
    Nome = "Engenharia Mecânica"
ElseIf C Like "P*" Then
    Nome = "Engenharia Controle e Automação"
ElseIf C Like "JD*" Then
    Nome = "Jogos Digitais"
ElseIf C Like "F*" Then
    Nome = "Manunteção Industrial"
ElseIf C Like "Q*" Then
    Nome = "Rede de Computadores"
ElseIf C Like "L*" Then
    Nome = "Seguranção do Trabalho"
ElseIf C Like "I*" Then
    Nome = "Sistemas de Informação"
Else
Nome = "Sem Curso"
End If
curso = Nome
End Function

Function Consolida(codigodisciplina As String, Classe, periodo As String, disciplina As String, indicePlanilha, linha As Integer, diaDaSemana, horario) As Boolean
    Dim M As Worksheet
    Set M = Sheets(1)
    M.Cells(linha, 1).Value = curso(Worksheets(indicePlanilha).Range(Classe).Value)
    M.Cells(linha, 2).Value = UCase(Worksheets(indicePlanilha).Range(codigodisciplina).Value)
    M.Cells(linha, 3).Value = Worksheets(indicePlanilha).Range(disciplina).Value
    M.Cells(linha, 4).Value = Worksheets(indicePlanilha).Range("B1").Value
    M.Cells(linha, 5).Value = Turma(Worksheets(indicePlanilha).Range(Classe).Value)
    M.Cells(linha, 7).Value = diaDaSemana
    M.Cells(linha, 8).Value = horario
    Consolida = True
End Function



Private Sub Worksheet_SelectionChange(ByVal Target As Range)

End Sub
