/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTiltReading INHERIT QSensorReading

   METHOD delete
   METHOD yRotation
   METHOD setYRotation
   METHOD xRotation
   METHOD setXRotation

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTiltReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTiltReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QTiltReading>
#endif
#endif


HB_FUNC_STATIC( QTILTREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal yRotation() const
*/
HB_FUNC_STATIC( QTILTREADING_YROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->yRotation () );
  }
#endif
}


/*
void setYRotation(qreal y)
*/
HB_FUNC_STATIC( QTILTREADING_SETYROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setYRotation ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal xRotation() const
*/
HB_FUNC_STATIC( QTILTREADING_XROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->xRotation () );
  }
#endif
}


/*
void setXRotation(qreal x)
*/
HB_FUNC_STATIC( QTILTREADING_SETXROTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QTiltReading * obj = (QTiltReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setXRotation ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
