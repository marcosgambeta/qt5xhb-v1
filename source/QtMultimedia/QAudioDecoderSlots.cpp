/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAudioDecoderSlots.h"


static SlotsQAudioDecoder * s = NULL;

SlotsQAudioDecoder::SlotsQAudioDecoder(QObject *parent) : QObject(parent)
{
}

SlotsQAudioDecoder::~SlotsQAudioDecoder()
{
}

void SlotsQAudioDecoder::bufferAvailableChanged(bool available)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferAvailableChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pavailable = hb_itemPutL( NULL, available );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pavailable );
    hb_itemRelease( psender );
    hb_itemRelease( pavailable );
  }
}

void SlotsQAudioDecoder::bufferReady()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bufferReady()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAudioDecoder::durationChanged(qint64 duration)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "durationChanged(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pduration = hb_itemPutNI( NULL, duration );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pduration );
    hb_itemRelease( psender );
    hb_itemRelease( pduration );
  }
}

void SlotsQAudioDecoder::error(QAudioDecoder::Error error)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QAudioDecoder::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
}

void SlotsQAudioDecoder::finished()
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

void SlotsQAudioDecoder::formatChanged(const QAudioFormat & format)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formatChanged(QAudioFormat)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformat = hb_itemPutPtr( NULL, (QAudioFormat *) &format );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformat );
    hb_itemRelease( psender );
    hb_itemRelease( pformat );
  }
}

void SlotsQAudioDecoder::positionChanged(qint64 position)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "positionChanged(qint64)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pposition = hb_itemPutNI( NULL, position );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}

void SlotsQAudioDecoder::sourceChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sourceChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAudioDecoder::stateChanged(QAudioDecoder::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QAudioDecoder::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

HB_FUNC( QAUDIODECODER_ONBUFFERAVAILABLECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "bufferAvailableChanged(bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(bufferAvailableChanged(bool)), s, SLOT(bufferAvailableChanged(bool)) );
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
    QString signal = "bufferAvailableChanged(bool)";
    ret = object->disconnect(object, SIGNAL(bufferAvailableChanged(bool)), s, SLOT(bufferAvailableChanged(bool)) );
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

HB_FUNC( QAUDIODECODER_ONBUFFERREADY )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "bufferReady()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(bufferReady()), s, SLOT(bufferReady()) );
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
    QString signal = "bufferReady()";
    ret = object->disconnect(object, SIGNAL(bufferReady()), s, SLOT(bufferReady()) );
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

HB_FUNC( QAUDIODECODER_ONDURATIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "durationChanged(qint64)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(durationChanged(qint64)), s, SLOT(durationChanged(qint64)) );
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
    QString signal = "durationChanged(qint64)";
    ret = object->disconnect(object, SIGNAL(durationChanged(qint64)), s, SLOT(durationChanged(qint64)) );
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

HB_FUNC( QAUDIODECODER_ONERROR )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(QAudioDecoder::Error)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(error(QAudioDecoder::Error)), s, SLOT(error(QAudioDecoder::Error)) );
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
    QString signal = "error(QAudioDecoder::Error)";
    ret = object->disconnect(object, SIGNAL(error(QAudioDecoder::Error)), s, SLOT(error(QAudioDecoder::Error)) );
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

HB_FUNC( QAUDIODECODER_ONFINISHED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "finished()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(finished()), s, SLOT(finished()) );
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
    QString signal = "finished()";
    ret = object->disconnect(object, SIGNAL(finished()), s, SLOT(finished()) );
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

HB_FUNC( QAUDIODECODER_ONFORMATCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "formatChanged(QAudioFormat)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(formatChanged(QAudioFormat)), s, SLOT(formatChanged(QAudioFormat)) );
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
    QString signal = "formatChanged(QAudioFormat)";
    ret = object->disconnect(object, SIGNAL(formatChanged(QAudioFormat)), s, SLOT(formatChanged(QAudioFormat)) );
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

HB_FUNC( QAUDIODECODER_ONPOSITIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "positionChanged(qint64)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(positionChanged(qint64)), s, SLOT(positionChanged(qint64)) );
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
    QString signal = "positionChanged(qint64)";
    ret = object->disconnect(object, SIGNAL(positionChanged(qint64)), s, SLOT(positionChanged(qint64)) );
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

HB_FUNC( QAUDIODECODER_ONSOURCECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sourceChanged()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sourceChanged()), s, SLOT(sourceChanged()) );
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
    QString signal = "sourceChanged()";
    ret = object->disconnect(object, SIGNAL(sourceChanged()), s, SLOT(sourceChanged()) );
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

HB_FUNC( QAUDIODECODER_ONSTATECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAudioDecoder(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "stateChanged(QAudioDecoder::State)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(stateChanged(QAudioDecoder::State)), s, SLOT(stateChanged(QAudioDecoder::State)) );
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
    QString signal = "stateChanged(QAudioDecoder::State)";
    ret = object->disconnect(object, SIGNAL(stateChanged(QAudioDecoder::State)), s, SLOT(stateChanged(QAudioDecoder::State)) );
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
