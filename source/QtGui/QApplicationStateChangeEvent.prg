/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QApplicationStateChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

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
  int par1 = hb_parni(1);
  QApplicationStateChangeEvent * o = new QApplicationStateChangeEvent ( (Qt::ApplicationState) par1 );
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