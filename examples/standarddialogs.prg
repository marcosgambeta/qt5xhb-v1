//
// Qt5xHb Project - Example Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// Baseado no exemplo "Standard Dialogs" do Qt Framework

#include "qt5xhb.ch"
#include "hbclass.ch"

#define MESSAGE "<p>Message boxes have a caption, a text, " + ;
                "and any number of buttons, each with standard or custom texts." + ;
                "<p>Click a button to close the message box. Pressing the Esc button " + ;
                "will activate the detected escape button (if any)."

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

CLASS Dialog INHERIT QWidget

   DATA oNative              // QCheckBox

   DATA oIntegerLabel        // QLabel
   DATA oDoubleLabel         // QLabel
   DATA oItemLabel           // QLabel
   DATA oTextLabel           // QLabel
   DATA oColorLabel          // QLabel
   DATA oFontLabel           // QLabel
   DATA oDirectoryLabel      // QLabel
   DATA oOpenFileNameLabel   // QLabel
   DATA oOpenFileNamesLabel  // QLabel
   DATA oSaveFileNameLabel   // QLabel
   DATA oCriticalLabel       // QLabel
   DATA oInformationLabel    // QLabel
   DATA oQuestionLabel       // QLabel
   DATA oWarningLabel        // QLabel
   DATA oErrorLabel          // QLabel

   DATA oIntegerButton       // QPushButton
   DATA oDoubleButton        // QPushButton
   DATA oItemButton          // QPushButton
   DATA oTextButton          // QPushButton
   DATA oColorButton         // QPushButton
   DATA oFontButton          // QPushButton
   DATA oDirectoryButton     // QPushButton
   DATA oOpenFileNameButton  // QPushButton
   DATA oOpenFileNamesButton // QPushButton
   DATA oSaveFileNameButton  // QPushButton
   DATA oCriticalButton      // QPushButton
   DATA oInformationButton   // QPushButton
   DATA oQuestionButton      // QPushButton
   DATA oWarningButton       // QPushButton
   DATA oErrorButton         // QPushButton

   DATA oErrorMessageDialog  // QErrorMessage

   DATA cOpenFilesPath INIT ""

   METHOD new(oParent)
   METHOD setInteger()
   METHOD setDouble()
   METHOD setItem()
   METHOD setText()
   METHOD setColor()
   METHOD setFont()
   METHOD setExistingDirectory()
   METHOD setOpenFileName()
   METHOD setOpenFileNames()
   METHOD setSaveFileName()
   METHOD criticalMessage()
   METHOD informationMessage()
   METHOD questionMessage()
   METHOD warningMessage()
   METHOD errorMessage()

   METHOD delete()

END CLASS

