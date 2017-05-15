/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QCompassReading INHERIT QSensorReading

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD azimuth
   METHOD setAzimuth
   METHOD calibrationLevel
   METHOD setCalibrationLevel

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCompassReading
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QCompassReading>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QCompassReading>
#endif
#endif


HB_FUNC_STATIC( QCOMPASSREADING_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal azimuth() const
*/
HB_FUNC_STATIC( QCOMPASSREADING_AZIMUTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->azimuth () );
  }
#endif
}


/*
void setAzimuth(qreal azimuth)
*/
HB_FUNC_STATIC( QCOMPASSREADING_SETAZIMUTH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAzimuth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal calibrationLevel() const
*/
HB_FUNC_STATIC( QCOMPASSREADING_CALIBRATIONLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->calibrationLevel () );
  }
#endif
}


/*
void setCalibrationLevel(qreal calibrationLevel)
*/
HB_FUNC_STATIC( QCOMPASSREADING_SETCALIBRATIONLEVEL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QCompassReading * obj = (QCompassReading *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCalibrationLevel ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
