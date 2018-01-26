%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|aboutToReleaseGpuResources()

$slot=|aboutToUseGpuResources()

void SlotsQApplication::commitDataRequest(QSessionManager & manager)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "commitDataRequest(QSessionManager)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmanager = hb_itemPutPtr( NULL, (QSessionManager *) &manager );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmanager );
    hb_itemRelease( psender );
    hb_itemRelease( pmanager );
  }
}

void SlotsQApplication::focusChanged(QWidget * old, QWidget * now)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusChanged(QWidget*,QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pold = hb_itemPutPtr( NULL, (QWidget *) old );
    PHB_ITEM pnow = hb_itemPutPtr( NULL, (QWidget *) now );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pold, pnow );
    hb_itemRelease( psender );
    hb_itemRelease( pold );
    hb_itemRelease( pnow );
  }
}

$slot=|fontDatabaseChanged()

$slot=|lastWindowClosed()

void SlotsQApplication::saveStateRequest(QSessionManager & manager)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "saveStateRequest(QSessionManager)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmanager = hb_itemPutPtr( NULL, (QSessionManager *) &manager );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmanager );
    hb_itemRelease( psender );
    hb_itemRelease( pmanager );
  }
}

$signalMethod=|aboutToReleaseGpuResources()
$signalMethod=|aboutToUseGpuResources()
$signalMethod=|commitDataRequest(QSessionManager)
$signalMethod=|focusChanged(QWidget*,QWidget*)
$signalMethod=|fontDatabaseChanged()
$signalMethod=|lastWindowClosed()
$signalMethod=|saveStateRequest(QSessioManager)

$endSlotsClass
