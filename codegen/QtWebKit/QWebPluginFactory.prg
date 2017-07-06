$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QWebPluginFactory INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD refreshPlugins

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

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