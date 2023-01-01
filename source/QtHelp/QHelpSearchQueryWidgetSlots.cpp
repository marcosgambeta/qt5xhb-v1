/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpSearchQueryWidgetSlots.h"

QHelpSearchQueryWidgetSlots::QHelpSearchQueryWidgetSlots( QObject *parent ) : QObject( parent )
{
}

QHelpSearchQueryWidgetSlots::~QHelpSearchQueryWidgetSlots()
{
}

void QHelpSearchQueryWidgetSlots::search()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "search()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QHELPSEARCHQUERYWIDGET" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QHelpSearchQueryWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QHelpSearchQueryWidget * obj = (QHelpSearchQueryWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QHelpSearchQueryWidgetSlots * s = QCoreApplication::instance()->findChild<QHelpSearchQueryWidgetSlots *>();

    if( s == NULL )
    {
      s = new QHelpSearchQueryWidgetSlots();
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
