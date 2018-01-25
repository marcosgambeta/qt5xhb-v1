%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQGraphicsDropShadowEffect::blurRadiusChanged ( qreal blurRadius )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurRadiusChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pblurRadius = hb_itemPutND( NULL, blurRadius );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pblurRadius );
    hb_itemRelease( psender );
    hb_itemRelease( pblurRadius );
  }
}

void SlotsQGraphicsDropShadowEffect::colorChanged ( const QColor & color )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
}

void SlotsQGraphicsDropShadowEffect::offsetChanged ( const QPointF & offset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "offsetChanged(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM poffset = hb_itemPutPtr( NULL, (QPointF *) &offset );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, poffset );
    hb_itemRelease( psender );
    hb_itemRelease( poffset );
  }
}

$signalMethod=|blurRadiusChanged(qreal)
$signalMethod=|colorChanged(QColor)
$signalMethod=|offsetChanged(QPointF)

$endSlotsClass
