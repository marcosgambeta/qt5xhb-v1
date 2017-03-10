/*

  Qt5xHb Project - Example Program

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt5xhb.ch"
#include "hbclass.ch"

PROCEDURE Main (cFileName)

   LOCAL oApp
   LOCAL oTabDialog

   IF cFileName == NIL
      cFileName := "."
   ENDIF

   oApp := QApplication():new()

   oTabDialog := TabDialog():new(cFileName)

   oTabDialog:show()

   oApp:exec()

   oTabDialog:delete()

   oApp:delete()

RETURN

// Classe GeneralTab

CLASS GeneralTab INHERIT QWidget

   METHOD new (oFileInfo, oParent)

END CLASS

METHOD new (oFileInfo, oParent) CLASS GeneralTab

   LOCAL oFileNameLabel
   LOCAL oFileNameEdit
   LOCAL oPathLabel
   LOCAL oPathValueLabel
   LOCAL oSizeLabel
   LOCAL oSizeValueLabel
   LOCAL nSize
   LOCAL oLastReadLabel
   LOCAL oLastReadValueLabel
   LOCAL oLastModLabel
   LOCAL oLastModValueLabel
   LOCAL oMainLayout

   ::super:new(oParent)

   oFileNameLabel :=  QLabel():new("File Name:")
   oFileNameEdit := QLineEdit():new(oFileInfo:fileName())

   oPathLabel := QLabel():new("Path:")
   oPathValueLabel := QLabel():new(oFileInfo:absoluteFilePath())
   oPathValueLabel:setFrameStyle(QFrame_Panel + QFrame_Sunken)

   oSizeLabel := QLabel():new("Size:")
   nSize := oFileInfo:size()/1024
   oSizeValueLabel := QLabel():new(alltrim(str(nSize))+" K")
   oSizeValueLabel:setFrameStyle(QFrame_Panel + QFrame_Sunken)

   oLastReadLabel := QLabel():new("Last Read:")
   oLastReadValueLabel := QLabel():new(oFileInfo:lastRead():toString())
   oLastReadValueLabel:setFrameStyle(QFrame_Panel + QFrame_Sunken)

   oLastModLabel := QLabel():new("Last Modified:")
   oLastModValueLabel := QLabel():new(oFileInfo:lastModified():toString())
   oLastModValueLabel:setFrameStyle(QFrame_Panel + QFrame_Sunken)

   oMainLayout := QVBoxLayout():new()
   oMainLayout:addWidget(oFileNameLabel)
   oMainLayout:addWidget(oFileNameEdit)
   oMainLayout:addWidget(oPathLabel)
   oMainLayout:addWidget(oPathValueLabel)
   oMainLayout:addWidget(oSizeLabel)
   oMainLayout:addWidget(oSizeValueLabel)
   oMainLayout:addWidget(oLastReadLabel)
   oMainLayout:addWidget(oLastReadValueLabel)
   oMainLayout:addWidget(oLastModLabel)
   oMainLayout:addWidget(oLastModValueLabel)
   oMainLayout:addStretch(1)
   ::setLayout(oMainLayout)

RETURN SELF

// Classe PermissionsTab

CLASS PermissionsTab INHERIT QWidget

   METHOD new (oFileInfo, oParent)

END CLASS

METHOD new (oFileInfo, oParent) CLASS PermissionsTab

   LOCAL oPermissionsGroup
   LOCAL oReadable
   LOCAL oWritable
   LOCAL oExecutable
   LOCAL oOwnerGroup
   LOCAL oOwnerLabel
   LOCAL oOwnerValueLabel
   LOCAL oGroupLabel
   LOCAL oGroupValueLabel
   LOCAL oPermissionsLayout
   LOCAL oOwnerLayout
   LOCAL oMainLayout

   ::super:new(oParent)

   oPermissionsGroup := QGroupBox():new("Permissions")

   oReadable := QCheckBox():new("Readable")
   IF oFileInfo:isReadable()
      oReadable:setChecked(.T.)
   ENDIF

   oWritable := QCheckBox():new("Writable")
   IF oFileInfo:isWritable()
      oWritable:setChecked(.T.)
   ENDIF

   oExecutable := QCheckBox():new("Executable")
   IF oFileInfo:isExecutable()
      oExecutable:setChecked(.T.)
   ENDIF

   oOwnerGroup := QGroupBox():new("Ownership")

   oOwnerLabel := QLabel():new("Owner")
   oOwnerValueLabel := QLabel():new(oFileInfo:owner())
   oOwnerValueLabel:setFrameStyle(QFrame_Panel + QFrame_Sunken)

   oGroupLabel := QLabel():new("Group")
   oGroupValueLabel := QLabel():new(oFileInfo:group())
   oGroupValueLabel:setFrameStyle(QFrame_Panel + QFrame_Sunken)

   oPermissionsLayout := QVBoxLayout():new()
   oPermissionsLayout:addWidget(oReadable)
   oPermissionsLayout:addWidget(oWritable)
   oPermissionsLayout:addWidget(oExecutable)
   oPermissionsGroup:setLayout(oPermissionsLayout)

   oOwnerLayout := QVBoxLayout():new()
   oOwnerLayout:addWidget(oOwnerLabel)
   oOwnerLayout:addWidget(oOwnerValueLabel)
   oOwnerLayout:addWidget(oGroupLabel)
   oOwnerLayout:addWidget(oGroupValueLabel)
   oOwnerGroup:setLayout(oOwnerLayout)

   oMainLayout := QVBoxLayout():new()
   oMainLayout:addWidget(oPermissionsGroup)
   oMainLayout:addWidget(oOwnerGroup)
   oMainLayout:addStretch(1)
   ::setLayout(oMainLayout)

RETURN SELF

// Classe ApplicationsTab

CLASS ApplicationsTab INHERIT QWidget

   METHOD new (oFileInfo, oParent)

END CLASS

METHOD new (oFileInfo, oParent) CLASS ApplicationsTab

   LOCAL oTopLabel
   LOCAL oApplicationsListBox
   LOCAL aApplications
   LOCAL n
   LOCAL oAlwaysCheckBox
   LOCAL oLayout

   ::super:new(oParent)

   oTopLabel := QLabel():new("Open with:")

   oApplicationsListBox := QListWidget():new()
   aApplications := {}

   FOR n := 1 TO 30
      aadd(aApplications,"Application "+alltrim(str(n)))
   NEXT n
   oApplicationsListBox:insertItems(0, aApplications)

   oAlwaysCheckBox := NIL

   IF empty(oFileInfo:suffix())
      oAlwaysCheckBox := QCheckBox():new("Always use this application to open this type of file")
   ELSE
      oAlwaysCheckBox := QCheckBox():new("Always use this application to open files with the extension '"+oFileInfo:suffix()+"'")
   ENDIF

   oLayout := QVBoxLayout():new()
   oLayout:addWidget(oTopLabel)
   oLayout:addWidget(oApplicationsListBox)
   oLayout:addWidget(oAlwaysCheckBox)
   ::setLayout(oLayout)

RETURN SELF

// Classe TabDialog

CLASS TabDialog INHERIT QDialog

   DATA oTabWidget // objeto da classe QTabWidget
   DATA oButtonBox // objeto da classe QDialogButtonBox

   METHOD new (cFileName, oParent)

END CLASS

METHOD new (cFileName, oParent) CLASS TabDialog

   LOCAL oFileInfo
   LOCAL oMainLayout

   ::super:new(oParent)

   oFileInfo := QFileInfo():new(cFileName)

   ::oTabWidget := QTabWidget():new()
   ::oTabWidget:addTab(GeneralTab():new(oFileInfo), "General")
   ::oTabWidget:addTab(PermissionsTab():new(oFileInfo), "Permissions")
   ::oTabWidget:addTab(ApplicationsTab():new(oFileInfo), "Applications")

   ::oButtonBox := QDialogButtonBox():new(QDialogButtonBox_Ok + QDialogButtonBox_Cancel)

   ::oButtonBox:onAccepted({||::accept()})
   ::oButtonBox:onRejected({||::reject()})

   oMainLayout := QVBoxLayout():new()
   oMainLayout:setSizeConstraint(QLayout_SetNoConstraint)
   oMainLayout:addWidget(::oTabWidget)
   oMainLayout:addWidget(::oButtonBox)
   ::setLayout(oMainLayout)

   ::setWindowTitle("Tab Dialog")

RETURN SELF
