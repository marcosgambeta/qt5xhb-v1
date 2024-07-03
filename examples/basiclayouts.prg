//
// Qt5xHb Project - Example Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

/*
  Exemplo de uso de leiautes
  Baseado no exemplo "Basic Layouts" do Qt Framework
*/

#include "qt5xhb.ch"
#include "hbclass.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oDialog

   oApp := QApplication():new()

   oDialog := Dialog():new()

   oDialog:show()

   oApp:exec()

   oDialog:delete()

   oApp:delete()

RETURN

#define NumGridRows 3
#define NumButtons  4

CLASS Dialog INHERIT QDialog

   DATA oMenuBar                           // QMenuBar
   DATA oHorizontalGroupBox                // QGroupBox
   DATA oGridGroupBox                      // QGroupBox
   DATA oFormGroupBox                      // QGroupBox
   DATA oSmallEditor                       // QTextEdit
   DATA oBigEditor                         // QTextEdit
   DATA aLabels INIT array(NumGridRows)    // QLabel
   DATA aLineEdits INIT array(NumGridRows) // QLineEdit
   DATA aButtons INIT array(NumButtons)    // QPushButton
   DATA oButtonBox                         // QDialogButtonBox
   DATA oFileMenu                          // QMenu
   DATA oExitAction                        // QAction

   METHOD new()
   METHOD createMenu()
   METHOD createHorizontalGroupBox()
   METHOD createGridGroupBox()
   METHOD createFormGroupBox()
   METHOD delete()

END CLASS

METHOD new() CLASS Dialog

   LOCAL oMainLayout

   ::super:new()

   ::createMenu()
   ::createHorizontalGroupBox()
   ::createGridGroupBox()
   ::createFormGroupBox()

   ::oBigEditor := QTextEdit():new()
   ::oBigEditor:setPlainText("This widget takes up all the remaining space in the top-level layout.")

   ::oButtonBox := QDialogButtonBox():new(QDialogButtonBox_Ok + QDialogButtonBox_Cancel, Qt_Horizontal)

   ::oButtonBox:onAccepted({||::accept()})
   ::oButtonBox:onRejected({||::reject()})

   oMainLayout := QVBoxLayout():new()
   oMainLayout:setMenuBar(::oMenuBar)
   oMainLayout:addWidget(::oHorizontalGroupBox)
   oMainLayout:addWidget(::oGridGroupBox)
   oMainLayout:addWidget(::oFormGroupBox)
   oMainLayout:addWidget(::oBigEditor)
   oMainLayout:addWidget(::oButtonBox)
   ::setLayout(oMainLayout)

   ::setWindowTitle("Basic Layouts")

RETURN SELF

METHOD createMenu() CLASS Dialog

   ::oMenuBar := QMenuBar():new()

   ::oFileMenu := QMenu():new("&File", SELF)
   ::oExitAction := ::oFileMenu:addAction("E&xit")
   ::oMenuBar:addMenu(::oFileMenu)

   ::oExitAction:onTriggered({||::accept()})

RETURN NIL

METHOD createHorizontalGroupBox() CLASS Dialog

   LOCAL oLayout
   LOCAL nIndex

   ::oHorizontalGroupBox := QGroupBox():new("Horizontal layout")
   oLayout := QHBoxLayout():new()

   FOR nIndex := 1 TO NumButtons
      ::aButtons[nIndex] := QPushButton():new("Button " + alltrim(str(nIndex)))
      oLayout:addWidget(::aButtons[nIndex])
   NEXT nIndex

   ::oHorizontalGroupBox:setLayout(oLayout)

RETURN NIL

METHOD createGridGroupBox() CLASS Dialog

   LOCAL oLayout
   LOCAL nIndex

   ::oGridGroupBox := QGroupBox():new("Grid layout")
   oLayout := QGridLayout():new()

   FOR nIndex := 1 TO NumGridRows
      ::aLabels[nIndex] := QLabel():new("Line " + alltrim(str(nIndex)) + ":")
      ::aLineEdits[nIndex] := QLineEdit():new()
      oLayout:addWidget(::aLabels[nIndex], nIndex, 0)
      oLayout:addWidget(::aLineEdits[nIndex], nIndex, 1)
   NEXT nIndex

   ::oSmallEditor := QTextEdit():new()
   ::oSmallEditor:setPlainText("This widget takes up about two thirds of the grid layout.")
   oLayout:addWidget(::oSmallEditor, 0, 2, 4, 1)

   oLayout:setColumnStretch(1, 10)
   oLayout:setColumnStretch(2, 20)
   ::oGridGroupBox:setLayout(oLayout)

RETURN NIL

METHOD createFormGroupBox() CLASS Dialog

   LOCAL oLayout

   ::oFormGroupBox := QGroupBox():new("Form layout")
   oLayout := QFormLayout():new()
   oLayout:addRow(QLabel():new("Line 1:"), QLineEdit():new())
   oLayout:addRow(QLabel():new("Line 2, long text:"), QComboBox():new())
   oLayout:addRow(QLabel():new("Line 3:"), QSpinBox():new())
   ::oFormGroupBox:setLayout(oLayout)

RETURN NIL

METHOD delete() CLASS Dialog

   // desconecta sinais
   ::oButtonBox:onAccepted()
   ::oButtonBox:onRejected()
   ::oExitAction:onTriggered()

   // destroi o objeto
   ::super:delete()

RETURN NIL
