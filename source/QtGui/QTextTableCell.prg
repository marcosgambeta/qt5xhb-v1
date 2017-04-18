/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTCHARFORMAT
REQUEST QTEXTCURSOR
#endif

CLASS QTextTableCell

   DATA pointer
   DATA class_id INIT Class_Id_QTextTableCell
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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

PROCEDURE destroyObject () CLASS QTextTableCell
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextTableCell>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextTableCell>
#endif

#include <QTextCursor>

/*
QTextTableCell()
*/
HB_FUNC_STATIC( QTEXTTABLECELL_NEW1 )
{
  QTextTableCell * o = new QTextTableCell (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextTableCell(const QTextTableCell &o)
*/
HB_FUNC_STATIC( QTEXTTABLECELL_NEW2 )
{
  QTextTableCell * par1 = (QTextTableCell *) _qt5xhb_itemGetPtr(1);
  QTextTableCell * o = new QTextTableCell ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextTableCell()
//[2]QTextTableCell(const QTextTableCell &o)

HB_FUNC_STATIC( QTEXTTABLECELL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTTABLECELL_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTTABLECELL(1) )
  {
    HB_FUNC_EXEC( QTEXTTABLECELL_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTEXTTABLECELL_DELETE )
{
  QTextTableCell * obj = (QTextTableCell *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void setFormat(const QTextCharFormat &format)
*/
HB_FUNC_STATIC( QTEXTTABLECELL_SETFORMAT )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * par1 = (QTextCharFormat *) _qt5xhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextCharFormat format() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_FORMAT )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCharFormat * ptr = new QTextCharFormat( obj->format (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCHARFORMAT" );
  }
}


/*
int row() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_ROW )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->row (  ) );
  }
}


/*
int column() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_COLUMN )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->column (  ) );
  }
}


/*
int rowSpan() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_ROWSPAN )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->rowSpan (  ) );
  }
}


/*
int columnSpan() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_COLUMNSPAN )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->columnSpan (  ) );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_ISVALID )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
QTextCursor firstCursorPosition() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_FIRSTCURSORPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->firstCursorPosition (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
QTextCursor lastCursorPosition() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_LASTCURSORPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->lastCursorPosition (  ) );
    _qt5xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}


/*
int firstPosition() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_FIRSTPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->firstPosition (  ) );
  }
}


/*
int lastPosition() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_LASTPOSITION )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lastPosition (  ) );
  }
}




/*
int tableCellFormatIndex() const
*/
HB_FUNC_STATIC( QTEXTTABLECELL_TABLECELLFORMATINDEX )
{
  QTextTableCell * obj = (QTextTableCell *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->tableCellFormatIndex (  ) );
  }
}



HB_FUNC_STATIC( QTEXTTABLECELL_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTTABLECELL_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTTABLECELL_NEWFROM );
}

HB_FUNC_STATIC( QTEXTTABLECELL_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTTABLECELL_NEWFROM );
}

HB_FUNC_STATIC( QTEXTTABLECELL_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTTABLECELL_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
