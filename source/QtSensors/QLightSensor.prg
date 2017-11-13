/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLIGHTREADING
#endif

CLASS QLightSensor INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading
   METHOD fieldOfView
   METHOD setFieldOfView

   METHOD onFieldOfViewChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLightSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QLightSensor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QLightSensor>
#endif
#endif

/*
QLightSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QLIGHTSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * o = new QLightSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QLIGHTSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * obj = (QLightSensor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QLightReading *reading() const
*/
HB_FUNC_STATIC( QLIGHTSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * obj = (QLightSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLightReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QLIGHTREADING" );
  }
#endif
}


/*
qreal fieldOfView() const
*/
HB_FUNC_STATIC( QLIGHTSENSOR_FIELDOFVIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * obj = (QLightSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->fieldOfView () );
  }
#endif
}


/*
void setFieldOfView(qreal fieldOfView)
*/
HB_FUNC_STATIC( QLIGHTSENSOR_SETFIELDOFVIEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QLightSensor * obj = (QLightSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFieldOfView ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
