//
// Qt5xHb Project - Example Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// Baseado no exemplo "Config Dialog" do Qt Framework

#include "qt5xhb.ch"
#include <hbclass.ch>

PROCEDURE Main()

   LOCAL oApp
   LOCAL oDialog

   oApp := QApplication():new()

   oDialog := ConfigDialog():new()

   oDialog:exec()

   oDialog:delete()

   oApp:delete()

RETURN

// O objeto ConfigDialog � a janela principal
// e � derivada da classe QDialog

CLASS ConfigDialog INHERIT QDialog

   DATA oContentsWidget // objeto da classe QListWidget
   DATA oPagesWidget    // objeto da classe QStackedWidget
   DATA oCloseButton    // objeto da classe QPushButton

   METHOD new(oParent, nFlags)
   METHOD changePage(pCurrent, pPrevious)
   METHOD createIcons()
   METHOD delete()

END CLASS

// o m�todo new cria a janela principal e os objetos presentes nela

METHOD new(oParent, nFlags) CLASS ConfigDialog

   LOCAL oHorizontalLayout
   LOCAL oButtonsLayout
   LOCAL oMainLayout

   ::super:new(oParent, nFlags)

   // cria a lista de op��es, usando a classe QListWidget
   ::oContentsWidget := QListWidget():new()
   ::oContentsWidget:setViewMode(QListView_IconMode)
   ::oContentsWidget:setIconSize(QSize():new(96, 84))
   ::oContentsWidget:setMovement(QListView_Static)
   ::oContentsWidget:setMaximumWidth(128)
   ::oContentsWidget:setSpacing(12)

   // cria um objeto da classe QStackedWidget, para
   // controlar a exibi��o das p�ginas
   ::oPagesWidget := QStackedWidget():new()
   // adiciona a p�gina 1 (objeto da classe ConfigurationPage)
   ::oPagesWidget:addWidget(ConfigurationPage():new())
   // adiciona a p�gina 2 (objeto da classe UpdatePage)
   ::oPagesWidget:addWidget(UpdatePage():new())
   // adiciona a p�gina 3 (objeto da classe QueryPage)
   ::oPagesWidget:addWidget(QueryPage():new())

   // cria um bot�o para fechar a janela de di�logo
   ::oCloseButton := QPushButton():new("Close")
   ::oCloseButton:onClicked({||::close()})

   // executa o m�todo que cria os �cones
   ::createIcons()
   // define a primeira op��o como a op��o corrente
   ::oContentsWidget:setCurrentRow(0)

   // cria uma layout horizontal, colocando no
   // lado esquerdo a lista de op��es e no
   // lado direito o objeto da classe QStackedWidget
   oHorizontalLayout := QHBoxLayout():new()
   oHorizontalLayout:addWidget(::oContentsWidget)
   oHorizontalLayout:addWidget(::oPagesWidget, 1)

   // cria outro layout horizontal, para colocar
   // o bot�o de fechamento da janela de di�logo
   oButtonsLayout := QHBoxLayout():new()
   oButtonsLayout:addStretch(1)
   oButtonsLayout:addWidget(::oCloseButton)

   // cria o layout principal, colocando nele
   // os dois layouts criados anteriormente
   oMainLayout := QVBoxLayout():new()
   oMainLayout:addLayout(oHorizontalLayout)
   oMainLayout:addStretch(1)
   oMainLayout:addSpacing(12)
   oMainLayout:addLayout(oButtonsLayout)
   // define este layout como o layout da janela ConfigDialog
   ::setLayout(oMainLayout)

   ::setWindowTitle("Config Dialog")

RETURN SELF

// o m�todo createIcons cria os �cones que aparecem na lista de op��es

