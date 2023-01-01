/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVideoWidgetSlots.h"

QVideoWidgetSlots::QVideoWidgetSlots( QObject *parent ) : QObject( parent )
{
}

QVideoWidgetSlots::~QVideoWidgetSlots()
{
}

void QVideoWidgetSlots::fullScreenChanged( bool fullScreen )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "fullScreenChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVIDEOWIDGET" );
    PHB_ITEM pfullScreen = hb_itemPutL( NULL, fullScreen );

    hb_vmEvalBlockV( cb, 2, psender, pfullScreen );

    hb_itemRelease( psender );
    hb_itemRelease( pfullScreen );
  }
}

void QVideoWidgetSlots::brightnessChanged( int brightness )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "brightnessChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVIDEOWIDGET" );
    PHB_ITEM pbrightness = hb_itemPutNI( NULL, brightness );

    hb_vmEvalBlockV( cb, 2, psender, pbrightness );

    hb_itemRelease( psender );
    hb_itemRelease( pbrightness );
  }
}

void QVideoWidgetSlots::contrastChanged( int contrast )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "contrastChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVIDEOWIDGET" );
    PHB_ITEM pcontrast = hb_itemPutNI( NULL, contrast );

    hb_vmEvalBlockV( cb, 2, psender, pcontrast );

    hb_itemRelease( psender );
    hb_itemRelease( pcontrast );
  }
}

void QVideoWidgetSlots::hueChanged( int hue )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "hueChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVIDEOWIDGET" );
    PHB_ITEM phue = hb_itemPutNI( NULL, hue );

    hb_vmEvalBlockV( cb, 2, psender, phue );

    hb_itemRelease( psender );
    hb_itemRelease( phue );
  }
}

void QVideoWidgetSlots::saturationChanged( int saturation )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "saturationChanged(int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QVIDEOWIDGET" );
    PHB_ITEM psaturation = hb_itemPutNI( NULL, saturation );

    hb_vmEvalBlockV( cb, 2, psender, psaturation );

    hb_itemRelease( psender );
    hb_itemRelease( psaturation );
  }
}

void QVideoWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QVideoWidget * obj = (QVideoWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QVideoWidgetSlots * s = QCoreApplication::instance()->findChild<QVideoWidgetSlots *>();

    if( s == NULL )
    {
      s = new QVideoWidgetSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
