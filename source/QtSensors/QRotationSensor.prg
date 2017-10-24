/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QROTATIONREADING
#endif

CLASS QRotationSensor INHERIT QSensor

   METHOD new
   METHOD delete
   METHOD reading
   METHOD hasZ
   METHOD setHasZ

   METHOD onHasZChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRotationSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QRotationSensor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QRotationSensor>
#endif
#endif

/*
QRotationSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QROTATIONSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * o = new QRotationSensor ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QROTATIONSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRotationReading *reading() const
*/
HB_FUNC_STATIC( QROTATIONSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRotationReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QROTATIONREADING" );
  }
#endif
}


/*
bool hasZ() const
*/
HB_FUNC_STATIC( QROTATIONSENSOR_HASZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->hasZ () );
  }
#endif
}


/*
void setHasZ(bool hasZ)
*/
HB_FUNC_STATIC( QROTATIONSENSOR_SETHASZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHasZ ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
