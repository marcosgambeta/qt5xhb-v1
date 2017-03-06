/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QVariantAnimationSlots.h"


static SlotsQVariantAnimation * s = NULL;

SlotsQVariantAnimation::SlotsQVariantAnimation(QObject *parent) : QObject(parent)
{
}

SlotsQVariantAnimation::~SlotsQVariantAnimation()
{
}

void SlotsQVariantAnimation::valueChanged ( const QVariant & value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutPtr( NULL, (QVariant *) &value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

HB_FUNC( QVARIANTANIMATION_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVariantAnimation(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(QVariant)", "valueChanged(QVariant)" ) );
}
