%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

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
