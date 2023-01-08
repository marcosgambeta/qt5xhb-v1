/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWidgetSlots.h"

QWidgetSlots::QWidgetSlots( QObject *parent ) : QObject( parent )
{
}

QWidgetSlots::~QWidgetSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QWidgetSlots::windowTitleChanged( const QString & title )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "windowTitleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWIDGET");
    PHB_ITEM ptitle = hb_itemPutC( NULL, QSTRINGTOSTRING(title) );

    hb_vmEvalBlockV( cb, 2, psender, ptitle );

    hb_itemRelease( psender );
    hb_itemRelease( ptitle );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QWidgetSlots::windowIconChanged( const QIcon & icon )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "windowIconChanged(QIcon)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWIDGET");
    PHB_ITEM picon = Qt5xHb::Signals_return_object( (void *) &icon, "QICON" );

    hb_vmEvalBlockV( cb, 2, psender, picon );

    hb_itemRelease( psender );
    hb_itemRelease( picon );
  }
}
#endif

void QWidgetSlots::windowIconTextChanged( const QString & iconText )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "windowIconTextChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWIDGET");
    PHB_ITEM piconText = hb_itemPutC( NULL, QSTRINGTOSTRING(iconText) );

    hb_vmEvalBlockV( cb, 2, psender, piconText );

    hb_itemRelease( psender );
    hb_itemRelease( piconText );
  }
}

void QWidgetSlots::customContextMenuRequested( const QPoint & pos )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "customContextMenuRequested(QPoint)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QWIDGET");
    PHB_ITEM ppos = Qt5xHb::Signals_return_object( (void *) &pos, "QPOINT" );

    hb_vmEvalBlockV( cb, 2, psender, ppos );

    hb_itemRelease( psender );
    hb_itemRelease( ppos );
  }
}

void QWidgetSlots_connect_signal( const QString & signal, const QString & slot )
{
  QWidget * obj = (QWidget *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QWidgetSlots * s = QCoreApplication::instance()->findChild<QWidgetSlots*>();

    if( s == NULL )
    {
      s = new QWidgetSlots();
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
