/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACCELEROMETERREADING

CLASS QAccelerometer INHERIT QSensor

   DATA class_id INIT Class_Id_QAccelerometer
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAccelerometer>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

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
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qtxhb_itemGetPtr(1);
  QAccelerometer * o = new QAccelerometer ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QAccelerometer *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
  QAccelerometer * obj = (QAccelerometer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->accelerationMode (  );
    hb_retni( i );
  }
#endif
}


/*
void setAccelerationMode(AccelerationMode accelerationMode)
*/
HB_FUNC_STATIC( QACCELEROMETER_SETACCELERATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometer * obj = (QAccelerometer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAccelerationMode (  (QAccelerometer::AccelerationMode) par1 );
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
  QAccelerometer * obj = (QAccelerometer *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccelerometerReading * ptr = obj->reading (  );
    _qt4xhb_createReturnClass ( ptr, "QACCELEROMETERREADING" );
  }
#endif
}




#pragma ENDDUMP
