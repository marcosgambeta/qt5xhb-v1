/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QGyroscopeFilter INHERIT QSensorFilter

   METHOD delete
   METHOD filter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGyroscopeFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QGyroscopeFilter>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QGyroscopeFilter>
#endif
#endif


HB_FUNC_STATIC( QGYROSCOPEFILTER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeFilter * obj = (QGyroscopeFilter *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool filter(QGyroscopeReading *reading) = 0
*/
HB_FUNC_STATIC( QGYROSCOPEFILTER_FILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QGyroscopeFilter * obj = (QGyroscopeFilter *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QGyroscopeReading * par1 = (QGyroscopeReading *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->filter ( par1 ) );
  }
#endif
}



#pragma ENDDUMP
