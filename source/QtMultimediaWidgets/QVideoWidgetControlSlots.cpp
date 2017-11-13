/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QVideoWidgetControlSlots.h"


static SlotsQVideoWidgetControl * s = NULL;

SlotsQVideoWidgetControl::SlotsQVideoWidgetControl(QObject *parent) : QObject(parent)
{
}

SlotsQVideoWidgetControl::~SlotsQVideoWidgetControl()
{
}

void SlotsQVideoWidgetControl::fullScreenChanged(bool fullScreen)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fullScreenChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfullScreen = hb_itemPutL( NULL, fullScreen );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfullScreen );
    hb_itemRelease( psender );
    hb_itemRelease( pfullScreen );
  }
}

void SlotsQVideoWidgetControl::brightnessChanged(int brightness)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "brightnessChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbrightness = hb_itemPutNI( NULL, brightness );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbrightness );
    hb_itemRelease( psender );
    hb_itemRelease( pbrightness );
  }
}

void SlotsQVideoWidgetControl::contrastChanged(int contrast)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "contrastChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcontrast = hb_itemPutNI( NULL, contrast );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcontrast );
    hb_itemRelease( psender );
    hb_itemRelease( pcontrast );
  }
}

void SlotsQVideoWidgetControl::hueChanged(int hue)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM phue = hb_itemPutNI( NULL, hue );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, phue );
    hb_itemRelease( psender );
    hb_itemRelease( phue );
  }
}

void SlotsQVideoWidgetControl::saturationChanged(int saturation)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "saturationChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psaturation = hb_itemPutNI( NULL, saturation );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psaturation );
    hb_itemRelease( psender );
    hb_itemRelease( psaturation );
  }
}

HB_FUNC( QVIDEOWIDGETCONTROL_ONFULLSCREENCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoWidgetControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "fullScreenChanged(bool)", "fullScreenChanged(bool)" ) );
}

HB_FUNC( QVIDEOWIDGETCONTROL_ONBRIGHTNESSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoWidgetControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "brightnessChanged(int)", "brightnessChanged(int)" ) );
}

HB_FUNC( QVIDEOWIDGETCONTROL_ONCONTRASTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoWidgetControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "contrastChanged(int)", "contrastChanged(int)" ) );
}

HB_FUNC( QVIDEOWIDGETCONTROL_ONHUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoWidgetControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "hueChanged(int)", "hueChanged(int)" ) );
}

HB_FUNC( QVIDEOWIDGETCONTROL_ONSATURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoWidgetControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "saturationChanged(int)", "saturationChanged(int)" ) );
}
