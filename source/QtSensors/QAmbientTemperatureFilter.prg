/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QAmbientTemperatureFilter INHERIT QSensorFilter

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAmbientTemperatureFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAmbientTemperatureFilter>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAmbientTemperatureFilter>
#endif
#endif


HB_FUNC_STATIC( QAMBIENTTEMPERATUREFILTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureFilter * obj = (QAmbientTemperatureFilter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
virtual bool filter(QAmbientTemperatureReading *reading) = 0
*/
HB_FUNC_STATIC( QAMBIENTTEMPERATUREFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAmbientTemperatureFilter * obj = (QAmbientTemperatureFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAmbientTemperatureReading * par1 = (QAmbientTemperatureReading *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->filter ( par1 ) );
  }
#endif
}



#pragma ENDDUMP
