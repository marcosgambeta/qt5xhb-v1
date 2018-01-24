%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQCameraFlashControl::flashReady(bool ready)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flashReady(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pready = hb_itemPutL( NULL, ready );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pready );
    hb_itemRelease( psender );
    hb_itemRelease( pready );
  }
}

HB_FUNC( QCAMERAFLASHCONTROL_ONFLASHREADY )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFlashControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "flashReady(bool)", "flashReady(bool)" ) );
}

$endSlotsClass
