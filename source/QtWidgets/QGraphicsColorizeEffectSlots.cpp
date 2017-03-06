/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QGraphicsColorizeEffectSlots.h"


static SlotsQGraphicsColorizeEffect * s = NULL;

SlotsQGraphicsColorizeEffect::SlotsQGraphicsColorizeEffect(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsColorizeEffect::~SlotsQGraphicsColorizeEffect()
{
}

void SlotsQGraphicsColorizeEffect::colorChanged ( const QColor & color )
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

void SlotsQGraphicsColorizeEffect::strengthChanged ( qreal strength )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "strengthChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstrength = hb_itemPutND( NULL, strength );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstrength );
    hb_itemRelease( psender );
    hb_itemRelease( pstrength );
  }
}

HB_FUNC( QGRAPHICSCOLORIZEEFFECT_ONCOLORCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsColorizeEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "colorChanged(QColor)", "colorChanged(QColor)" ) );
}

HB_FUNC( QGRAPHICSCOLORIZEEFFECT_ONSTRENGTHCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGraphicsColorizeEffect(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "strengthChanged(qreal)", "strengthChanged(qreal)" ) );
}
