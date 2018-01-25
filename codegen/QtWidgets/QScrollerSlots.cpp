%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQScroller::scrollerPropertiesChanged(const QScrollerProperties & newProperties)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "scrollerPropertiesChanged(QScrollerProperties)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewProperties = hb_itemPutPtr( NULL, (QScrollerProperties *) &newProperties );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewProperties );
    hb_itemRelease( psender );
    hb_itemRelease( pnewProperties );
  }
}

void SlotsQScroller::stateChanged(QScroller::State newState)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QScroller::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewState );
    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
  }
}

$signalMethod=|scrollerPropertiesChanged(QScrollerProperties)
$signalMethod=|stateChanged(QScroller::State)

$endSlotsClass
