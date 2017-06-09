/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QQmlApplicationEngineSlots.h"

static SlotsQQmlApplicationEngine * s = NULL;

SlotsQQmlApplicationEngine::SlotsQQmlApplicationEngine(QObject *parent) : QObject(parent)
{
}

SlotsQQmlApplicationEngine::~SlotsQQmlApplicationEngine()
{
}

void SlotsQQmlApplicationEngine::objectCreated(QObject *obj, const QUrl &url)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "objectCreated(QObject*,QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pobject = hb_itemPutPtr( NULL, (QObject *) obj );
    PHB_ITEM purl = hb_itemPutPtr( NULL, (QUrl *) &url );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pobject, purl );
    hb_itemRelease( psender );
    hb_itemRelease( pobject );
    hb_itemRelease( purl );
  }
#endif
}

HB_FUNC( QQMLAPPLICATIONENGINE_ONOBJECTCREATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( s == NULL )
  {
    s = new SlotsQQmlApplicationEngine(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "objectCreated(QObject*,QUrl)", "objectCreated(QObject*,QUrl)" ) );
}
#endif