METHOD createIcons() CLASS ConfigDialog

   LOCAL oConfigButton
   LOCAL oUpdateButton
   LOCAL oQueryButton

   // op��o 1 - Configuration
   oConfigButton := QListWidgetItem():new(::oContentsWidget)
   oConfigButton:setIcon(QIcon():new("images/config.png"))
   oConfigButton:setText("Configuration")
   oConfigButton:setTextAlignment(Qt_AlignHCenter)
   oConfigButton:setFlags(Qt_ItemIsSelectable + Qt_ItemIsEnabled)

   // op��o 2 - Update
   oUpdateButton := QListWidgetItem():new(::oContentsWidget)
   oUpdateButton:setIcon(QIcon():new("images/update.png"))
   oUpdateButton:setText("Update")
   oUpdateButton:setTextAlignment(Qt_AlignHCenter)
   oUpdateButton:setFlags(Qt_ItemIsSelectable + Qt_ItemIsEnabled)

   // op��o 3 - Query
   oQueryButton := QListWidgetItem():new(::oContentsWidget)
   oQueryButton:setIcon(QIcon():new("images/query.png"))
   oQueryButton:setText("Query")
   oQueryButton:setTextAlignment(Qt_AlignHCenter)
   oQueryButton:setFlags(Qt_ItemIsSelectable + Qt_ItemIsEnabled)

   // sempre que a op��o corrente mudar, ser� executado o m�todo changePage
   ::oContentsWidget:onCurrentItemChanged({|pWidget, pCurrent, pPrevious|HB_SYMBOL_UNUSED(pWidget), ::changePage(pCurrent, pPrevious)})

RETURN NIL

// o m�todo changePage mostra a p�gina (1, 2 ou 3), conforme
// a op��o selecionada na lista de op��es

METHOD changePage(pCurrent, pPrevious) CLASS ConfigDialog

   LOCAL oCurrent
   LOCAL oPrevious

   oCurrent := QListWidgetItem():newFrom(pCurrent)
   oPrevious := QListWidgetItem():newFrom(pPrevious)

   IF Empty(oCurrent:pointer)
      oCurrent := oPrevious
   ENDIF

   ::oPagesWidget:setCurrentIndex(::oContentsWidget:row(oCurrent))

RETURN NIL

// o m�todo delete desconecta os sinais usados e destr�i o objeto ConfigDialog

METHOD delete() CLASS ConfigDialog

   // desconecta sinais
   ::oCloseButton:onClicked()
   ::oContentsWidget:onCurrentItemChanged()

   // destr�i o objeto ConfigDialog
   ::super:delete()

RETURN NIL

// Classe ConfigurationPage - p�gina 1

CLASS ConfigurationPage INHERIT QWidget

   METHOD new(oParent, nFlags)

END CLASS

METHOD new(oParent, nFlags) CLASS ConfigurationPage

   LOCAL oConfigGroup
   LOCAL oServerLabel
   LOCAL oServerCombo
   LOCAL oServerLayout
   LOCAL oConfigLayout
   LOCAL oMainLayout

   ::super:new(oParent, nFlags)

   oConfigGroup := QGroupBox():new("Server configuration")

   oServerLabel := QLabel():new("Server:")
   oServerCombo := QComboBox():new()
   oServerCombo:addItem("Qt (Australia)")
   oServerCombo:addItem("Qt (Germany)")
   oServerCombo:addItem("Qt (Norway)")
   oServerCombo:addItem("Qt (People's Republic of China)")
   oServerCombo:addItem("Qt (USA)")

   oServerLayout := QHBoxLayout():new()
   oServerLayout:addWidget(oServerLabel)
   oServerLayout:addWidget(oServerCombo)

   oConfigLayout := QVBoxLayout():new()
   oConfigLayout:addLayout(oServerLayout)
   oConfigGroup:setLayout(oConfigLayout)

   oMainLayout := QVBoxLayout():new()
   oMainLayout:addWidget(oConfigGroup)
   oMainLayout:addStretch(1)
   ::setLayout(oMainLayout)

RETURN SELF

// Classe UpdatePage - p�gina 2

CLASS UpdatePage INHERIT QWidget

   METHOD new(oParent, nFlags)

END CLASS

