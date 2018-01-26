%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|aboutToActivate()

void SlotsQMdiSubWindow::windowStateChanged( Qt::WindowStates oldState, Qt::WindowStates newState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "windowStateChanged(Qt::WindowStates,Qt::WindowStates)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM poldState = hb_itemPutNI( NULL, (int) oldState );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, poldState, pnewState );
    hb_itemRelease( psender );
    hb_itemRelease( poldState );
    hb_itemRelease( pnewState );
  }
}

$signalMethod=|aboutToActivate()
$signalMethod=|windowStateChanged(Qt::WindowStates,Qt::WindowStates)

$endSlotsClass
