/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORGESTURERECOGNIZER
#endif

CLASS QSensorGestureManager INHERIT QObject

   DATA class_id INIT Class_Id_QSensorGestureManager
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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

#include "qt5xhb_clsid.h"
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
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QSensorGestureManager * o = new QSensorGestureManager ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSensorGestureManager *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retl( obj->registerSensorGestureRecognizer ( par1 ) );
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
    QStringList strl = obj->gestureIds (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
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
    QString par1 = QLatin1String( hb_parc(1) );
    QStringList strl = obj->recognizerSignals ( par1 );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
#endif
}


/*
static QSensorGestureRecognizer *sensorGestureRecognizer(const QString &id)
*/
HB_FUNC_STATIC( QSENSORGESTUREMANAGER_SENSORGESTURERECOGNIZER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QSensorGestureRecognizer * ptr = QSensorGestureManager::sensorGestureRecognizer ( par1 );
  _qt5xhb_createReturnClass ( ptr, "QSENSORGESTURERECOGNIZER" );
#endif
}




#pragma ENDDUMP
