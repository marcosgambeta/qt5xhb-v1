/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPIXMAP
REQUEST QPOINT
REQUEST QMIMEDATA
REQUEST QOBJECT

CLASS QDrag INHERIT QObject

   DATA class_id INIT Class_Id_QDrag
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDrag>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDrag>
#endif
#endif

#include <QPoint>
#include <QPixmap>

/*
QDrag(QObject * dragSource)
*/
HB_FUNC_STATIC( QDRAG_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject * par1 = (QObject *) _qtxhb_itemGetPtr(1);
  QDrag * o = new QDrag ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDrag *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QDRAG_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
Qt::DropAction defaultAction() const
*/
HB_FUNC_STATIC( QDRAG_DEFAULTACTION )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->defaultAction (  );
    hb_retni( i );
  }
}


/*
QPixmap dragCursor(Qt::DropAction action) const
*/
HB_FUNC_STATIC( QDRAG_DRAGCURSOR )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->dragCursor (  (Qt::DropAction) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
*/
HB_FUNC_STATIC( QDRAG_EXEC1 )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::MoveAction : hb_parni(1);
    int i = obj->exec (  (Qt::DropActions) par1 );
    hb_retni( i );
  }
}

/*
Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)
*/
HB_FUNC_STATIC( QDRAG_EXEC2 )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int i = obj->exec (  (Qt::DropActions) par1,  (Qt::DropAction) par2 );
    hb_retni( i );
  }
}


//[1]Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
//[2]Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
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
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->hotSpot (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QMimeData * mimeData() const
*/
HB_FUNC_STATIC( QDRAG_MIMEDATA )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMimeData * ptr = obj->mimeData (  );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}


/*
QPixmap pixmap() const
*/
HB_FUNC_STATIC( QDRAG_PIXMAP )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
void setDragCursor(const QPixmap & cursor, Qt::DropAction action)
*/
HB_FUNC_STATIC( QDRAG_SETDRAGCURSOR )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    obj->setDragCursor ( *par1,  (Qt::DropAction) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHotSpot(const QPoint & hotspot)
*/
HB_FUNC_STATIC( QDRAG_SETHOTSPOT )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    obj->setHotSpot ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMimeData(QMimeData * data)
*/
HB_FUNC_STATIC( QDRAG_SETMIMEDATA )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMimeData * par1 = (QMimeData *) _qtxhb_itemGetPtr(1);
    obj->setMimeData ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixmap(const QPixmap & pixmap)
*/
HB_FUNC_STATIC( QDRAG_SETPIXMAP )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) _qtxhb_itemGetPtr(1);
    obj->setPixmap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QObject * source() const
*/
HB_FUNC_STATIC( QDRAG_SOURCE )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->source (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
Qt::DropActions supportedActions() const
*/
HB_FUNC_STATIC( QDRAG_SUPPORTEDACTIONS )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->supportedActions (  );
    hb_retni( i );
  }
}


/*
QObject * target() const
*/
HB_FUNC_STATIC( QDRAG_TARGET )
{
  QDrag * obj = (QDrag *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->target (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}




#pragma ENDDUMP
