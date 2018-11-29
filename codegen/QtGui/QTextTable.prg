%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextFrame

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QTextCursor>

$prototype=QTextTable(QTextDocument *doc)
$constructor=|new|QTextDocument *

$deleteMethod

$prototype=void resize(int rows, int cols)
$method=|void|resize|int,int

$prototype=void insertRows(int pos, int num)
$method=|void|insertRows|int,int

$prototype=void insertColumns(int pos, int num)
$method=|void|insertColumns|int,int

$prototype=void appendRows(int count)
$method=|void|appendRows|int

$prototype=void appendColumns(int count)
$method=|void|appendColumns|int

$prototype=void removeRows(int pos, int num)
$method=|void|removeRows|int,int

$prototype=void removeColumns(int pos, int num)
$method=|void|removeColumns|int,int

$prototype=void mergeCells(int row, int col, int numRows, int numCols)
$internalMethod=|void|mergeCells,mergeCells1|int,int,int,int

$prototype=void mergeCells(const QTextCursor &cursor)
$internalMethod=|void|mergeCells,mergeCells2|const QTextCursor &

//[1]void mergeCells(int row, int col, int numRows, int numCols)
//[2]void mergeCells(const QTextCursor &cursor)

HB_FUNC_STATIC( QTEXTTABLE_MERGECELLS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QTextTable_mergeCells1();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextTable_mergeCells2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mergeCells

$prototype=void splitCell(int row, int col, int numRows, int numCols)
$method=|void|splitCell|int,int,int,int

$prototype=int rows() const
$method=|int|rows|

$prototype=int columns() const
$method=|int|columns|

$prototype=QTextTableCell cellAt(int row, int col) const
$internalMethod=|QTextTableCell|cellAt,cellAt1|int,int

$prototype=QTextTableCell cellAt(int position) const
$internalMethod=|QTextTableCell|cellAt,cellAt2|int

$prototype=QTextTableCell cellAt(const QTextCursor &c) const
$internalMethod=|QTextTableCell|cellAt,cellAt3|const QTextCursor &

//[1]QTextTableCell cellAt(int row, int col) const
//[2]QTextTableCell cellAt(int position) const
//[3]QTextTableCell cellAt(const QTextCursor &c) const

HB_FUNC_STATIC( QTEXTTABLE_CELLAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextTable_cellAt1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextTable_cellAt2();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextTable_cellAt3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=cellAt

$prototype=QTextCursor rowStart(const QTextCursor &c) const
$method=|QTextCursor|rowStart|const QTextCursor &

$prototype=QTextCursor rowEnd(const QTextCursor &c) const
$method=|QTextCursor|rowEnd|const QTextCursor &

$prototype=void setFormat(const QTextTableFormat &format)
$method=|void|setFormat|const QTextTableFormat &

$prototype=QTextTableFormat format() const
$method=|QTextTableFormat|format|

#pragma ENDDUMP
