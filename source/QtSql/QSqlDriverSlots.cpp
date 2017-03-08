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

  hb_retl( Signals_connection_disconnection ( s, "notification(QString)", "notification(QString)" ) );
}

HB_FUNC( QSQLDRIVER_ONNOTIFICATION2 )
{
  if( s == NULL )
  {
    s = new SlotsQSqlDriver(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "notification(QString,QSqlDriver::NotificationSource,QVariant)", "notification(QString,QSqlDriver::NotificationSource,QVariant)" ) );
}
