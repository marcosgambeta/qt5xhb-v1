/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACCELEROMETERREADING
#endif

CLASS QAccelerometer INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD accelerationMode
   METHOD setAccelerationMode
   METHOD reading

   METHOD onAccelerationModeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccelerometer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAccelerometer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAccelerometer>
#endif
#endif

/*
QAccelerometer(QObject *parent = 0)
*/
HB_FUNC_STATIC( QACCELEROMETER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * o = new QAccelerometer ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QACCELEROMETER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * obj = (QAccelerometer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
AccelerationMode accelerationMode() const
*/
HB_FUNC_STATIC( QACCELEROMETER_ACCELERATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * obj = (QAccelerometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->accelerationMode () );
  }
#endif
}


/*
void setAccelerationMode(AccelerationMode accelerationMode)
*/
HB_FUNC_STATIC( QACCELEROMETER_SETACCELERATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * obj = (QAccelerometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAccelerationMode ( (QAccelerometer::AccelerationMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QAccelerometerReading *reading() const
*/
HB_FUNC_STATIC( QACCELEROMETER_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * obj = (QAccelerometer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccelerometerReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QACCELEROMETERREADING" );
  }
#endif
}




#pragma ENDDUMP
