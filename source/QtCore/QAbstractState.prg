/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTATEMACHINE
REQUEST QSTATE
#endif

CLASS QAbstractState INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD machine
   METHOD parentState

   METHOD onEntered
   METHOD onExited

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractState>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractState>
#endif

HB_FUNC_STATIC( QABSTRACTSTATE_DELETE )
{
  QAbstractState * obj = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QStateMachine * machine () const
*/
HB_FUNC_STATIC( QABSTRACTSTATE_MACHINE )
{
  QAbstractState * obj = (QAbstractState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStateMachine * ptr = obj->machine ();
    _qt5xhb_createReturnClass ( ptr, "QSTATEMACHINE" );
  }
}

/*
QState * parentState () const
*/
HB_FUNC_STATIC( QABSTRACTSTATE_PARENTSTATE )
{
  QAbstractState * obj = (QAbstractState *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QState * ptr = obj->parentState ();
    _qt5xhb_createReturnClass ( ptr, "QSTATE" );
  }
}

#pragma ENDDUMP
