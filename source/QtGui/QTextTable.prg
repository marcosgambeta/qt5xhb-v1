/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTTABLECELL
REQUEST QTEXTCURSOR
REQUEST QTEXTTABLEFORMAT
#endif

CLASS QTextTable INHERIT QTextFrame

   METHOD new
   METHOD delete
   METHOD resize
   METHOD insertRows
   METHOD insertColumns
   METHOD appendRows
   METHOD appendColumns
   METHOD removeRows
   METHOD removeColumns
   METHOD mergeCells1
   METHOD mergeCells2
   METHOD splitCell
   METHOD rows
   METHOD columns
   METHOD cellAt1
   METHOD cellAt2
   METHOD cellAt3
   METHOD rowStart
   METHOD rowEnd
   METHOD setFormat
   METHOD format

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextTable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextTable>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextTable>
#endif

#include <QTextCursor>

/*
QTextTable(QTextDocument *doc)
*/
HB_FUNC_STATIC( QTEXTTABLE_NEW )
{
  QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
  QTextTable * o = new QTextTable ( par1 );
  _qt5xhb_returnNewObject( o, false );
}


HB_FUNC_STATIC( QTEXTTABLE_DELETE )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize(int rows, int cols)
*/
HB_FUNC_STATIC( QTEXTTABLE_RESIZE )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRows(int pos, int num)
*/
HB_FUNC_STATIC( QTEXTTABLE_INSERTROWS )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertRows ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertColumns(int pos, int num)
*/
HB_FUNC_STATIC( QTEXTTABLE_INSERTCOLUMNS )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->insertColumns ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendRows(int count)
*/
HB_FUNC_STATIC( QTEXTTABLE_APPENDROWS )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->appendRows ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendColumns(int count)
*/
HB_FUNC_STATIC( QTEXTTABLE_APPENDCOLUMNS )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->appendColumns ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeRows(int pos, int num)
*/
HB_FUNC_STATIC( QTEXTTABLE_REMOVEROWS )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeRows ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeColumns(int pos, int num)
*/
HB_FUNC_STATIC( QTEXTTABLE_REMOVECOLUMNS )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeColumns ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void mergeCells(int row, int col, int numRows, int numCols)
*/
HB_FUNC_STATIC( QTEXTTABLE_MERGECELLS1 )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->mergeCells ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void mergeCells(const QTextCursor &cursor)
*/
HB_FUNC_STATIC( QTEXTTABLE_MERGECELLS2 )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->mergeCells ( *PQTEXTCURSOR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void splitCell(int row, int col, int numRows, int numCols)
*/
HB_FUNC_STATIC( QTEXTTABLE_SPLITCELL )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->splitCell ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int rows() const
*/
HB_FUNC_STATIC( QTEXTTABLE_ROWS )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rows () );
  }
}


/*
int columns() const
*/
HB_FUNC_STATIC( QTEXTTABLE_COLUMNS )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->columns () );
  }
}


/*
QTextTableCell cellAt(int row, int col) const
*/
HB_FUNC_STATIC( QTEXTTABLE_CELLAT1 )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( PINT(1), PINT(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLECELL" );
  }
}


/*
QTextTableCell cellAt(int position) const
*/
HB_FUNC_STATIC( QTEXTTABLE_CELLAT2 )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLECELL" );
  }
}


/*
QTextTableCell cellAt(const QTextCursor &c) const
*/
HB_FUNC_STATIC( QTEXTTABLE_CELLAT3 )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( *PQTEXTCURSOR(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLECELL" );
  }
}


/*
QTextCursor rowStart(const QTextCursor &c) const
*/
HB_FUNC_STATIC( QTEXTTABLE_ROWSTART )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->rowStart ( *PQTEXTCURSOR(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor rowEnd(const QTextCursor &c) const
*/
HB_FUNC_STATIC( QTEXTTABLE_ROWEND )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->rowEnd ( *PQTEXTCURSOR(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
void setFormat(const QTextTableFormat &format)
*/
HB_FUNC_STATIC( QTEXTTABLE_SETFORMAT )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFormat ( *PQTEXTTABLEFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextTableFormat format() const
*/
HB_FUNC_STATIC( QTEXTTABLE_FORMAT )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextTableFormat * ptr = new QTextTableFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLEFORMAT" );
  }
}



#pragma ENDDUMP
