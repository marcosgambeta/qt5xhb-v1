/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCESSIBLEBRIDGE
#endif

CLASS QAccessibleBridgePlugin INHERIT QObject

   DATA class_id INIT Class_Id_QAccessibleBridgePlugin
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleBridgePlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAccessibleBridgePlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAccessibleBridgePlugin>
#endif


HB_FUNC_STATIC( QACCESSIBLEBRIDGEPLUGIN_DELETE )
{
  QAccessibleBridgePlugin * obj = (QAccessibleBridgePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QAccessibleBridge *create(const QString &key) = 0
*/
HB_FUNC_STATIC( QACCESSIBLEBRIDGEPLUGIN_CREATE )
{
  QAccessibleBridgePlugin * obj = (QAccessibleBridgePlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QAccessibleBridge * ptr = obj->create ( par1 );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEBRIDGE" );
  }
}



#pragma ENDDUMP
