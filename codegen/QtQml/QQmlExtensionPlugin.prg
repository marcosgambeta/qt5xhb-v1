$header

#include "hbclass.ch"

CLASS QQmlExtensionPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD initializeEngine
   METHOD registerTypes

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

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