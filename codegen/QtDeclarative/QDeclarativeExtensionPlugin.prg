$header

#include "hbclass.ch"

CLASS QDeclarativeExtensionPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD initializeEngine
   METHOD registerTypes

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
virtual void initializeEngine ( QDeclarativeEngine * engine, const char * uri )
*/
HB_FUNC_STATIC( QDECLARATIVEEXTENSIONPLUGIN_INITIALIZEENGINE )
{
  QDeclarativeExtensionPlugin * obj = (QDeclarativeExtensionPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQDECLARATIVEENGINE(1) && ISCHAR(2) )
    {
      QDeclarativeEngine * par1 = (QDeclarativeEngine *) _qt5xhb_itemGetPtr(1);
      obj->initializeEngine ( par1, PCONSTCHAR(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void registerTypes ( const char * uri ) = 0
*/
HB_FUNC_STATIC( QDECLARATIVEEXTENSIONPLUGIN_REGISTERTYPES )
{
  QDeclarativeExtensionPlugin * obj = (QDeclarativeExtensionPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->registerTypes ( PCONSTCHAR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
