/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QTimeLineSlots.h"


static SlotsQTimeLine * s = NULL;

SlotsQTimeLine::SlotsQTimeLine(QObject *parent) : QObject(parent)
{
}

SlotsQTimeLine::~SlotsQTimeLine()
{
}

void SlotsQTimeLine::finished ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQTimeLine::frameChanged ( int frame )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "frameChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pframe = hb_itemPutNI( NULL, frame );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pframe );
    hb_itemRelease( psender );
    hb_itemRelease( pframe );
  }
}

void SlotsQTimeLine::stateChanged ( QTimeLine::State newState )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QTimeLine::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewState = hb_itemPutNI( NULL, (int) newState );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewState );
    hb_itemRelease( psender );
    hb_itemRelease( pnewState );
  }
}

void SlotsQTimeLine::valueChanged ( qreal value )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutND( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
}

HB_FUNC( QTIMELINE_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQTimeLine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished()", "finished()" ) );
}

HB_FUNC( QTIMELINE_ONFRAMECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTimeLine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "frameChanged(int)", "frameChanged(int)" ) );
}

HB_FUNC( QTIMELINE_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTimeLine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stateChanged(QTimeLine::State)", "stateChanged(QTimeLine::State)" ) );
}

HB_FUNC( QTIMELINE_ONVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQTimeLine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(qreal)", "valueChanged(qreal)" ) );
}
