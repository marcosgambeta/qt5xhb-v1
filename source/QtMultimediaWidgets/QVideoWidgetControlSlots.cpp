/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

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
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "fullScreenChanged(bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(fullScreenChanged(bool)), s, SLOT(fullScreenChanged(bool)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "fullScreenChanged(bool)";
    ret = object->disconnect(object, SIGNAL(fullScreenChanged(bool)), s, SLOT(fullScreenChanged(bool)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QVIDEOWIDGETCONTROL_ONBRIGHTNESSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoWidgetControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "brightnessChanged(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(brightnessChanged(int)), s, SLOT(brightnessChanged(int)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "brightnessChanged(int)";
    ret = object->disconnect(object, SIGNAL(brightnessChanged(int)), s, SLOT(brightnessChanged(int)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QVIDEOWIDGETCONTROL_ONCONTRASTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoWidgetControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "contrastChanged(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(contrastChanged(int)), s, SLOT(contrastChanged(int)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "contrastChanged(int)";
    ret = object->disconnect(object, SIGNAL(contrastChanged(int)), s, SLOT(contrastChanged(int)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QVIDEOWIDGETCONTROL_ONHUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoWidgetControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "hueChanged(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(hueChanged(int)), s, SLOT(hueChanged(int)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "hueChanged(int)";
    ret = object->disconnect(object, SIGNAL(hueChanged(int)), s, SLOT(hueChanged(int)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QVIDEOWIDGETCONTROL_ONSATURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQVideoWidgetControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "saturationChanged(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(saturationChanged(int)), s, SLOT(saturationChanged(int)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "saturationChanged(int)";
    ret = object->disconnect(object, SIGNAL(saturationChanged(int)), s, SLOT(saturationChanged(int)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}
