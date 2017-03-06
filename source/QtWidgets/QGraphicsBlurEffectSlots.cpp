/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QGraphicsBlurEffectSlots.h"


static SlotsQGraphicsBlurEffect * s = NULL;

SlotsQGraphicsBlurEffect::SlotsQGraphicsBlurEffect(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsBlurEffect::~SlotsQGraphicsBlurEffect()
{
}

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

HB_FUNC( QGRAPHICSBLUREFFECT_ONBLURHINTSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsBlurEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "blurHintsChanged(QGraphicsBlurEffect::BlurHints)", "blurHintsChanged(QGraphicsBlurEffect::BlurHints)" ) );
}

HB_FUNC( QGRAPHICSBLUREFFECT_ONBLURRADIUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsBlurEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "blurRadiusChanged(qreal)", "blurRadiusChanged(qreal)" ) );
}