METHOD new(oParent) CLASS Dialog

   LOCAL nFrameStyle
   LOCAL oLayout

   ::super:new(oParent)

   ::oErrorMessageDialog := QErrorMessage():new(SELF)

   nFrameStyle := QFrame_Sunken + QFrame_Panel

   ::oIntegerLabel := QLabel():new()
   ::oIntegerLabel:setFrameStyle(nFrameStyle)
   ::oIntegerButton := QPushButton():new("QInputDialog::get&Int()")

   ::oDoubleLabel := QLabel():new()
   ::oDoubleLabel:setFrameStyle(nFrameStyle)
   ::oDoubleButton := QPushButton():new("QInputDialog::get&Double()")

   ::oItemLabel := QLabel():new()
   ::oItemLabel:setFrameStyle(nFrameStyle)
   ::oItemButton := QPushButton():new("QInputDialog::getIte&m()")

   ::oTextLabel := QLabel():new()
   ::oTextLabel:setFrameStyle(nFrameStyle)
   ::oTextButton := QPushButton():new("QInputDialog::get&Text()")

   ::oColorLabel := QLabel():new()
   ::oColorLabel:setFrameStyle(nFrameStyle)
   ::oColorButton := QPushButton():new("QColorDialog::get&Color()")

   ::oFontLabel := QLabel():new()
   ::oFontLabel:setFrameStyle(nFrameStyle)
   ::oFontButton := QPushButton():new("QFontDialog::get&Font()")

   ::oDirectoryLabel := QLabel():new()
   ::oDirectoryLabel:setFrameStyle(nFrameStyle)
   ::oDirectoryButton := QPushButton():new("QFileDialog::getE&xistingDirectory()")

   ::oOpenFileNameLabel := QLabel():new()
   ::oOpenFileNameLabel:setFrameStyle(nFrameStyle)
   ::oOpenFileNameButton := QPushButton():new("QFileDialog::get&OpenFileName()")

   ::oOpenFileNamesLabel := QLabel():new()
   ::oOpenFileNamesLabel:setFrameStyle(nFrameStyle)
   ::oOpenFileNamesButton := QPushButton():new("QFileDialog::&getOpenFileNames()")

   ::oSaveFileNameLabel := QLabel():new()
   ::oSaveFileNameLabel:setFrameStyle(nFrameStyle)
   ::oSaveFileNameButton := QPushButton():new("QFileDialog::get&SaveFileName()")

   ::oCriticalLabel := QLabel():new()
   ::oCriticalLabel:setFrameStyle(nFrameStyle)
   ::oCriticalButton := QPushButton():new("QMessageBox::critica&l()")

   ::oInformationLabel := QLabel():new()
   ::oInformationLabel:setFrameStyle(nFrameStyle)
   ::oInformationButton := QPushButton():new("QMessageBox::i&nformation()")

   ::oQuestionLabel = QLabel():new()
   ::oQuestionLabel:setFrameStyle(nFrameStyle)
   ::oQuestionButton := QPushButton():new("QMessageBox::&question()")

   ::oWarningLabel := QLabel():new()
   ::oWarningLabel:setFrameStyle(nFrameStyle)
   ::oWarningButton := QPushButton():new("QMessageBox::&warning()")

   ::oErrorLabel := QLabel():new()
   ::oErrorLabel:setFrameStyle(nFrameStyle)
   ::oErrorButton := QPushButton():new("QErrorMessage::showM&essage()")

   ::oIntegerButton:onClicked({||::setInteger()})
   ::oDoubleButton:onClicked({||::setDouble()})
   ::oItemButton:onClicked({||::setItem()})
   ::oTextButton:onClicked({||::setText()})
   ::oColorButton:onClicked({||::setColor()})
   ::oFontButton:onClicked({||::setFont()})
   ::oDirectoryButton:onClicked({||::setExistingDirectory()})
   ::oOpenFileNameButton:onClicked({||::setOpenFileName()})
   ::oOpenFileNamesButton:onClicked({||::setOpenFileNames()})
   ::oSaveFileNameButton:onClicked({||::setSaveFileName()})
   ::oCriticalButton:onClicked({||::criticalMessage()})
   ::oInformationButton:onClicked({||::informationMessage()})
   ::oQuestionButton:onClicked({||::questionMessage()})
   ::oWarningButton:onClicked({||::warningMessage()})
   ::oErrorButton:onClicked({||::errorMessage()})

   ::oNative := QCheckBox():new(SELF)
   ::oNative:setText("Use native file dialog.")
   ::oNative:setChecked(.T.)

   oLayout := QGridLayout():new()
   oLayout:setColumnStretch(1, 1)
   oLayout:setColumnMinimumWidth(1, 250)
   oLayout:addWidget(::oIntegerButton, 0, 0)
   oLayout:addWidget(::oIntegerLabel, 0, 1)
   oLayout:addWidget(::oDoubleButton, 1, 0)
   oLayout:addWidget(::oDoubleLabel, 1, 1)
   oLayout:addWidget(::oItemButton, 2, 0)
   oLayout:addWidget(::oitemLabel, 2, 1)
   oLayout:addWidget(::oTextButton, 3, 0)
   oLayout:addWidget(::oTextLabel, 3, 1)
   oLayout:addWidget(::oColorButton, 4, 0)
   oLayout:addWidget(::oColorLabel, 4, 1)
   oLayout:addWidget(::oFontButton, 5, 0)
   oLayout:addWidget(::oFontLabel, 5, 1)
   oLayout:addWidget(::oDirectoryButton, 6, 0)
   oLayout:addWidget(::oDirectoryLabel, 6, 1)
   oLayout:addWidget(::oOpenFileNameButton, 7, 0)
   oLayout:addWidget(::oOpenFileNameLabel, 7, 1)
   oLayout:addWidget(::oOpenFileNamesButton, 8, 0)
   oLayout:addWidget(::oOpenFileNamesLabel, 8, 1)
   oLayout:addWidget(::oSaveFileNameButton, 9, 0)
   oLayout:addWidget(::oSaveFileNameLabel, 9, 1)
   oLayout:addWidget(::oCriticalButton, 10, 0)
   oLayout:addWidget(::oCriticalLabel, 10, 1)
   oLayout:addWidget(::oInformationButton, 11, 0)
   oLayout:addWidget(::oInformationLabel, 11, 1)
   oLayout:addWidget(::oQuestionButton, 12, 0)
   oLayout:addWidget(::oQuestionLabel, 12, 1)
   oLayout:addWidget(::oWarningButton, 13, 0)
   oLayout:addWidget(::oWarningLabel, 13, 1)
   oLayout:addWidget(::oErrorButton, 14, 0)
   oLayout:addWidget(::oErrorLabel, 14, 1)
   oLayout:addWidget(::oNative, 15, 0)
   ::setLayout(oLayout)

   ::setWindowTitle("Standard Dialogs")

