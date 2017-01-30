/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QSensorGestureSlots.h"


static SlotsQSensorGesture * s = NULL;

SlotsQSensorGesture::SlotsQSensorGesture(QObject *parent) : QObject(parent)
{
}

SlotsQSensorGesture::~SlotsQSensorGesture()
{
}

void SlotsQSensorGesture::detected(QString s)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "detected(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ps = hb_itemPutC( NULL, (const char *) s.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ps );
    hb_itemRelease( psender );
    hb_itemRelease( ps );
  }
#endif
}

HB_FUNC( QSENSORGESTURE_ONDETECTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQSensorGesture(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "detected(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(detected(QString)), s, SLOT(detected(QString)) );
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
    QString signal = "detected(QString)";
    ret = object->disconnect(object, SIGNAL(detected(QString)), s, SLOT(detected(QString)) );
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

