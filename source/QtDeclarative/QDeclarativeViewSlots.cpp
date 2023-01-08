/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDeclarativeViewSlots.h"

QDeclarativeViewSlots::QDeclarativeViewSlots( QObject *parent ) : QObject( parent )
{
}

QDeclarativeViewSlots::~QDeclarativeViewSlots()
{
}

void QDeclarativeViewSlots::sceneResized( QSize size )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "sceneResized(QSize)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDECLARATIVEVIEW");
    PHB_ITEM psize = Qt5xHb::Signals_return_object( (void *) &size, "QSIZE" );

    hb_vmEvalBlockV( cb, 2, psender, psize );

    hb_itemRelease( psender );
    hb_itemRelease( psize );
  }
}

void QDeclarativeViewSlots::statusChanged( QDeclarativeView::Status status )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "statusChanged(QDeclarativeView::Status)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDECLARATIVEVIEW");
    PHB_ITEM pstatus = hb_itemPutNI( NULL, (int) status );

    hb_vmEvalBlockV( cb, 2, psender, pstatus );

    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
  }
}

void QDeclarativeViewSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDeclarativeView * obj = (QDeclarativeView *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QDeclarativeViewSlots * s = QCoreApplication::instance()->findChild<QDeclarativeViewSlots*>();

    if( s == NULL )
    {
      s = new QDeclarativeViewSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
