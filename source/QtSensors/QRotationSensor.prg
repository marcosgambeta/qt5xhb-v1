/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
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

PROCEDURE destroyObject() CLASS QRotationSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QRotationSensor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSensors/QRotationSensor>
#endif
#endif

/*
QRotationSensor(QObject *parent = 0)
*/
HB_FUNC_STATIC( QROTATIONSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QRotationSensor * obj = new QRotationSensor( OPQOBJECT(1,0) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QROTATIONSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
  QRotationSensor * obj = (QRotationSensor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRotationReading * ptr = obj->reading();
      Qt5xHb::createReturnQObjectClass( ptr, "QROTATIONREADING" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool hasZ() const
*/
HB_FUNC_STATIC( QROTATIONSENSOR_HASZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasZ() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setHasZ(bool hasZ)
*/
HB_FUNC_STATIC( QROTATIONSENSOR_SETHASZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensor * obj = (QRotationSensor *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setHasZ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

void QRotationSensorSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QROTATIONSENSOR_ONHASZCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QRotationSensorSlots_connect_signal( "hasZChanged(bool)", "hasZChanged(bool)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
