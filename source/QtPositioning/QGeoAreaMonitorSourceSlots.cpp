/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QGeoAreaMonitorSourceSlots.h"


static SlotsQGeoAreaMonitorSource * s = NULL;

SlotsQGeoAreaMonitorSource::SlotsQGeoAreaMonitorSource(QObject *parent) : QObject(parent)
{
}

SlotsQGeoAreaMonitorSource::~SlotsQGeoAreaMonitorSource()
{
}

void SlotsQGeoAreaMonitorSource::areaEntered(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmonitor = hb_itemPutPtr( NULL, (QGeoAreaMonitorInfo *) &monitor );
    PHB_ITEM pupdate = hb_itemPutPtr( NULL, (QGeoPositionInfo *) &update );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pmonitor, pupdate );
    hb_itemRelease( psender );
    hb_itemRelease( pmonitor );
    hb_itemRelease( pupdate );
  }
#endif
}

void SlotsQGeoAreaMonitorSource::areaExited(const QGeoAreaMonitorInfo &monitor, const QGeoPositionInfo &update)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmonitor = hb_itemPutPtr( NULL, (QGeoAreaMonitorInfo *) &monitor );
    PHB_ITEM pupdate = hb_itemPutPtr( NULL, (QGeoPositionInfo *) &update );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pmonitor, pupdate );
    hb_itemRelease( psender );
    hb_itemRelease( pmonitor );
    hb_itemRelease( pupdate );
  }
#endif
}

void SlotsQGeoAreaMonitorSource::monitorExpired(const QGeoAreaMonitorInfo &monitor)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "monitorExpired(QGeoAreaMonitorInfo)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmonitor = hb_itemPutPtr( NULL, (QGeoAreaMonitorInfo *) &monitor );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmonitor );
    hb_itemRelease( psender );
    hb_itemRelease( pmonitor );
  }
#endif
}

void SlotsQGeoAreaMonitorSource::error(QGeoAreaMonitorSource::Error error)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoAreaMonitorSource::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perror );
    hb_itemRelease( psender );
    hb_itemRelease( perror );
  }
#endif
}

HB_FUNC( QGEOAREAMONITORSOURCE_ONAREAENTERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoAreaMonitorSource(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)), s, SLOT(areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)) );
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
    QString signal = "areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)";
    ret = object->disconnect(object, SIGNAL(areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)), s, SLOT(areaEntered(QGeoAreaMonitorInfo,QGeoPositionInfo)) );
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

HB_FUNC( QGEOAREAMONITORSOURCE_ONAREAEXITED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoAreaMonitorSource(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)), s, SLOT(areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)) );
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
    QString signal = "areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)";
    ret = object->disconnect(object, SIGNAL(areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)), s, SLOT(areaExited(QGeoAreaMonitorInfo,QGeoPositionInfo)) );
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

HB_FUNC( QGEOAREAMONITORSOURCE_ONMONITOREXPIRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoAreaMonitorSource(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "monitorExpired(QGeoAreaMonitorInfo)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(monitorExpired(QGeoAreaMonitorInfo)), s, SLOT(monitorExpired(QGeoAreaMonitorInfo)) );
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
    QString signal = "monitorExpired(QGeoAreaMonitorInfo)";
    ret = object->disconnect(object, SIGNAL(monitorExpired(QGeoAreaMonitorInfo)), s, SLOT(monitorExpired(QGeoAreaMonitorInfo)) );
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

HB_FUNC( QGEOAREAMONITORSOURCE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQGeoAreaMonitorSource(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "error(QGeoAreaMonitorSource::Error)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(error(QGeoAreaMonitorSource::Error)), s, SLOT(error(QGeoAreaMonitorSource::Error)) );
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
    QString signal = "error(QGeoAreaMonitorSource::Error)";
    ret = object->disconnect(object, SIGNAL(error(QGeoAreaMonitorSource::Error)), s, SLOT(error(QGeoAreaMonitorSource::Error)) );
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

