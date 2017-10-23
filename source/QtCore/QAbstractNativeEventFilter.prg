/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QAbstractNativeEventFilter INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD nativeEventFilter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractNativeEventFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractNativeEventFilter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractNativeEventFilter>
#endif

HB_FUNC_STATIC( QABSTRACTNATIVEEVENTFILTER_DELETE )
{
  QAbstractNativeEventFilter * obj = (QAbstractNativeEventFilter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual bool nativeEventFilter(const QByteArray & eventType, void * message, long * result) = 0
*/
HB_FUNC_STATIC( QABSTRACTNATIVEEVENTFILTER_NATIVEEVENTFILTER )
{
  QAbstractNativeEventFilter * obj = (QAbstractNativeEventFilter *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQBYTEARRAY(1) && ISPOINTER(2) && ISNUM(3) )
    {
      long par3;
      RBOOL( obj->nativeEventFilter ( *PQBYTEARRAY(1), (void *) hb_parptr(2), &par3 ) );
      hb_stornl( par3, 3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
