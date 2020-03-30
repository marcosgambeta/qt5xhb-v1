/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QHelpSearchResultWidgetSlots.h"

QHelpSearchResultWidgetSlots::QHelpSearchResultWidgetSlots(QObject *parent) : QObject(parent)
{
}

QHelpSearchResultWidgetSlots::~QHelpSearchResultWidgetSlots()
{
}
void QHelpSearchResultWidgetSlots::requestShowLink( const QUrl & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "requestShowLink(QUrl)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QHELPSEARCHRESULTWIDGET" );
    PHB_ITEM plink = Signals_return_object( (void *) &link, "QURL" );
    hb_vmEvalBlockV( cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void QHelpSearchResultWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QHelpSearchResultWidget * obj = (QHelpSearchResultWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QHelpSearchResultWidgetSlots * s = QCoreApplication::instance()->findChild<QHelpSearchResultWidgetSlots *>();

    if( s == NULL )
    {
      s = new QHelpSearchResultWidgetSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