RETURN SELF

METHOD setInteger() CLASS Dialog

   LOCAL lOk := .F.
   LOCAL nValue

   nValue := QInputDialog():getInt(SELF, "QInputDialog::getInteger()", "Percentage:", 25, 0, 100, 1, @lOk)

   IF lOk
      ::oIntegerLabel:setText(AllTrim(Str(nValue)))
   ENDIF

RETURN NIL

METHOD setDouble() CLASS Dialog

   LOCAL lOk := .F.
   LOCAL nValue

   nValue := QInputDialog():getDouble(SELF, "QInputDialog::getDouble()", "Amount:", 37.56, -10000, 10000, 2, @lOk)

   IF lOk
      ::oDoubleLabel:setText(AllTrim(Str(nValue)))
   ENDIF

RETURN NIL

METHOD setItem() CLASS Dialog

   LOCAL aItems := {"Spring", "Summer", "Fall", "Winter"}
   LOCAL lOk := .F.
   LOCAL cItem

   cItem := QInputDialog():getItem(SELF, "QInputDialog::getItem()", "Season:", aItems, 0, .F., @lOk)

   IF lOk .AND. !Empty(cItem)
      ::oItemLabel:setText(cItem)
   ENDIF

RETURN NIL

METHOD setText() CLASS Dialog

   LOCAL lOk := .F.
   LOCAL cText

   cText := QInputDialog():getText(SELF, "QInputDialog::getText()", "User name:", QLineEdit_Normal, QDir():home():dirName(), @lOk)

   IF lOk .AND. !Empty(cText)
      ::oTextLabel:setText(cText)
   ENDIF

RETURN NIL

METHOD setColor() CLASS Dialog

   LOCAL oColor

   IF ::oNative:isChecked()
      oColor := QColorDialog():getColor(QColor():new("green"), SELF)
   ELSE
      oColor := QColorDialog():getColor(QColor():new("green"), SELF, "Select Color", QColorDialog_DontUseNativeDialog)
   ENDIF

   IF oColor:isValid()
      ::oColorLabel:setText(oColor:name())
      ::oColorLabel:setPalette(QPalette():new(oColor))
      ::oColorLabel:setAutoFillBackground(.T.)
   ENDIF

RETURN NIL

METHOD setFont() CLASS Dialog

   LOCAL lOk := .F.
   LOCAL oFont

   oFont := QFontDialog():getFont(@lOk, QFont():new(::oFontLabel:text()), SELF)

   IF lOk
      ::oFontLabel:setText(oFont:key())
      ::oFontLabel:setFont(oFont)
   ENDIF

RETURN NIL

METHOD setExistingDirectory() CLASS Dialog

   LOCAL nOptions := QFileDialog_DontResolveSymlinks + QFileDialog_ShowDirsOnly
   LOCAl cDirectory

   IF !::oNative:isChecked()
      nOptions -= QFileDialog_DontUseNativeDialog
   ENDIF

   cDirectory := QFileDialog():getExistingDirectory(SELF, "QFileDialog::getExistingDirectory()", ::oDirectoryLabel:text(), nOptions)

   IF !Empty(cDirectory)
      ::oDirectoryLabel:setText(cDirectory)
   ENDIF

RETURN NIL

METHOD setOpenFileName() CLASS Dialog

   LOCAL nOptions := 0
   LOCAL cSelectedFilter := ""
   LOCAL cFileName

   IF !::oNative:isChecked()
      nOptions -= QFileDialog_DontUseNativeDialog
   ENDIF

   cFileName := QFileDialog():getOpenFileName(SELF, "QFileDialog::getOpenFileName()", ::oOpenFileNameLabel:text(), "All Files (*);;Text Files (*.txt)", @cSelectedFilter, nOptions)

   IF !Empty(cFileName)
      ::oOpenFileNameLabel:setText(cFileName)
   ENDIF

RETURN NIL

METHOD setOpenFileNames() CLASS Dialog

   LOCAL nOptions := 0
   LOCAL cSelectedFilter := ""
   LOCAL aFiles

   IF !::oNative:isChecked()
      nOptions -= QFileDialog_DontUseNativeDialog
   ENDIF

   aFiles := QFileDialog():getOpenFileNames(SELF, "QFileDialog::getOpenFileNames()", ::cOpenFilesPath, "All Files (*);;Text Files (*.txt)", @cSelectedFilter, nOptions)

   IF Len(afiles) > 0
      ::cOpenFilesPath := aFiles[1]
      ::oOpenFileNamesLabel:setText("[" + Join(aFiles,", ") + "]")
   ENDIF

