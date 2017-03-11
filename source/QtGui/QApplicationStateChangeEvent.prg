/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QApplicationStateChangeEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QApplicationStateChangeEvent
   DATA class_flags INIT 0
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
#include <QApplicationStateChangeEvent>
#endif

/*
QApplicationStateChangeEvent(Qt::ApplicationState state)
*/
HB_FUNC_STATIC( QAPPLICATIONSTATECHANGEEVENT_NEW )
{
  int par1 = hb_parni(1);
  QApplicationStateChangeEvent * o = new QApplicationStateChangeEvent (  (Qt::ApplicationState) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QApplicationStateChangeEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}



/*
Qt::ApplicationState applicationState() const
*/
HB_FUNC_STATIC( QAPPLICATIONSTATECHANGEEVENT_APPLICATIONSTATE )
{
  QApplicationStateChangeEvent * obj = (QApplicationStateChangeEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->applicationState (  ) );
  }
}



#pragma ENDDUMP
