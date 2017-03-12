/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QAbstractNativeEventFilter INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractNativeEventFilter
   DATA class_flags INIT 0
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
#include "qt5xhb_clsid.h"
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
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    void * par2 = (void *) hb_parptr(2);
    long par3;
    hb_retl( obj->nativeEventFilter ( *par1, par2, &par3 ) );
    hb_stornl( par3, 3 );
  }
}



#pragma ENDDUMP
