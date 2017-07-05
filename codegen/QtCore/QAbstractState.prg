$header

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

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
