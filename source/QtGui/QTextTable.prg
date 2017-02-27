/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QTEXTTABLECELL
REQUEST QTEXTCURSOR
REQUEST QTEXTTABLEFORMAT
#endif

CLASS QTextTable INHERIT QTextFrame

   DATA class_id INIT Class_Id_QTextTable
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextTable>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QTextTable>
#endif
#endif

#include <QTextCursor>

/*
QTextTable(QTextDocument *doc)
*/
HB_FUNC_STATIC( QTEXTTABLE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
  QTextTable * o = new QTextTable ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTextTable *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QTEXTTABLE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
void resize(int rows, int cols)
*/
HB_FUNC_STATIC( QTEXTTABLE_RESIZE )
{
  QTextTable * obj = (QTextTable *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resize ( (int) hb_parni(1), (int) hb_parni(2) );
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
    obj->insertRows ( (int) hb_parni(1), (int) hb_parni(2) );
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
    obj->insertColumns ( (int) hb_parni(1), (int) hb_parni(2) );
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
    obj->appendRows ( (int) hb_parni(1) );
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
    obj->appendColumns ( (int) hb_parni(1) );
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
    obj->removeRows ( (int) hb_parni(1), (int) hb_parni(2) );
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
    obj->removeColumns ( (int) hb_parni(1), (int) hb_parni(2) );
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
    obj->mergeCells ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
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
    QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
    obj->mergeCells ( *par1 );
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
    obj->splitCell ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4) );
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
    hb_retni( obj->rows (  ) );
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
    hb_retni( obj->columns (  ) );
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
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( (int) hb_parni(1), (int) hb_parni(2) ) );
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
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( (int) hb_parni(1) ) );
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
    QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( *par1 ) );
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
    QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
    QTextCursor * ptr = new QTextCursor( obj->rowStart ( *par1 ) );
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
    QTextCursor * par1 = (QTextCursor *) _qt5xhb_itemGetPtr(1);
    QTextCursor * ptr = new QTextCursor( obj->rowEnd ( *par1 ) );
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
    QTextTableFormat * par1 = (QTextTableFormat *) _qt5xhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
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
    QTextTableFormat * ptr = new QTextTableFormat( obj->format (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTTABLEFORMAT" );
  }
}



#pragma ENDDUMP
