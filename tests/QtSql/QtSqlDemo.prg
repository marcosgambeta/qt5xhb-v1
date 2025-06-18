//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt5xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oDB
   LOCAl oModel
   LOCAL oView
   LOCAL lFileExist := File("qtsqldemo.db")

   oApp := QApplication():new()

   // cria um objeto da classe QSqlDatabase
   oDB := QSqlDatabase():addDatabase("QSQLITE", "connection")
   oDB:setHostName("localhost")
   oDB:setDatabaseName("qtsqldemo.db")
   oDB:setUserName("usuario")
   oDB:setPassword("senha")

   // abre o arquivo
   IF !oDB:open()
      QUIT
   ENDIF

   IF !lFileExist
      // cria a tabela
      oDB:exec("CREATE TABLE cadastro(id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, idade INTEGER)")
      // insere dados
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Antonio', 20)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Bernardo', 21)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Carlos', 22)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Diogo', 23)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Elias', 24)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Fernando', 25)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Gabriel', 26)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Henrique', 27)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Ismael', 28)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Jonas', 29)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Leonardo', 30)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Marcos', 31)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Norberto', 32)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Od�cio', 33)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Paulo', 34)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Renato', 35)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('S�lvio', 36)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Tiago', 37)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Ulisses', 38)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Valdir', 39)")
   ENDIF

   oModel := QSqlTableModel():new(, oDB)

   // define a tabela
   oModel:setTable("cadastro")

   // define as altera��es para serem imediatas
   oModel:setEditStrategy(QSqlTableModel_OnFieldChange)

   // preenche o modelo com os dados da tabela
   oModel:select()

   // define os cabe�alhos
   oModel:setHeaderData(1, Qt_Horizontal, QVariant():new("Nome"))
   oModel:setHeaderData(2, Qt_Horizontal, QVariant():new("Idade"))

   // cria um objeto da classe QTableView
   oView := QTableView():new()
   oView:setModel(oModel)
   // n�o mostra a coluna 'Id'
   oView:hideColumn(0)
   oView:show()

   oApp:exec()

   oModel:delete()

   oView:delete()

   oApp:delete()

RETURN NIL
