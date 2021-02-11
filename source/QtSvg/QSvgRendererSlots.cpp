/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QSvgRendererSlots.h"

QSvgRendererSlots::QSvgRendererSlots( QObject *parent ) : QObject( parent )
{
}

QSvgRendererSlots::~QSvgRendererSlots()
{
}

void QSvgRendererSlots::repaintNeeded()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "repaintNeeded()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QSVGRENDERER" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QSvgRendererSlots_connect_signal( const QString & signal, const QString & slot )
{
  QSvgRenderer * obj = (QSvgRenderer *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSvgRendererSlots * s = QCoreApplication::instance()->findChild<QSvgRendererSlots *>();

    if( s == NULL )
    {
      s = new QSvgRendererSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
