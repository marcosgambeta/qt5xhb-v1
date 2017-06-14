/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QAccelerometerReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD x
   METHOD setX
   METHOD y
   METHOD setY
   METHOD z
   METHOD setZ

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccelerometerReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAccelerometerReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QAccelerometerReading>
#endif
#endif


HB_FUNC_STATIC( QACCELEROMETERREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometerReading * obj = (QAccelerometerReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal x() const
*/
HB_FUNC_STATIC( QACCELEROMETERREADING_X )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometerReading * obj = (QAccelerometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->x () );
  }
#endif
}


/*
void setX(qreal x)
*/
HB_FUNC_STATIC( QACCELEROMETERREADING_SETX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometerReading * obj = (QAccelerometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setX ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal y() const
*/
HB_FUNC_STATIC( QACCELEROMETERREADING_Y )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometerReading * obj = (QAccelerometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->y () );
  }
#endif
}


/*
void setY(qreal y)
*/
HB_FUNC_STATIC( QACCELEROMETERREADING_SETY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometerReading * obj = (QAccelerometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setY ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal z() const
*/
HB_FUNC_STATIC( QACCELEROMETERREADING_Z )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometerReading * obj = (QAccelerometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->z () );
  }
#endif
}


/*
void setZ(qreal z)
*/
HB_FUNC_STATIC( QACCELEROMETERREADING_SETZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QAccelerometerReading * obj = (QAccelerometerReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setZ ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
