/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QSqlDriverSlots.h"


static SlotsQSqlDriver * s = NULL;

SlotsQSqlDriver::SlotsQSqlDriver(QObject *parent) : QObject(parent)
{
}

SlotsQSqlDriver::~SlotsQSqlDriver()
{
}

void SlotsQSqlDriver::notification ( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "notification(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, (const char *) name.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void SlotsQSqlDriver::notification(const QString &name, QSqlDriver::NotificationSource source, const QVariant &payload)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "notification(QString,QSqlDriver::NotificationSource,QVariant)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, (const char *) name.toLatin1().data() );
    PHB_ITEM psource = hb_itemPutNI( NULL, (int) source );
    PHB_ITEM ppayload = hb_itemPutPtr( NULL, (QVariant *) &payload );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pname, psource, ppayload );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( psource );
    hb_itemRelease( ppayload );
  }
}

HB_FUNC( QSQLDRIVER_ONNOTIFICATION1 )
{
  if( s == NULL )
  {
    s = new SlotsQSqlDriver(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "notification(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(notification(QString)), s, SLOT(notification(QString)) );
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
    QString signal = "notification(QString)";
    ret = object->disconnect(object, SIGNAL(notification(QString)), s, SLOT(notification(QString)) );
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

HB_FUNC( QSQLDRIVER_ONNOTIFICATION2 )
{
  if( s == NULL )
  {
    s = new SlotsQSqlDriver(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "notification(QString,QSqlDriver::NotificationSource,QVariant)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(notification(QString,QSqlDriver::NotificationSource,QVariant)), s, SLOT(notification(QString,QSqlDriver::NotificationSource,QVariant)) );
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
    QString signal = "notification(QString,QSqlDriver::NotificationSource,QVariant)";
    ret = object->disconnect(object, SIGNAL(notification(QString,QSqlDriver::NotificationSource,QVariant)), s, SLOT(notification(QString,QSqlDriver::NotificationSource,QVariant)) );
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
