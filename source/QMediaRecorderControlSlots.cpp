/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMediaRecorderControlSlots.h"


static SlotsQMediaRecorderControl * s = NULL;

SlotsQMediaRecorderControl::SlotsQMediaRecorderControl(QObject *parent) : QObject(parent)
{
}

SlotsQMediaRecorderControl::~SlotsQMediaRecorderControl()
{
}

void SlotsQMediaRecorderControl::actualLocationChanged(const QUrl & location)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "actualLocationChanged(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plocation = hb_itemPutPtr( NULL, (QUrl *) &location );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plocation );
    hb_itemRelease( psender );
    hb_itemRelease( plocation );
  }
#endif
}

void SlotsQMediaRecorderControl::durationChanged(qint64 duration)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

void SlotsQMediaRecorderControl::error(int error, const QString & errorString)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, (const char *) errorString.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
#endif
}

void SlotsQMediaRecorderControl::mutedChanged(bool muted)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mutedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmuted = hb_itemPutL( NULL, muted );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmuted );
    hb_itemRelease( psender );
    hb_itemRelease( pmuted );
  }
#endif
}

void SlotsQMediaRecorderControl::stateChanged(QMediaRecorder::State state)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QMediaRecorder::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
#endif
}

void SlotsQMediaRecorderControl::statusChanged(QMediaRecorder::Status status)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "statusChanged(QMediaRecorder::Status)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstatus );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
#endif
}

void SlotsQMediaRecorderControl::volumeChanged(qreal gain)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "volumeChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pgain = hb_itemPutND( NULL, gain );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pgain );
    hb_itemRelease( psender );
    hb_itemRelease( pgain );
  }
#endif
}

HB_FUNC( QMEDIARECORDERCONTROL_ONACTUALLOCATIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "actualLocationChanged(QUrl)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(actualLocationChanged(QUrl)), s, SLOT(actualLocationChanged(QUrl)) );
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
    QString signal = "actualLocationChanged(QUrl)";
    ret = object->disconnect(object, SIGNAL(actualLocationChanged(QUrl)), s, SLOT(actualLocationChanged(QUrl)) );
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

HB_FUNC( QMEDIARECORDERCONTROL_ONDURATIONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
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
#else
  hb_retl(false);
#endif
}

HB_FUNC( QMEDIARECORDERCONTROL_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(int,QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(error(int,QString)), s, SLOT(error(int,QString)) );
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
    QString signal = "error(int,QString)";
    ret = object->disconnect(object, SIGNAL(error(int,QString)), s, SLOT(error(int,QString)) );
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

HB_FUNC( QMEDIARECORDERCONTROL_ONMUTEDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "mutedChanged(bool)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(mutedChanged(bool)), s, SLOT(mutedChanged(bool)) );
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
    QString signal = "mutedChanged(bool)";
    ret = object->disconnect(object, SIGNAL(mutedChanged(bool)), s, SLOT(mutedChanged(bool)) );
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

HB_FUNC( QMEDIARECORDERCONTROL_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "stateChanged(QMediaRecorder::State)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(stateChanged(QMediaRecorder::State)), s, SLOT(stateChanged(QMediaRecorder::State)) );
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
    QString signal = "stateChanged(QMediaRecorder::State)";
    ret = object->disconnect(object, SIGNAL(stateChanged(QMediaRecorder::State)), s, SLOT(stateChanged(QMediaRecorder::State)) );
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

HB_FUNC( QMEDIARECORDERCONTROL_ONSTATUSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "statusChanged(QMediaRecorder::Status)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(statusChanged(QMediaRecorder::Status)), s, SLOT(statusChanged(QMediaRecorder::Status)) );
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
    QString signal = "statusChanged(QMediaRecorder::Status)";
    ret = object->disconnect(object, SIGNAL(statusChanged(QMediaRecorder::Status)), s, SLOT(statusChanged(QMediaRecorder::Status)) );
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

HB_FUNC( QMEDIARECORDERCONTROL_ONVOLUMECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaRecorderControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "volumeChanged(qreal)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(volumeChanged(qreal)), s, SLOT(volumeChanged(qreal)) );
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
    QString signal = "volumeChanged(qreal)";
    ret = object->disconnect(object, SIGNAL(volumeChanged(qreal)), s, SLOT(volumeChanged(qreal)) );
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

