/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QSensorGestureManagerSlots.h"


static SlotsQSensorGestureManager * s = NULL;

SlotsQSensorGestureManager::SlotsQSensorGestureManager(QObject *parent) : QObject(parent)
{
}

SlotsQSensorGestureManager::~SlotsQSensorGestureManager()
{
}

void SlotsQSensorGestureManager::newSensorGestureAvailable()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "newSensorGestureAvailable()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

HB_FUNC( QSENSORGESTUREMANAGER_ONNEWSENSORGESTUREAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensorGestureManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "newSensorGestureAvailable()", "newSensorGestureAvailable()" ) );
#else
  hb_retl(false);
#endif
}
