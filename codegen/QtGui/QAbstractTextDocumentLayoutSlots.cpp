%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQAbstractTextDocumentLayout::documentSizeChanged ( const QSizeF & newSize )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "documentSizeChanged(QSizeF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewSize = hb_itemPutPtr( NULL, (QSizeF *) &newSize );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewSize );
    hb_itemRelease( psender );
    hb_itemRelease( pnewSize );
  }
}

void SlotsQAbstractTextDocumentLayout::pageCountChanged ( int newPages )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pageCountChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewPages = hb_itemPutNI( NULL, newPages );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewPages );
    hb_itemRelease( psender );
    hb_itemRelease( pnewPages );
  }
}

void SlotsQAbstractTextDocumentLayout::update ( const QRectF & rect )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "update(QRectF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM prect = hb_itemPutPtr( NULL, (QRectF *) &rect );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, prect );
    hb_itemRelease( psender );
    hb_itemRelease( prect );
  }
}

void SlotsQAbstractTextDocumentLayout::updateBlock ( const QTextBlock & block )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updateBlock(QTextBlock)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pblock = hb_itemPutPtr( NULL, (QTextBlock *) &block );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pblock );
    hb_itemRelease( psender );
    hb_itemRelease( pblock );
  }
}

$signalMethod=|documentSizeChanged(QSizeF)
$signalMethod=|pageCountChanged(int)
$signalMethod=|update(QRectF)
$signalMethod=|updateBlock(QTextBlock)

$endSlotsClass
