%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQGraphicsVideoItem::nativeSizeChanged(const QSizeF &size)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "nativeSizeChanged(QSizeF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psize = hb_itemPutPtr( NULL, (QSizeF *) &size );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psize );
    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

HB_FUNC( QGRAPHICSVIDEOITEM_ONNATIVESIZECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsVideoItem(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "nativeSizeChanged(QSizeF)", "nativeSizeChanged(QSizeF)" ) );
}

$endSlotsClass
