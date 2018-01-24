%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQDBusPendingCallWatcher::finished(QDBusPendingCallWatcher *self)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QDBusPendingCallWatcher*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pself );
    hb_itemRelease( psender );
    hb_itemRelease( pself );
  }
}

HB_FUNC( QDBUSPENDINGCALLWATCHER_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQDBusPendingCallWatcher(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished(QDBusPendingCallWatcher*)", "finished(QDBusPendingCallWatcher*)" ) );
}

$endSlotsClass