METHOD new(oParent, nFlags) CLASS UpdatePage

   LOCAL oUpdateGroup
   LOCAL oSystemCheckBox
   LOCAL oAppsCheckBox
   LOCAL oDocsCheckBox
   LOCAL oPackageGroup
   LOCAL oPackageList
   LOCAL oQtItem
   LOCAL oQsaItem
   LOCAL oTeamBuilderItem
   LOCAL oStartUpdateButton
   LOCAL oUpdateLayout
   LOCAL oPackageLayout
   LOCAL oMainLayout

   ::super:new(oParent, nFlags)

   oUpdateGroup := QGroupBox():new("Package selection")
   oSystemCheckBox := QCheckBox():new("Update system")
   oAppsCheckBox := QCheckBox():new("Update applications")
   oDocsCheckBox := QCheckBox():new("Update documentation")

   oPackageGroup := QGroupBox():new("Existing packages")

   oPackageList := QListWidget():new()
   oQtItem := QListWidgetItem():new(oPackageList)
   oQtItem:setText("Qt")
   oQsaItem := QListWidgetItem():new(oPackageList)
   oQsaItem:setText("QSA")
   oTeamBuilderItem := QListWidgetItem():new(oPackageList)
   oTeamBuilderItem:setText("Teambuilder")

   oStartUpdateButton := QPushButton():new("Start update")

   oUpdateLayout := QVBoxLayout():new()
   oUpdateLayout:addWidget(oSystemCheckBox)
   oUpdateLayout:addWidget(oAppsCheckBox)
   oUpdateLayout:addWidget(oDocsCheckBox)
   oUpdateGroup:setLayout(oUpdateLayout)

   oPackageLayout := QVBoxLayout():new()
   oPackageLayout:addWidget(oPackageList)
   oPackageGroup:setLayout(oPackageLayout)

   oMainLayout := QVBoxLayout():new()
   oMainLayout:addWidget(oUpdateGroup)
   oMainLayout:addWidget(oPackageGroup)
   oMainLayout:addSpacing(12)
   oMainLayout:addWidget(oStartUpdateButton)
   oMainLayout:addStretch(1)
   ::setLayout(oMainLayout)

RETURN SELF

// Classe QueryPage - p�gina 3

CLASS QueryPage INHERIT QWidget

   METHOD new(oParent, nFlags)

END CLASS

METHOD new(oParent, nFlags) CLASS QueryPage

   LOCAL oPackagesGroup
   LOCAL oNameLabel
   LOCAL oNameEdit
   LOCAL oDateLabel
   LOCAL oDateEdit
   LOCAL oReleasesCheckBox
   LOCAL oUpgradesCheckBox
   LOCAL oHitsSpinBox
   LOCAL oStartQueryButton
   LOCAL oPackagesLayout
   LOCAL oMainLayout

   ::super:new(oParent, nFlags)

   oPackagesGroup := QGroupBox():new("Look for packages")

   oNameLabel := QLabel():new("Name:")
   oNameEdit := QLineEdit():new()

   oDateLabel := QLabel():new("Released after:")
   oDateEdit := QDateTimeEdit():new(QDate():currentDate())

   oReleasesCheckBox := QCheckBox():new("Releases")
   oUpgradesCheckBox := QCheckBox():new("Upgrades")

   oHitsSpinBox := QSpinBox():new()
   oHitsSpinBox:setPrefix("Return up to ")
   oHitsSpinBox:setSuffix(" results")
   oHitsSpinBox:setSpecialValueText("Return only the first result")
   oHitsSpinBox:setMinimum(1)
   oHitsSpinBox:setMaximum(100)
   oHitsSpinBox:setSingleStep(10)

   oStartQueryButton := QPushButton():new("Start query")

   oPackagesLayout := QGridLayout():new()
   oPackagesLayout:addWidget(oNameLabel, 0, 0)
   oPackagesLayout:addWidget(oNameEdit, 0, 1)
   oPackagesLayout:addWidget(oDateLabel, 1, 0)
   oPackagesLayout:addWidget(oDateEdit, 1, 1)
   oPackagesLayout:addWidget(oReleasesCheckBox, 2, 0)
   oPackagesLayout:addWidget(oUpgradesCheckBox, 3, 0)
   oPackagesLayout:addWidget(oHitsSpinBox, 4, 0, 1, 2)
   oPackagesGroup:setLayout(oPackagesLayout)

   oMainLayout := QVBoxLayout():new()
   oMainLayout:addWidget(oPackagesGroup)
   oMainLayout:addSpacing(12)
   oMainLayout:addWidget(oStartQueryButton)
   oMainLayout:addStretch(1)
   ::setLayout(oMainLayout)

RETURN SELF
