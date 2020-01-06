/*

  Qt5xHb Project - Example Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

/*
  Baseado no exemplo "Extension" do Qt Framework
*/

#include "qt5xhb.ch"
#include "hbclass.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog

   oApp := QApplication():new()

   oDialog := FindDialog():new()

   oDialog:show()

   oApp:exec()

   oDialog:delete()

   oApp:delete()

RETURN

CLASS FindDialog INHERIT QDialog

   DATA oLabel                   // objeto da classe QLabel
   DATA oLineEdit                // objeto da classe QLineEdit
   DATA oCaseCheckBox            // objeto da classe QCheckBox
   DATA oFromStartCheckBox       // objeto da classe QCheckBox
   DATA oWholeWordsCheckBox      // objeto da classe QCheckBox
   DATA oSearchSelectionCheckBox // objeto da classe QCheckBox
   DATA oBackwardCheckBox        // objeto da classe QCheckBox
   DATA oButtonBox               // objeto da classe QDialogButtonBox
   DATA oFindButton              // objeto da classe QPushButton
   DATA oMoreButton              // objeto da classe QPushButton
   DATA oExtension               // objeto da classe QWidget

   METHOD new (oParent)

END CLASS

METHOD new (oParent) CLASS FindDialog

   LOCAL oExtensionLayout
   LOCAL oTopLeftLayout
   LOCAL oLeftLayout
   LOCAL oMainLayout

   ::super:new(oParent)

   ::oLabel := QLabel():new("Find &what:")
   ::oLineEdit := QLineEdit():new()
   ::oLabel:setBuddy(::oLineEdit)

   ::oCaseCheckBox := QCheckBox():new("Match &case")
   ::oFromStartCheckBox := QCheckBox():new("Search from &start")
   ::oFromStartCheckBox:setChecked(.T.)

   ::oFindButton := QPushButton():new("&Find")
   ::oFindButton:setDefault(.T.)

   ::oMoreButton := QPushButton():new("&More")
   ::oMoreButton:setCheckable(.T.)
   ::oMoreButton:setAutoDefault(.F.)

   ::oExtension := QWidget():new()

   ::oWholeWordsCheckBox := QCheckBox():new("&Whole words")
   ::oBackwardCheckBox := QCheckBox():new("Search &backward")
   ::oSearchSelectionCheckBox := QCheckBox():new("Search se&lection")

   ::oButtonBox := QDialogButtonBox():new(Qt_Vertical)
   ::oButtonBox:addButton(::oFindButton, QDialogButtonBox_ActionRole)
   ::oButtonBox:addButton(::oMoreButton, QDialogButtonBox_ActionRole)

   ::oMoreButton:onToggled({|pWidget,lValue|HB_SYMBOL_UNUSED(pWidget),::oExtension:setVisible(lValue)})

   oExtensionLayout := QVBoxLayout():new()
   oExtensionLayout:addWidget(::oWholeWordsCheckBox)
   oExtensionLayout:addWidget(::oBackwardCheckBox)
   oExtensionLayout:addWidget(::oSearchSelectionCheckBox)
   ::oExtension:setLayout(oExtensionLayout)

   oTopLeftLayout := QHBoxLayout():new()
   oTopLeftLayout:addWidget(::oLabel)
   oTopLeftLayout:addWidget(::oLineEdit)

   oLeftLayout := QVBoxLayout():new()
   oLeftLayout:addLayout(oTopLeftLayout)
   oLeftLayout:addWidget(::oCaseCheckBox)
   oLeftLayout:addWidget(::oFromStartCheckBox)

   oMainLayout := QGridLayout():new()
   oMainLayout:setSizeConstraint(QLayout_SetFixedSize)
   oMainLayout:addLayout(oLeftLayout, 0, 0)
   oMainLayout:addWidget(::oButtonBox, 0, 1)
   oMainLayout:addWidget(::oExtension, 1, 0, 1, 2)
   oMainLayout:setRowStretch(2, 1)

   ::setLayout(oMainLayout)

   ::setWindowTitle("Extension")
   ::oExtension:hide()

RETURN SELF
