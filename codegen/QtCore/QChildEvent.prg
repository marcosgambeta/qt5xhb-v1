/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QChildEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD added
   METHOD child
   METHOD polished
   METHOD removed

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QChildEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QChildEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QChildEvent>
#endif

/*
QChildEvent(Type type, QObject * child)
*/
HB_FUNC_STATIC( QCHILDEVENT_NEW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQOBJECT(2) )
  {
    QChildEvent * o = new QChildEvent ( (QEvent::Type) hb_parni(1), PQOBJECT(2) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCHILDEVENT_DELETE )
{
  QChildEvent * obj = (QChildEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool added() const
*/
HB_FUNC_STATIC( QCHILDEVENT_ADDED )
{
  QChildEvent * obj = (QChildEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->added () );
  }
}

/*
QObject * child() const
*/
HB_FUNC_STATIC( QCHILDEVENT_CHILD )
{
  QChildEvent * obj = (QChildEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->child ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
bool polished() const
*/
HB_FUNC_STATIC( QCHILDEVENT_POLISHED )
{
  QChildEvent * obj = (QChildEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->polished () );
  }
}

/*
bool removed() const
*/
HB_FUNC_STATIC( QCHILDEVENT_REMOVED )
{
  QChildEvent * obj = (QChildEvent *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->removed () );
  }
}

#pragma ENDDUMP
