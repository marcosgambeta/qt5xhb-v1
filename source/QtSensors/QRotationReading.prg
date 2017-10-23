/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QRotationReading INHERIT QSensorReading

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD x
   METHOD y
   METHOD z
   METHOD setFromEuler

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRotationReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QRotationReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QRotationReading>
#endif
#endif


HB_FUNC_STATIC( QROTATIONREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QROTATIONREADING_X )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->x () );
  }
#endif
}


/*
qreal y() const
*/
HB_FUNC_STATIC( QROTATIONREADING_Y )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->y () );
  }
#endif
}


/*
qreal z() const
*/
HB_FUNC_STATIC( QROTATIONREADING_Z )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->z () );
  }
#endif
}


/*
void setFromEuler(qreal x, qreal y, qreal z)
*/
HB_FUNC_STATIC( QROTATIONREADING_SETFROMEULER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationReading * obj = (QRotationReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFromEuler ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
