%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQApplication::aboutToReleaseGpuResources()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToReleaseGpuResources()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQApplication::aboutToUseGpuResources()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToUseGpuResources()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

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

void SlotsQApplication::fontDatabaseChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fontDatabaseChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQApplication::lastWindowClosed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lastWindowClosed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

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
