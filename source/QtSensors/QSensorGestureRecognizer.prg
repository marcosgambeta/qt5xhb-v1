/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QSensorGestureRecognizer INHERIT QObject

   METHOD delete
   METHOD id
   METHOD isActive
   METHOD startBackend
   METHOD stopBackend
   METHOD createBackend
   METHOD gestureSignals

   METHOD onDetected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorGestureRecognizer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGestureRecognizer>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGestureRecognizer>
#endif
#endif


HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString id() const = 0
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_ID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->id () );
  }
#endif
}


/*
virtual bool isActive() = 0
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
#endif
}


/*
void startBackend()
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_STARTBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->startBackend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void stopBackend()
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_STOPBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stopBackend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void createBackend()
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_CREATEBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->createBackend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QStringList gestureSignals() const
*/
HB_FUNC_STATIC( QSENSORGESTURERECOGNIZER_GESTURESIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->gestureSignals () );
  }
#endif
}




#pragma ENDDUMP
