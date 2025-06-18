//
// Qt5xHb Project - Example Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// C�lculo da diferen�a entre duas datas

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

   // define o t�tulo da janela
   oWindow:setWindowTitle("C�lculo da diferen�a entre datas")

   // cria dois objetos (calend�rios) da classe QCalendarWidget
   oCalendar1 := QCalendarWidget():new()
   oCalendar2 := QCalendarWidget():new()

   // cria um objeto (bot�o) da classe QPushButton
   oButton := QPushButton():new("Calcular diferen�a")

   // cria um objeto, da classe QGridLayout, tendo o objeto oWindow como "pai"
   oGrid := QGridLayout():new(oWindow)

   // adiciona os dois calend�rios e o bot�o ao objeto oGrid

   // primeiro calend�rio na linha 0 e coluna 0
   oGrid:addWidget(oCalendar1, 0, 0)

   // segundo calend�rio na linha 0 e coluna 1
   oGrid:addWidget(oCalendar2, 0, 1)

   // bot�o na linha 1 e coluna 0, ocupando 1 linha e 2 colunas
   oGrid:addWidget(oButton, 1, 0, 1, 2)

   // define a a��o executada pelo bot�o quando clicado:
   // chamar a fun��o CalculaDiferenca, passandos os objetos oCalendar1 e
   // oCalendar2 como par�metros
   oButton:onClicked({||CalculaDiferenca(oCalendar1, oCalendar2)})

   // deixa a janela vis�vel, incluindo seu conte�do
   oWindow:show()

   // inicia o processamento de eventos
   oApp:exec()

   // destr�i o objeto oWindow
   oWindow:delete()

   // destr�i o objeto oApp
   oApp:delete()

RETURN

// A fun��o CalculaDiferenca obt�m as datas dos calend�rios
// e mostra a diferen�a entre as duas, usando uma janela de
// mensagem.

STATIC FUNCTION CalculaDiferenca(oCalendar1, oCalendar2)

   LOCAL oMessageBox
   LOCAL oData1
   LOCAL oData2
   LOCAL nDias

   // obt�m as datas selecionadas em cada um dos calend�rios (note que o m�todo
   // selectDate, da classe QCalendarWidget, retorna um objeto da classe QDate)
   oData1 := oCalendar1:selectedDate()
   oData2 := oCalendar2:selectedDate()

   // obt�m o n�mero de dias entre as duas datas atrav�s do m�todo daysTo
   // da classe QDate
   nDias := oData1:daysTo(oData2)

   // cria um objeto (uma janela de mensagem) da classe QMessageBox
   oMessageBox := QMessageBox():new()

   // define o t�tulo da janela de mensagem
   oMessageBox:setWindowTitle("Diferen�a entre as datas")

   // define o texto da janela de mensagem
   oMessageBox:setInformativeText("A diferen�a entre as datas � de " + AllTrim(Str(nDias)) + " dia(s)")

   // mostra a janela de mensagem
   oMessageBox:exec()

   // destr�i o objeto oMessageBox
   oMessageBox:delete()

RETURN NIL
