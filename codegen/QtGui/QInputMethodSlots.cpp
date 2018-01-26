%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

$slot=|animatingChanged()

$slot=|cursorRectangleChanged()

void SlotsQInputMethod::inputDirectionChanged(Qt::LayoutDirection newDirection)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "inputDirectionChanged(Qt::LayoutDirection)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewDirection = hb_itemPutNI( NULL, (int) newDirection );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewDirection );
    hb_itemRelease( psender );
    hb_itemRelease( pnewDirection );
  }
}

$slot=|keyboardRectangleChanged()

$slot=|localeChanged()

$slot=|visibleChanged()

$signalMethod=|animatingChanged()
$signalMethod=|cursorRectangleChanged()
$signalMethod=|inputDirectionChanged(Qt::LayoutDirection)
$signalMethod=|keyboardRectangleChanged()
$signalMethod=|localeChanged()
$signalMethod=|visibleChanged()

$endSlotsClass
