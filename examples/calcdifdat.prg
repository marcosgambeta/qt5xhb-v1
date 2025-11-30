//
// Qt5xHb Project - Example Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// Cálculo da diferença entre duas datas

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oCalendar1
   LOCAL oCalendar2
   LOCAL oButton
   LOCAL oGrid

   // cria um objeto da classe QApplication
   oApp := QApplication():new()

   // cria um objeto (uma janela) da classe QWidget
   oWindow := QWidget():new()

   // define o título da janela
   oWindow:setWindowTitle("Cálculo da diferença entre datas")

   // cria dois objetos (calendários) da classe QCalendarWidget
   oCalendar1 := QCalendarWidget():new()
   oCalendar2 := QCalendarWidget():new()

   // cria um objeto (botão) da classe QPushButton
   oButton := QPushButton():new("Calcular diferença")

   // cria um objeto, da classe QGridLayout, tendo o objeto oWindow como "pai"
   oGrid := QGridLayout():new(oWindow)

   // adiciona os dois calendários e o botão ao objeto oGrid

   // primeiro calendário na linha 0 e coluna 0
   oGrid:addWidget(oCalendar1, 0, 0)

   // segundo calendário na linha 0 e coluna 1
   oGrid:addWidget(oCalendar2, 0, 1)

   // botão na linha 1 e coluna 0, ocupando 1 linha e 2 colunas
   oGrid:addWidget(oButton, 1, 0, 1, 2)

   // define a ação executada pelo botão quando clicado:
   // chamar a função CalculaDiferenca, passandos os objetos oCalendar1 e
   // oCalendar2 como parâmetros
   oButton:onClicked({||CalculaDiferenca(oCalendar1, oCalendar2)})

   // deixa a janela visível, incluindo seu conte£do
   oWindow:show()

   // inicia o processamento de eventos
   oApp:exec()

   // destrói o objeto oWindow
   oWindow:delete()

   // destrói o objeto oApp
   oApp:delete()

RETURN

// A função CalculaDiferenca obtém as datas dos calendários
// e mostra a diferença entre as duas, usando uma janela de
// mensagem.

STATIC FUNCTION CalculaDiferenca(oCalendar1, oCalendar2)

   LOCAL oMessageBox
   LOCAL oData1
   LOCAL oData2
   LOCAL nDias

   // obtém as datas selecionadas em cada um dos calendários (note que o método
   // selectDate, da classe QCalendarWidget, retorna um objeto da classe QDate)
   oData1 := oCalendar1:selectedDate()
   oData2 := oCalendar2:selectedDate()

   // obtém o número de dias entre as duas datas através do método daysTo
   // da classe QDate
   nDias := oData1:daysTo(oData2)

   // cria um objeto (uma janela de mensagem) da classe QMessageBox
   oMessageBox := QMessageBox():new()

   // define o título da janela de mensagem
   oMessageBox:setWindowTitle("Diferença entre as datas")

   // define o texto da janela de mensagem
   oMessageBox:setInformativeText("A diferença entre as datas é de " + alltrim(str(nDias)) + " dia(s)")

   // mostra a janela de mensagem
   oMessageBox:exec()

   // destrói o objeto oMessageBox
   oMessageBox:delete()

RETURN NIL
