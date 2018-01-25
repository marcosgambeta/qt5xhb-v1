%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQGraphicsBlurEffect::blurHintsChanged ( QGraphicsBlurEffect::BlurHints hints )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurHintsChanged(QGraphicsBlurEffect::BlurHints)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM phints = hb_itemPutNI( NULL, (int) hints );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, phints );
    hb_itemRelease( psender );
    hb_itemRelease( phints );
  }
}

void SlotsQGraphicsBlurEffect::blurRadiusChanged ( qreal radius )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurRadiusChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pradius = hb_itemPutND( NULL, radius );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pradius );
    hb_itemRelease( psender );
    hb_itemRelease( pradius );
  }
}

$signalMethod=|blurHintsChanged(QGraphicsBlurEffect::BlurHints)
$signalMethod=|blurRadiusChanged(qreal)

$endSlotsClass
