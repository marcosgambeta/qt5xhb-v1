$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTCURSOR
#endif

CLASS QTextTableCell

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD setFormat
   METHOD format
   METHOD row
   METHOD column
   METHOD rowSpan
   METHOD columnSpan
   METHOD isValid
   METHOD firstCursorPosition
   METHOD lastCursorPosition
   METHOD firstPosition
   METHOD lastPosition
   METHOD tableCellFormatIndex

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QTextCursor>

/*
QTextTableCell()
*/
$internalConstructor=|new1|

/*
QTextTableCell(const QTextTableCell &o)
*/
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

/*
void setFormat(const QTextCharFormat &format)
*/
$method=|void|setFormat|const QTextCharFormat &

/*
QTextCharFormat format() const
*/
$method=|QTextCharFormat|format|

/*
int row() const
*/
$method=|int|row|

/*
int column() const
*/
$method=|int|column|

/*
int rowSpan() const
*/
$method=|int|rowSpan|

/*
int columnSpan() const
*/
$method=|int|columnSpan|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QTextCursor firstCursorPosition() const
*/
$method=|QTextCursor|firstCursorPosition|

/*
QTextCursor lastCursorPosition() const
*/
$mtehod=|QTextCursor|lastCursorPosition|

/*
int firstPosition() const
*/
$method=|int|firstPosition|

/*
int lastPosition() const
*/
$method=|int|lastPosition|

/*
int tableCellFormatIndex() const
*/
$method=|int|tableCellFormatIndex|

$extraMethods

#pragma ENDDUMP
