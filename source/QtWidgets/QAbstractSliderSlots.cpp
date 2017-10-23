/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAbstractSliderSlots.h"

static SlotsQAbstractSlider * s = NULL;

SlotsQAbstractSlider::SlotsQAbstractSlider(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractSlider::~SlotsQAbstractSlider()
{
}

void SlotsQAbstractSlider::actionTriggered(int action)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actionTriggered(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM paction = hb_itemPutNI( NULL, action );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, paction );
    hb_itemRelease( psender );
    hb_itemRelease( paction );
  }
}

void SlotsQAbstractSlider::rangeChanged ( int min, int max )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rangeChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmin = hb_itemPutNI( NULL, min );
    PHB_ITEM pmax = hb_itemPutNI( NULL, max );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pmin, pmax );
    hb_itemRelease( psender );
    hb_itemRelease( pmin );
    hb_itemRelease( pmax );
  }
}

void SlotsQAbstractSlider::sliderMoved ( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliderMoved(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

void SlotsQAbstractSlider::sliderPressed ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliderPressed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractSlider::sliderReleased ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sliderReleased()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractSlider::valueChanged ( int value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

HB_FUNC( QABSTRACTSLIDER_ONACTIONTRIGGERED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSlider(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "actionTriggered(int)", "actionTriggered(int)" ) );
}

HB_FUNC( QABSTRACTSLIDER_ONRANGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSlider(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "rangeChanged(int,int)", "rangeChanged(int,int)" ) );
}

HB_FUNC( QABSTRACTSLIDER_ONSLIDERMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSlider(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sliderMoved(int)", "sliderMoved(int)" ) );
}

HB_FUNC( QABSTRACTSLIDER_ONSLIDERPRESSED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSlider(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sliderPressed()", "sliderPressed()" ) );
}

HB_FUNC( QABSTRACTSLIDER_ONSLIDERRELEASED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSlider(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "sliderReleased()", "sliderReleased()" ) );
}

HB_FUNC( QABSTRACTSLIDER_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractSlider(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(int)", "valueChanged(int)" ) );
}
