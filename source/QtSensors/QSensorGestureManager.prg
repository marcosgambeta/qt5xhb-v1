/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORGESTURERECOGNIZER
#endif

CLASS QSensorGestureManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD registerSensorGestureRecognizer
   METHOD gestureIds
   METHOD recognizerSignals
   METHOD sensorGestureRecognizer

   METHOD onNewSensorGestureAvailable

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensorGestureManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGestureManager>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensorGestureManager>
#endif
#endif

/*
QSensorGestureManager(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureManager * o = new QSensorGestureManager ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QSENSORGESTUREMANAGER_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureManager * obj = (QSensorGestureManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool registerSensorGestureRecognizer(QSensorGestureRecognizer *recognizer)
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_REGISTERSENSORGESTURERECOGNIZER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureManager * obj = (QSensorGestureManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorGestureRecognizer * par1 = (QSensorGestureRecognizer *) _qt5xhb_itemGetPtr(1);
    RBOOL( obj->registerSensorGestureRecognizer ( par1 ) );
  }
#endif
}


/*
QStringList gestureIds() const
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_GESTUREIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureManager * obj = (QSensorGestureManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->gestureIds () );
  }
#endif
}


/*
QStringList recognizerSignals(const QString &recognizerId) const
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_RECOGNIZERSIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureManager * obj = (QSensorGestureManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->recognizerSignals ( PQSTRING(1) ) );
  }
#endif
}


/*
static QSensorGestureRecognizer *sensorGestureRecognizer(const QString &id)
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_SENSORGESTURERECOGNIZER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * ptr = QSensorGestureManager::sensorGestureRecognizer ( PQSTRING(1) );
  _qt5xhb_createReturnClass ( ptr, "QSENSORGESTURERECOGNIZER" );
#endif
}




#pragma ENDDUMP
