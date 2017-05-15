/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QGeoCodingManagerSlots.h"

static SlotsQGeoCodingManager * s = NULL;

SlotsQGeoCodingManager::SlotsQGeoCodingManager(QObject *parent) : QObject(parent)
{
}

SlotsQGeoCodingManager::~SlotsQGeoCodingManager()
{
}

void SlotsQGeoCodingManager::finished(QGeoCodeReply *reply)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QGeoCodeReply*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QGeoCodeReply *) reply );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preply );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
#endif
}

void SlotsQGeoCodingManager::error(QGeoCodeReply *reply, QGeoCodeReply::Error error, QString errorString)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QGeoCodeReply*,QGeoCodeReply::Error,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preply = hb_itemPutPtr( NULL, (QGeoCodeReply *) reply );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, (const char *) errorString.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, preply, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
#endif
}

HB_FUNC( QGEOCODINGMANAGER_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQGeoCodingManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "finished(QGeoCodeReply*)", "finished(QGeoCodeReply*)" ) );
#endif
}

HB_FUNC( QGEOCODINGMANAGER_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  if( s == NULL )
  {
    s = new SlotsQGeoCodingManager(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "error(QGeoCodeReply*,QGeoCodeReply::Error,QString)", "error(QGeoCodeReply*,QGeoCodeReply::Error,QString)" ) );
#endif
}
