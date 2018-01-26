%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQMessageBox::buttonClicked( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "buttonClicked(QAbstractButton*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbutton = hb_itemPutPtr( NULL, (QAbstractButton *) button );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbutton );
    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

$signalMethod=|buttonClicked(QAbstractButton*)

$endSlotsClass
