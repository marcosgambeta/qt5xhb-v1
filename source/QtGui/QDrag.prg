/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QPOINT
REQUEST QMIMEDATA
REQUEST QOBJECT
#endif

CLASS QDrag INHERIT QObject

   METHOD new
   METHOD delete
   METHOD defaultAction
   METHOD dragCursor
   METHOD exec1
   METHOD exec2
   METHOD exec
   METHOD hotSpot
   METHOD mimeData
   METHOD pixmap
   METHOD setDragCursor
   METHOD setHotSpot
   METHOD setMimeData
   METHOD setPixmap
   METHOD source
   METHOD supportedActions
   METHOD target

   METHOD onActionChanged
   METHOD onTargetChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDrag
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDrag>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDrag>
#endif

#include <QPoint>
#include <QPixmap>

/*
QDrag(QObject * dragSource)
*/
HB_FUNC_STATIC( QDRAG_NEW )
{
  QDrag * o = new QDrag ( PQOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QDRAG_DELETE )
{
  QDrag * obj = (QDrag *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
Qt::DropAction defaultAction() const
*/
HB_FUNC_STATIC( QDRAG_DEFAULTACTION )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultAction () );
  }
}


/*
QPixmap dragCursor(Qt::DropAction action) const
*/
HB_FUNC_STATIC( QDRAG_DRAGCURSOR )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->dragCursor ( (Qt::DropAction) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
*/
HB_FUNC_STATIC( QDRAG_EXEC1 )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::MoveAction : hb_parni(1);
    hb_retni( obj->exec ( (Qt::DropActions) par1 ) );
  }
}

/*
Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)
*/
HB_FUNC_STATIC( QDRAG_EXEC2 )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retni( obj->exec ( (Qt::DropActions) par1, (Qt::DropAction) hb_parni(2) ) );
  }
}


//[1]Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
//[2]Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    HB_FUNC_EXEC( QDRAG_EXEC1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDRAG_EXEC2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPoint hotSpot() const
*/
HB_FUNC_STATIC( QDRAG_HOTSPOT )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->hotSpot () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QMimeData * mimeData() const
*/
HB_FUNC_STATIC( QDRAG_MIMEDATA )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMimeData * ptr = obj->mimeData ();
    _qt5xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}


/*
QPixmap pixmap() const
*/
HB_FUNC_STATIC( QDRAG_PIXMAP )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap () );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
void setDragCursor(const QPixmap & cursor, Qt::DropAction action)
*/
HB_FUNC_STATIC( QDRAG_SETDRAGCURSOR )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDragCursor ( *PQPIXMAP(1), (Qt::DropAction) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHotSpot(const QPoint & hotspot)
*/
HB_FUNC_STATIC( QDRAG_SETHOTSPOT )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHotSpot ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMimeData(QMimeData * data)
*/
HB_FUNC_STATIC( QDRAG_SETMIMEDATA )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMimeData * par1 = (QMimeData *) _qt5xhb_itemGetPtr(1);
    obj->setMimeData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixmap(const QPixmap & pixmap)
*/
HB_FUNC_STATIC( QDRAG_SETPIXMAP )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPixmap ( *PQPIXMAP(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject * source() const
*/
HB_FUNC_STATIC( QDRAG_SOURCE )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->source ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
Qt::DropActions supportedActions() const
*/
HB_FUNC_STATIC( QDRAG_SUPPORTEDACTIONS )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedActions () );
  }
}


/*
QObject * target() const
*/
HB_FUNC_STATIC( QDRAG_TARGET )
{
  QDrag * obj = (QDrag *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->target ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}




#pragma ENDDUMP
