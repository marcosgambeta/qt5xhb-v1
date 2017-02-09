/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QLightSensorSlots.h"


static SlotsQLightSensor * s = NULL;

SlotsQLightSensor::SlotsQLightSensor(QObject *parent) : QObject(parent)
{
}

SlotsQLightSensor::~SlotsQLightSensor()
{
}

void SlotsQLightSensor::fieldOfViewChanged(qreal fieldOfView)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fieldOfViewChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfieldOfView = hb_itemPutND( NULL, fieldOfView );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfieldOfView );
    hb_itemRelease( psender );
    hb_itemRelease( pfieldOfView );
  }
#endif
}

HB_FUNC( QLIGHTSENSOR_ONFIELDOFVIEWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQLightSensor(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "fieldOfViewChanged(qreal)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(fieldOfViewChanged(qreal)), s, SLOT(fieldOfViewChanged(qreal)) );
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
    QString signal = "fieldOfViewChanged(qreal)";
    ret = object->disconnect(object, SIGNAL(fieldOfViewChanged(qreal)), s, SLOT(fieldOfViewChanged(qreal)) );
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
#else
  hb_retl(false);
#endif
}

