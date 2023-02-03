/*

  Qt5xHb Project - Example Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt5xhb-v1

*/

#include "qt5xhb.ch"

// constantes do ADO utilizadas neste exemplo
#define adOpenKeyset     1
#define adLockOptimistic 3
#define adBookmarkFirst  1
#define adInteger        3
#define adVarWChar       202

// Atenção:
// Este exemplo é compatível com o Harbour, requerendo ajustes para funcionar com o xHarbour.
// Requer a biblioteca hbwin na compilação:
// hbmk2 ado ..\qt5xhb.hbc hbwin.hbc

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL oConnection
   LOCAL oRecordset

   CriarBancoDeDados()

   oConnection := win_OleCreateObject("ADODB.Connection")
   oConnection:Open("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + QDir():currentPath() + "\teste.mdb")
   oRecordset := win_OleCreateObject("ADODB.Recordset")
   oRecordset:Open("SELECT * FROM cadastro", oConnection, adOpenKeyset, adLockOptimistic)

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Exemplo de uso do ADO com Qt")
   oWindow:resize(800, 600)

   // cria e configura o modelo
   oModel := AdoTableModel():new()
   oModel:setRowCountCB({||oRecordset:recordCount}) // total de linhas
   oModel:setColumnCountCB({||oRecordset:Fields:count()}) // total de colunas
   oModel:setDisplayRoleCB({|nRow, nCol|oRecordset:move(nRow, adBookmarkFirst), oRecordset:Fields(nCol):value}) // conteúdo da célula
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|oRecordset:Fields(nCol):name}) // títulos das colunas (usa o nome do campo)

   // cria o visualizador e associa ao modelo
   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   oRecordset := NIL

   oConnection := NIL

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN

/*
  A função CriarBancoDeDados cria um banco de dados do Access, na pasta
  corrente. Neste banco, é criada uma tabela chamada 'cadastro', com três
  campos: 'codigo', 'nome' e 'valor'. Nesta tabela são inseridos 1000
  registros.
*/

STATIC FUNCTION CriarBancoDeDados()

   LOCAL oCatalog
   LOCAL oTable
   LOCAL oConnection
   LOCAL oRecordset
   LOCAL n

   // comente esta linha para o arquivo não ser recriado
   // cada vez que o exemplo for executado
   ferase("teste.mdb")

   IF !file(QDir():currentPath() + "\teste.mdb")
      oCatalog := win_OleCreateObject("ADOX.Catalog")
      // cria o mdb
      oCatalog:Create("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + QDir():currentPath() + "\teste.mdb")
      oCatalog:ActiveConnection := "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + QDir():currentPath() + "\teste.mdb"
      // cria a tabela
      oTable := win_OleCreateObject("ADOX.Table")
      oTable:Name := "cadastro"
      oTable:Columns:Append("codigo", adInteger)
      oTable:Columns:Append("nome", adVarWChar, 40)
      oTable:Columns:Append("valor", adInteger)
      oCatalog:Tables:Append(oTable)
      oTable := NIL
      oCatalog := NIL
      // adiciona 1000 registros na tabela
      oConnection := win_OleCreateObject("ADODB.Connection")
      oConnection:Open("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + QDir():currentPath() + "\teste.mdb")
      oRecordset := win_OleCreateObject("ADODB.Recordset")
      oRecordset:Open("SELECT * FROM cadastro", oConnection, adOpenKeyset, adLockOptimistic)
      FOR n := 1 TO 1000
         oRecordset:AddNew()
         oRecordset:Fields(0):Value := n
         oRecordset:Fields(1):Value := "Nome do cliente " + alltrim(str(n))
         oRecordset:Fields(2):Value := n*10
         oRecordset:Update()
      NEXT n
      oRecordset := NIL
      oConnection := NIL
   ENDIF

RETURN NIL

#include "hbclass.ch"

// A classe AdoTableModel deriva da classe HAbstractTableModel,
// sendo que não adiciona nenhum recurso extra. O desenvolvedor
// poderá expandir a classe, conforme suas necessidades.

CLASS AdoTableModel INHERIT HAbstractTableModel
END CLASS
