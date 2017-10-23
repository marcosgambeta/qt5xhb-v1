/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QWebPluginFactory INHERIT QObject

   METHOD delete
   METHOD create
   METHOD refreshPlugins

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebPluginFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebPluginFactory>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebPluginFactory>
#endif


HB_FUNC_STATIC( QWEBPLUGINFACTORY_DELETE )
{
  QWebPluginFactory * obj = (QWebPluginFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QObject * create ( const QString & mimeType, const QUrl & url, const QStringList & argumentNames, const QStringList & argumentValues ) const = 0
*/
HB_FUNC_STATIC( QWEBPLUGINFACTORY_CREATE )
{
  QWebPluginFactory * obj = (QWebPluginFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->create ( PQSTRING(1), *PQURL(2), PQSTRINGLIST(3), PQSTRINGLIST(4) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}



/*
virtual void refreshPlugins ()
*/
HB_FUNC_STATIC( QWEBPLUGINFACTORY_REFRESHPLUGINS )
{
  QWebPluginFactory * obj = (QWebPluginFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->refreshPlugins ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
