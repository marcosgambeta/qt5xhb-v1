/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS HEventFilter INHERIT QObject

   METHOD new
   METHOD delete

   METHOD setEventFilterCB

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HEventFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include "HEventFilter.h"

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

/*
HEventFilter( QObject *parent = NULL )
*/
HB_FUNC_STATIC( HEVENTFILTER_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    HEventFilter * obj = new HEventFilter( OPQOBJECT( 1, NULL ) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~HEventFilter()
*/
HB_FUNC_STATIC( HEVENTFILTER_DELETE )
{
  HEventFilter * obj = qobject_cast<HEventFilter*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setEventFilterCB ( PHB_ITEM block )
*/
HB_FUNC_STATIC( HEVENTFILTER_SETEVENTFILTERCB )
{
  HEventFilter * obj = qobject_cast<HEventFilter*>(Qt5xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ( HB_ISBLOCK(1) || HB_ISSYMBOL(1) ) )
    {
#endif
      obj->setEventFilterCB( PBLOCKORSYMBOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
