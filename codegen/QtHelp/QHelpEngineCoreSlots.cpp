%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQHelpEngineCore::currentFilterChanged( const QString & newFilter )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentFilterChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewFilter = hb_itemPutC( NULL, QSTRINGTOSTRING(newFilter) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewFilter );
    hb_itemRelease( psender );
    hb_itemRelease( pnewFilter );
  }
}

$slot=|setupFinished()

$slot=|setupStarted()

void SlotsQHelpEngineCore::warning( const QString & msg )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "warning(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmsg = hb_itemPutC( NULL, QSTRINGTOSTRING(msg) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmsg );
    hb_itemRelease( psender );
    hb_itemRelease( pmsg );
  }
}

$signalMethod=|currentFilterChanged(QString)
$signalMethod=|setupFinished()
$signalMethod=|setupStarted()
$signalMethod=|warning(QString)

$endSlotsClass
