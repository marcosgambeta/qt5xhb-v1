/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QCameraExposureControlSlots.h"


static SlotsQCameraExposureControl * s = NULL;

SlotsQCameraExposureControl::SlotsQCameraExposureControl(QObject *parent) : QObject(parent)
{
}

SlotsQCameraExposureControl::~SlotsQCameraExposureControl()
{
}

void SlotsQCameraExposureControl::actualValueChanged(int parameter)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actualValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

void SlotsQCameraExposureControl::parameterRangeChanged(int parameter)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "parameterRangeChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

void SlotsQCameraExposureControl::requestedValueChanged(int parameter)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestedValueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparameter = hb_itemPutNI( NULL, parameter );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pparameter );
    hb_itemRelease( psender );
    hb_itemRelease( pparameter );
  }
}

HB_FUNC( QCAMERAEXPOSURECONTROL_ONACTUALVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposureControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "actualValueChanged(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(actualValueChanged(int)), s, SLOT(actualValueChanged(int)) );
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
    QString signal = "actualValueChanged(int)";
    ret = object->disconnect(object, SIGNAL(actualValueChanged(int)), s, SLOT(actualValueChanged(int)) );
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

HB_FUNC( QCAMERAEXPOSURECONTROL_ONPARAMETERRANGECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposureControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "parameterRangeChanged(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(parameterRangeChanged(int)), s, SLOT(parameterRangeChanged(int)) );
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
    QString signal = "parameterRangeChanged(int)";
    ret = object->disconnect(object, SIGNAL(parameterRangeChanged(int)), s, SLOT(parameterRangeChanged(int)) );
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

HB_FUNC( QCAMERAEXPOSURECONTROL_ONREQUESTEDVALUECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQCameraExposureControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "requestedValueChanged(int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(requestedValueChanged(int)), s, SLOT(requestedValueChanged(int)) );
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
    QString signal = "requestedValueChanged(int)";
    ret = object->disconnect(object, SIGNAL(requestedValueChanged(int)), s, SLOT(requestedValueChanged(int)) );
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
