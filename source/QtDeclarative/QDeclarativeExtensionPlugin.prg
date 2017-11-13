/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QDeclarativeExtensionPlugin INHERIT QObject

   METHOD initializeEngine
   METHOD registerTypes

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeExtensionPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeExtensionPlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeExtensionPlugin>
#endif

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
