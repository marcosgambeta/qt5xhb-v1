%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QTapSensorSlots.h"

static SlotsQTapSensor * s = NULL;

SlotsQTapSensor::SlotsQTapSensor(QObject *parent) : QObject(parent)
{
}

SlotsQTapSensor::~SlotsQTapSensor()
{
}

void SlotsQTapSensor::returnDoubleTapEventsChanged(bool returnDoubleTapEvents)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "returnDoubleTapEventsChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preturnDoubleTapEvents = hb_itemPutL( NULL, returnDoubleTapEvents );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preturnDoubleTapEvents );
    hb_itemRelease( psender );
    hb_itemRelease( preturnDoubleTapEvents );
  }
#endif
}

HB_FUNC( QTAPSENSOR_ONRETURNDOUBLETAPEVENTSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQTapSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "returnDoubleTapEventsChanged(bool)", "returnDoubleTapEventsChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}
