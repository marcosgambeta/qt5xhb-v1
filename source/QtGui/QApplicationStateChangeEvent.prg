/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QApplicationStateChangeEvent INHERIT QEvent

   METHOD new
   METHOD applicationState

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QApplicationStateChangeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QApplicationStateChangeEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QApplicationStateChangeEvent>
#endif

/*
QApplicationStateChangeEvent(Qt::ApplicationState state)
*/
HB_FUNC_STATIC( QAPPLICATIONSTATECHANGEEVENT_NEW )
{
  QApplicationStateChangeEvent * o = new QApplicationStateChangeEvent ( (Qt::ApplicationState) hb_parni(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}



/*
Qt::ApplicationState applicationState() const
*/
HB_FUNC_STATIC( QAPPLICATIONSTATECHANGEEVENT_APPLICATIONSTATE )
{
  QApplicationStateChangeEvent * obj = (QApplicationStateChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->applicationState () );
  }
}



#pragma ENDDUMP
