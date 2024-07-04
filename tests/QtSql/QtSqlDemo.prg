//
// Qt5xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt5xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oDB
   LOCAl oModel
   LOCAL oView
   LOCAL lFileExist := file("qtsqldemo.db")

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
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Odécio', 33)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Paulo', 34)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Renato', 35)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Sílvio', 36)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Tiago', 37)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Ulisses', 38)")
      oDB:exec("INSERT INTO cadastro(nome, idade) VALUES('Valdir', 39)")
   ENDIF

   oModel := QSqlTableModel():new(, oDB)

   // define a tabela
   oModel:setTable("cadastro")

   // define as alterações para serem imediatas
   oModel:setEditStrategy(QSqlTableModel_OnFieldChange)

   // preenche o modelo com os dados da tabela
   oModel:select()

   // define os cabeçalhos
   oModel:setHeaderData(1, Qt_Horizontal, QVariant():new("Nome"))
   oModel:setHeaderData(2, Qt_Horizontal, QVariant():new("Idade"))

   // cria um objeto da classe QTableView
   oView := QTableView():new()
   oView:setModel(oModel)
   oView:hideColumn(0) // não mostra a coluna 'Id'
   oView:show()

   oApp:exec()

   oModel:delete()

   oView:delete()

   oApp:delete()

RETURN
