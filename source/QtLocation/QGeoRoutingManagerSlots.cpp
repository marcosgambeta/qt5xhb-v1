/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGeoRoutingManagerSlots.hpp"

QGeoRoutingManagerSlots::QGeoRoutingManagerSlots( QObject *parent ) : QObject( parent )
{
}

QGeoRoutingManagerSlots::~QGeoRoutingManagerSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoRoutingManagerSlots::finished( QGeoRouteReply * reply )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "finished(QGeoRouteReply*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGEOROUTINGMANAGER");
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject(reply, "QGEOROUTEREPLY");

    hb_vmEvalBlockV(cb, 2, psender, preply);

    hb_itemRelease(psender);
    hb_itemRelease( preply );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QGeoRoutingManagerSlots::error( QGeoRouteReply * reply, QGeoRouteReply::Error error, QString errorString )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(QGeoRouteReply*,QGeoRouteReply::Error,QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QGEOROUTINGMANAGER");
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject(reply, "QGEOROUTEREPLY");
    PHB_ITEM perror = hb_itemPutNI( NULL, static_cast<int>(error) );
    PHB_ITEM perrorString = hb_itemPutC( NULL, errorString.toLatin1().data() );

    hb_vmEvalBlockV(cb, 4, psender, preply, perror, perrorString);

    hb_itemRelease(psender);
    hb_itemRelease( preply );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
#endif

void QGeoRoutingManagerSlots_connect_signal(const QString & signal, const QString & slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QGeoRoutingManager * obj = (QGeoRoutingManager *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QGeoRoutingManagerSlots * s = QCoreApplication::instance()->findChild<QGeoRoutingManagerSlots*>();

    if( s == NULL )
    {
      s = new QGeoRoutingManagerSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}
