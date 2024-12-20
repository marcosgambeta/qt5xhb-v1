//
// Qt5xHb Project - Example Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// Baseado no exemplo "Config Dialog" do Qt Framework

#include "qt5xhb.ch"
#include "hbclass.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oDialog

   oApp := QApplication():new()

   oDialog := ConfigDialog():new()

   oDialog:exec()

   oDialog:delete()

   oApp:delete()

RETURN

// O objeto ConfigDialog é a janela principal
// e é derivada da classe QDialog

CLASS ConfigDialog INHERIT QDialog

   DATA oContentsWidget // objeto da classe QListWidget
   DATA oPagesWidget    // objeto da classe QStackedWidget
   DATA oCloseButton    // objeto da classe QPushButton

   METHOD new(oParent, nFlags)
   METHOD changePage(pCurrent, pPrevious)
   METHOD createIcons()
   METHOD delete()

END CLASS

// o método new cria a janela principal e os objetos presentes nela

METHOD new(oParent, nFlags) CLASS ConfigDialog

   LOCAL oHorizontalLayout
   LOCAL oButtonsLayout
   LOCAL oMainLayout

   ::super:new(oParent, nFlags)

   // cria a lista de opções, usando a classe QListWidget
   ::oContentsWidget := QListWidget():new()
   ::oContentsWidget:setViewMode(QListView_IconMode)
   ::oContentsWidget:setIconSize(QSize():new(96, 84))
   ::oContentsWidget:setMovement(QListView_Static)
   ::oContentsWidget:setMaximumWidth(128)
   ::oContentsWidget:setSpacing(12)

   // cria um objeto da classe QStackedWidget, para
   // controlar a exibição das páginas
   ::oPagesWidget := QStackedWidget():new()
   // adiciona a página 1 (objeto da classe ConfigurationPage)
   ::oPagesWidget:addWidget(ConfigurationPage():new())
   // adiciona a página 2 (objeto da classe UpdatePage)
   ::oPagesWidget:addWidget(UpdatePage():new())
   // adiciona a página 3 (objeto da classe QueryPage)
   ::oPagesWidget:addWidget(QueryPage():new())

   // cria um botão para fechar a janela de diálogo
   ::oCloseButton := QPushButton():new("Close")
   ::oCloseButton:onClicked({||::close()})

   // executa o método que cria os ícones
   ::createIcons()
   // define a primeira opção como a opção corrente
   ::oContentsWidget:setCurrentRow(0)

   // cria uma layout horizontal, colocando no
   // lado esquerdo a lista de opções e no
   // lado direito o objeto da classe QStackedWidget
   oHorizontalLayout := QHBoxLayout():new()
   oHorizontalLayout:addWidget(::oContentsWidget)
   oHorizontalLayout:addWidget(::oPagesWidget, 1)

   // cria outro layout horizontal, para colocar
   // o botão de fechamento da janela de diálogo
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

// o método createIcons cria os ícones que aparecem na lista de opções

METHOD createIcons() CLASS ConfigDialog

   LOCAL oConfigButton
   LOCAL oUpdateButton
   LOCAL oQueryButton

   // opção 1 - Configuration
   oConfigButton := QListWidgetItem():new(::oContentsWidget)
   oConfigButton:setIcon(QIcon():new("images/config.png"))
   oConfigButton:setText("Configuration")
   oConfigButton:setTextAlignment(Qt_AlignHCenter)
   oConfigButton:setFlags(Qt_ItemIsSelectable + Qt_ItemIsEnabled)

   // opção 2 - Update
   oUpdateButton := QListWidgetItem():new(::oContentsWidget)
   oUpdateButton:setIcon(QIcon():new("images/update.png"))
   oUpdateButton:setText("Update")
   oUpdateButton:setTextAlignment(Qt_AlignHCenter)
   oUpdateButton:setFlags(Qt_ItemIsSelectable + Qt_ItemIsEnabled)

   // opção 3 - Query
   oQueryButton := QListWidgetItem():new(::oContentsWidget)
   oQueryButton:setIcon(QIcon():new("images/query.png"))
   oQueryButton:setText("Query")
   oQueryButton:setTextAlignment(Qt_AlignHCenter)
   oQueryButton:setFlags(Qt_ItemIsSelectable + Qt_ItemIsEnabled)

   // sempre que a opção corrente mudar, será executado o método changePage
   ::oContentsWidget:onCurrentItemChanged({|pWidget, pCurrent, pPrevious|HB_SYMBOL_UNUSED(pWidget), ::changePage(pCurrent, pPrevious)})

RETURN NIL

// o método changePage mostra a página (1, 2 ou 3), conforme
// a opção selecionada na lista de opções

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

// o método delete desconecta os sinais usados e destrói o objeto ConfigDialog

METHOD delete() CLASS ConfigDialog

   // desconecta sinais
   ::oCloseButton:onClicked()
   ::oContentsWidget:onCurrentItemChanged()

   // destrói o objeto ConfigDialog
   ::super:delete()

RETURN NIL

// Classe ConfigurationPage - página 1

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

// Classe UpdatePage - página 2

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

// Classe QueryPage - página 3

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
