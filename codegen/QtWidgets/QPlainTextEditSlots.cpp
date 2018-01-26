%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQPlainTextEdit::blockCountChanged( int newBlockCount )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blockCountChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewBlockCount = hb_itemPutNI( NULL, newBlockCount );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewBlockCount );
    hb_itemRelease( psender );
    hb_itemRelease( pnewBlockCount );
  }
}

void SlotsQPlainTextEdit::copyAvailable( bool yes )
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

$slot=|cursorPositionChanged()

void SlotsQPlainTextEdit::modificationChanged( bool changed )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modificationChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pchanged = hb_itemPutL( NULL, changed );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pchanged );
    hb_itemRelease( psender );
    hb_itemRelease( pchanged );
  }
}

void SlotsQPlainTextEdit::redoAvailable( bool available )
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

void SlotsQPlainTextEdit::undoAvailable( bool available )
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

void SlotsQPlainTextEdit::updateRequest( const QRect & rect, int dy )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updateRequest(QRect,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prect = hb_itemPutPtr( NULL, (QRect *) &rect );
    PHB_ITEM pdy = hb_itemPutNI( NULL, dy );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, prect, pdy );
    hb_itemRelease( psender );
    hb_itemRelease( prect );
    hb_itemRelease( pdy );
  }
}

$signalMethod=|blockCountChanged(int)
$signalMethod=|copyAvailable(bool)
$signalMethod=|cursorPositionChanged()
$signalMethod=|modificationChanged(bool)
$signalMethod=|redoAvailable(bool)
$signalMethod=|selectionChanged()
$signalMethod=|textChanged()
$signalMethod=|undoAvailable(bool)
$signalMethod=|updateRequest(QRect,int)

$endSlotsClass