RETURN NIL

STATIC FUNCTION Join(aItens, cDelim)

   LOCAL nIndex
   LOCAL cRet := ""

   FOR nIndex := 1 TO Len(aItens)
      IF Empty(cRet)
         cRet += aItens[nIndex]
      ELSE
         cRet += cDelim + aItens[nIndex]
      ENDIF
   NEXT nIndex

RETURN cRet

METHOD setSaveFileName() CLASS Dialog

   LOCAL nOptions := 0
   LOCAL cSelectedFilter := ""
   LOCAL cFileName

   IF !::oNative:isChecked()
      nOptions -= QFileDialog_DontUseNativeDialog
   ENDIF

   cFileName := QFileDialog():getSaveFileName(SELF, "QFileDialog::getSaveFileName()", ::oSaveFileNameLabel:text(), "All Files (*);;Text Files (*.txt)", @cSelectedFilter, nOptions)

   IF !Empty(cFileName)
      ::oSaveFileNameLabel:setText(cFileName)
   ENDIF

RETURN NIL

METHOD criticalMessage() CLASS Dialog

   LOCAL nReply

   nReply := QMessageBox():critical(SELF, "QMessageBox::critical()", MESSAGE, QMessageBox_Abort + QMessageBox_Retry + QMessageBox_Ignore)

   IF nReply == QMessageBox_Abort
      ::oCriticalLabel:setText("Abort")
   ELSEIF nReply == QMessageBox_Retry
      ::oCriticalLabel:setText("Retry")
   ELSE
      ::oCriticalLabel:setText("Ignore")
   ENDIF

RETURN NIL

METHOD informationMessage() CLASS Dialog

   LOCAL nReply

   nReply := QMessageBox():information(SELF, "QMessageBox::information()", MESSAGE)

   IF nReply == QMessageBox_Ok
      ::oInformationLabel:setText("OK")
   ELSE
      ::oInformationLabel:setText("Escape")
   ENDIF

RETURN NIL

METHOD questionMessage() CLASS Dialog

   LOCAL nReply

   nReply := QMessageBox():question(SELF, "QMessageBox::question()", MESSAGE, QMessageBox_Yes + QMessageBox_No + QMessageBox_Cancel)

   IF nReply == QMessageBox_Yes
      ::oQuestionLabel:setText("Yes")
   ELSEIF nReply == QMessageBox_No
      ::oQuestionLabel:setText("No")
   ELSE
      ::oQuestionLabel:setText("Cancel")
   ENDIF

RETURN NIL

METHOD warningMessage() CLASS Dialog

   LOCAL oMsgBox

   oMsgBox := QMessageBox():new(QMessageBox_Warning, "QMessageBox::warning()", MESSAGE, 0, SELF)
   oMsgBox:addButton("Save &Again", QMessageBox_AcceptRole)
   oMsgBox:addButton("&Continue", QMessageBox_RejectRole)

   IF oMsgBox:exec() == QMessageBox_AcceptRole
      ::oWarningLabel:setText("Save Again")
   ELSE
      ::oWarningLabel:setText("Continue")
   ENDIF

RETURN NIL

METHOD errorMessage() CLASS Dialog

   ::oErrorMessageDialog:showMessage(;
            "This dialog shows and remembers error messages. "+;
            "If the checkbox is checked (as it is by default), "+;
            "the shown message will be shown again, "+;
            "but if the user unchecks the box the message "+;
            "will not appear again if QErrorMessage::showMessage() "+;
            "is called with the same message.")

   ::oErrorLabel:setText("If the box is unchecked, the message won't appear again.")

RETURN NIL

METHOD delete() CLASS Dialog

   // desconecta sinais
   ::oIntegerButton:onClicked()
   ::oDoubleButton:onClicked()
   ::oItemButton:onClicked()
   ::oTextButton:onClicked()
   ::oColorButton:onClicked()
   ::oFontButton:onClicked()
   ::oDirectoryButton:onClicked()
   ::oOpenFileNameButton:onClicked()
   ::oOpenFileNamesButton:onClicked()
   ::oSaveFileNameButton:onClicked()
   ::oCriticalButton:onClicked()
   ::oInformationButton:onClicked()
   ::oQuestionButton:onClicked()
   ::oWarningButton:onClicked()
   ::oErrorButton:onClicked()

   // destrói objeto
   ::super:delete()

RETURN NIL
