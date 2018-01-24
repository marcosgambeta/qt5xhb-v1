%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QLightSensorSlots.h"

static SlotsQLightSensor * s = NULL;

SlotsQLightSensor::SlotsQLightSensor(QObject *parent) : QObject(parent)
{
}

SlotsQLightSensor::~SlotsQLightSensor()
{
}

void SlotsQLightSensor::fieldOfViewChanged(qreal fieldOfView)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fieldOfViewChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfieldOfView = hb_itemPutND( NULL, fieldOfView );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfieldOfView );
    hb_itemRelease( psender );
    hb_itemRelease( pfieldOfView );
  }
#endif
}

HB_FUNC( QLIGHTSENSOR_ONFIELDOFVIEWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQLightSensor(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "fieldOfViewChanged(qreal)", "fieldOfViewChanged(qreal)" ) );
#else
  hb_retl(false);
#endif
}
