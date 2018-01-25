%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQPrintPreviewDialog::paintRequested ( QPrinter * printer )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "paintRequested(QPrinter*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprinter = hb_itemPutPtr( NULL, (QPrinter *) printer );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprinter );
    hb_itemRelease( psender );
    hb_itemRelease( pprinter );
  }
}

$signalMethod=|paintRequested(QPrinter*)

$endSlotsClass
