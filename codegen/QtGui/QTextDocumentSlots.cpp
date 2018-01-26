%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQTextDocument::contentsChange(int from, int charsRemoves, int charsAdded)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contentsChange(int,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfrom = hb_itemPutNI( NULL, from );
    PHB_ITEM pcharsRemoves = hb_itemPutNI( NULL, charsRemoves );
    PHB_ITEM pcharsAdded = hb_itemPutNI( NULL, charsAdded );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pfrom, pcharsRemoves, pcharsAdded );
    hb_itemRelease( psender );
    hb_itemRelease( pfrom );
    hb_itemRelease( pcharsRemoves );
    hb_itemRelease( pcharsAdded );
  }
}

$slot=|contentsChanged()

void SlotsQTextDocument::undoAvailable(bool b)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "undoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pb = hb_itemPutL( NULL, b );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pb );
    hb_itemRelease( psender );
    hb_itemRelease( pb );
  }
}

void SlotsQTextDocument::redoAvailable(bool b)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "redoAvailable(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pb = hb_itemPutL( NULL, b );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pb );
    hb_itemRelease( psender );
    hb_itemRelease( pb );
  }
}

$slot=|undoCommandAdded()

void SlotsQTextDocument::modificationChanged(bool m)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modificationChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pm = hb_itemPutL( NULL, m );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pm );
    hb_itemRelease( psender );
    hb_itemRelease( pm );
  }
}

void SlotsQTextDocument::cursorPositionChanged(const QTextCursor &cursor)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "cursorPositionChanged(QTextCursor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcursor = hb_itemPutPtr( NULL, (QTextCursor *) &cursor );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcursor );
    hb_itemRelease( psender );
    hb_itemRelease( pcursor );
  }
}

void SlotsQTextDocument::blockCountChanged(int newBlockCount)
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

$slot=|documentLayoutChanged()

$signalMethod=|contentsChange(int,int,int)
$signalMethod=|contentsChanged()
$signalMethod=|undoAvailable(bool)
$signalMethod=|redoAvailable(bool)
$signalMethod=|undoCommandAdded()
$signalMethod=|modificationChanged(bool)
$signalMethod=|cursorPositionChanged(QTextCursor)
$signalMethod=|blockCountChanged(int)
$signalMethod=|documentLayoutChanged()

$endSlotsClass
