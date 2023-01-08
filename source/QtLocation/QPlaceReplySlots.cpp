/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPlaceReplySlots.h"

QPlaceReplySlots::QPlaceReplySlots( QObject *parent ) : QObject( parent )
{
}

QPlaceReplySlots::~QPlaceReplySlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceReplySlots::finished()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "finished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEREPLY");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceReplySlots::error( QPlaceReply::Error error, const QString & errorString )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "error(QPlaceReply::Error,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEREPLY");
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );

    hb_vmEvalBlockV( cb, 3, psender, perror, perrorString );

    hb_itemRelease( psender );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
#endif

void QPlaceReplySlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReply * obj = (QPlaceReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QPlaceReplySlots * s = QCoreApplication::instance()->findChild<QPlaceReplySlots*>();

    if( s == NULL )
    {
      s = new QPlaceReplySlots();
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
