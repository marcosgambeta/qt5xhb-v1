%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQGeoPositionInfoSource::positionUpdated(const QGeoPositionInfo &update)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "positionUpdated(QGeoPositionInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pupdate = hb_itemPutPtr( NULL, (QGeoPositionInfo *) &update );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pupdate );
    hb_itemRelease( psender );
    hb_itemRelease( pupdate );
  }
#endif
}

void SlotsQGeoPositionInfoSource::updateTimeout()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updateTimeout()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQGeoPositionInfoSource::error(QGeoPositionInfoSource::Error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoPositionInfoSource::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

$signalMethod=5,2,0|positionUpdated(QGeoPositionInfo)
$signalMethod=5,2,0|updateTimeout()
$signalMethod=5,2,0|error(QGeoPositionInfoSource::Error)

$endSlotsClass
