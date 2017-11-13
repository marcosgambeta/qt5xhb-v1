/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICONENGINE
#endif

CLASS QIconEnginePlugin INHERIT QObject

   METHOD delete
   METHOD create

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIconEnginePlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QIconEnginePlugin>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QIconEnginePlugin>
#endif

HB_FUNC_STATIC( QICONENGINEPLUGIN_DELETE )
{
  QIconEnginePlugin * obj = (QIconEnginePlugin *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QIconEngine * create(const QString & filename = QString()) = 0
*/
HB_FUNC_STATIC( QICONENGINEPLUGIN_CREATE )
{
  QIconEnginePlugin * obj = (QIconEnginePlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTCHAR(1) )
    {
      QIconEngine * ptr = obj->create ( OPQSTRING(1,QString()) );
      _qt5xhb_createReturnClass ( ptr, "QICONENGINE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
