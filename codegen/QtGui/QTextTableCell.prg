%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextCursor>

$prototype=QTextTableCell()
$internalConstructor=|new1|

$prototype=QTextTableCell(const QTextTableCell &o)
$internalConstructor=|new2|const QTextTableCell &

//[1]QTextTableCell()
//[2]QTextTableCell(const QTextTableCell &o)

HB_FUNC_STATIC( QTEXTTABLECELL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextTableCell_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTTABLECELL(1) )
  {
    QTextTableCell_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setFormat(const QTextCharFormat &format)
$method=|void|setFormat|const QTextCharFormat &

$prototype=QTextCharFormat format() const
$method=|QTextCharFormat|format|

$prototype=int row() const
$method=|int|row|

$prototype=int column() const
$method=|int|column|

$prototype=int rowSpan() const
$method=|int|rowSpan|

$prototype=int columnSpan() const
$method=|int|columnSpan|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QTextCursor firstCursorPosition() const
$method=|QTextCursor|firstCursorPosition|

$prototype=QTextCursor lastCursorPosition() const
$method=|QTextCursor|lastCursorPosition|

$prototype=int firstPosition() const
$method=|int|firstPosition|

$prototype=int lastPosition() const
$method=|int|lastPosition|

$prototype=int tableCellFormatIndex() const
$method=|int|tableCellFormatIndex|

$extraMethods

#pragma ENDDUMP
