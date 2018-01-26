%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQSystemTrayIcon::activated(QSystemTrayIcon::ActivationReason reason)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QSystemTrayIcon::ActivationReason)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preason = hb_itemPutNI( NULL, (int) reason );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preason );
    hb_itemRelease( psender );
    hb_itemRelease( preason );
  }
}

$slot=|messageClicked()

$signalMethod=|activated(QSystemTrayIcon::ActivationReason)
$signalMethod=|messageClicked()

$endSlotsClass
