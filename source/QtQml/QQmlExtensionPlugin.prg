/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QQmlExtensionPlugin INHERIT QObject

   METHOD delete
   METHOD initializeEngine
   METHOD registerTypes

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlExtensionPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlExtensionPlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QQmlExtensionPlugin>
#endif


HB_FUNC_STATIC( QQMLEXTENSIONPLUGIN_DELETE )
{
  QQmlExtensionPlugin * obj = (QQmlExtensionPlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void initializeEngine(QQmlEngine * engine, const char * uri)
*/
HB_FUNC_STATIC( QQMLEXTENSIONPLUGIN_INITIALIZEENGINE )
{
  QQmlExtensionPlugin * obj = (QQmlExtensionPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QQmlEngine * par1 = (QQmlEngine *) _qt5xhb_itemGetPtr(1);
    obj->initializeEngine ( par1, PCONSTCHAR(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void registerTypes(const char * uri) = 0
*/
HB_FUNC_STATIC( QQMLEXTENSIONPLUGIN_REGISTERTYPES )
{
  QQmlExtensionPlugin * obj = (QQmlExtensionPlugin *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->registerTypes ( PCONSTCHAR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
