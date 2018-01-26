%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQTextEdit::copyAvailable( bool yes )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "copyAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pyes = hb_itemPutL( NULL, yes );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pyes );
    hb_itemRelease( psender );
    hb_itemRelease( pyes );
  }
}

void SlotsQTextEdit::currentCharFormatChanged( const QTextCharFormat & f )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentCharFormatChanged(QTextCharFormat)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pf = hb_itemPutPtr( NULL, (QTextCharFormat *) &f );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pf );
    hb_itemRelease( psender );
    hb_itemRelease( pf );
  }
}

$slot=|cursorPositionChanged()

void SlotsQTextEdit::redoAvailable( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

$slot=|selectionChanged()

$slot=|textChanged()

void SlotsQTextEdit::undoAvailable( bool available )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

$signalMethod=|copyAvailable(bool)
$signalMethod=|currentCharFormatChanged(QTextCharFormat)
$signalMethod=|cursorPositionChanged()
$signalMethod=|redoAvailable(bool)
$signalMethod=|selectionChanged()
$signalMethod=|textChanged()
$signalMethod=|undoAvailable(bool)

$endSlotsClass
