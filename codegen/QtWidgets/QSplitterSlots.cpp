%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQSplitter::splitterMoved ( int pos, int index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "splitterMoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppos = hb_itemPutNI( NULL, pos );
    PHB_ITEM pindex = hb_itemPutNI( NULL, index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, ppos, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( ppos );
    hb_itemRelease( pindex );
  }
}

$signalMethod=|splitterMoved(int,int)

$endSlotsClass
