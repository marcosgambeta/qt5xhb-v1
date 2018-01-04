/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIRPROXIMITYREADING
#endif

CLASS QIRProximitySensor INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIRProximitySensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QIRProximitySensor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QIRProximitySensor>
#endif
#endif

/*
QIRProximitySensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QIRPROXIMITYSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximitySensor * o = new QIRProximitySensor ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}


HB_FUNC_STATIC( QIRPROXIMITYSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximitySensor * obj = (QIRProximitySensor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QIRProximityReading *reading() const
*/
HB_FUNC_STATIC( QIRPROXIMITYSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QIRProximitySensor * obj = (QIRProximitySensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIRProximityReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QIRPROXIMITYREADING" );
  }
#endif
}



#pragma ENDDUMP
