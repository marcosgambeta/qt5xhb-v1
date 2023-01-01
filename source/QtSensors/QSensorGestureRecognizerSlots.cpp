/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSensorGestureRecognizerSlots.h"

QSensorGestureRecognizerSlots::QSensorGestureRecognizerSlots( QObject *parent ) : QObject( parent )
{
}

QSensorGestureRecognizerSlots::~QSensorGestureRecognizerSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QSensorGestureRecognizerSlots::detected( const QString & s )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "detected(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSENSORGESTURERECOGNIZER" );
    PHB_ITEM ps = hb_itemPutC( NULL, QSTRINGTOSTRING(s) );

    hb_vmEvalBlockV( cb, 2, psender, ps );

    hb_itemRelease( psender );
    hb_itemRelease( ps );
  }
}
#endif

void QSensorGestureRecognizerSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorGestureRecognizer * obj = (QSensorGestureRecognizer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSensorGestureRecognizerSlots * s = QCoreApplication::instance()->findChild<QSensorGestureRecognizerSlots *>();

    if( s == NULL )
    {
      s = new QSensorGestureRecognizerSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
