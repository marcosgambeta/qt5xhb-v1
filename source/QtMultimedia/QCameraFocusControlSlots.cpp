/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QCameraFocusControlSlots.h"


static SlotsQCameraFocusControl * s = NULL;

SlotsQCameraFocusControl::SlotsQCameraFocusControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraFocusControl::~SlotsQCameraFocusControl()
{
}

void SlotsQCameraFocusControl::customFocusPointChanged(const QPointF & point)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "customFocusPointChanged(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppoint = hb_itemPutPtr( NULL, (QPointF *) &point );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppoint );
    hb_itemRelease( psender );
    hb_itemRelease( ppoint );
  }
}

void SlotsQCameraFocusControl::focusModeChanged(QCameraFocus::FocusModes mode)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusModeChanged(QCameraFocus::FocusModes)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void SlotsQCameraFocusControl::focusPointModeChanged(QCameraFocus::FocusPointMode mode)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusPointModeChanged(QCameraFocus::FocusPointMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

void SlotsQCameraFocusControl::focusZonesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusZonesChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QCAMERAFOCUSCONTROL_ONCUSTOMFOCUSPOINTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocusControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "customFocusPointChanged(QPointF)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(customFocusPointChanged(QPointF)), s, SLOT(customFocusPointChanged(QPointF)) );
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
    QString signal = "customFocusPointChanged(QPointF)";
    ret = object->disconnect(object, SIGNAL(customFocusPointChanged(QPointF)), s, SLOT(customFocusPointChanged(QPointF)) );
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

HB_FUNC( QCAMERAFOCUSCONTROL_ONFOCUSMODECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocusControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "focusModeChanged(QCameraFocus::FocusModes)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(focusModeChanged(QCameraFocus::FocusModes)), s, SLOT(focusModeChanged(QCameraFocus::FocusModes)) );
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
    QString signal = "focusModeChanged(QCameraFocus::FocusModes)";
    ret = object->disconnect(object, SIGNAL(focusModeChanged(QCameraFocus::FocusModes)), s, SLOT(focusModeChanged(QCameraFocus::FocusModes)) );
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

HB_FUNC( QCAMERAFOCUSCONTROL_ONFOCUSPOINTMODECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocusControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "focusPointModeChanged(QCameraFocus::FocusPointMode)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(focusPointModeChanged(QCameraFocus::FocusPointMode)), s, SLOT(focusPointModeChanged(QCameraFocus::FocusPointMode)) );
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
    QString signal = "focusPointModeChanged(QCameraFocus::FocusPointMode)";
    ret = object->disconnect(object, SIGNAL(focusPointModeChanged(QCameraFocus::FocusPointMode)), s, SLOT(focusPointModeChanged(QCameraFocus::FocusPointMode)) );
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

HB_FUNC( QCAMERAFOCUSCONTROL_ONFOCUSZONESCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraFocusControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "focusZonesChanged()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(focusZonesChanged()), s, SLOT(focusZonesChanged()) );
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
    QString signal = "focusZonesChanged()";
    ret = object->disconnect(object, SIGNAL(focusZonesChanged()), s, SLOT(focusZonesChanged()) );
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
