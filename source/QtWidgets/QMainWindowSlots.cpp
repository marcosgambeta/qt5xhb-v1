/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMainWindowSlots.h"

QMainWindowSlots::QMainWindowSlots( QObject *parent ) : QObject( parent )
{
}

QMainWindowSlots::~QMainWindowSlots()
{
}

void QMainWindowSlots::iconSizeChanged( const QSize & iconSize )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "iconSizeChanged(QSize)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMAINWINDOW" );
    PHB_ITEM piconSize = Qt5xHb::Signals_return_object( (void *) &iconSize, "QSIZE" );

    hb_vmEvalBlockV( cb, 2, psender, piconSize );

    hb_itemRelease( psender );
    hb_itemRelease( piconSize );
  }
}

void QMainWindowSlots::toolButtonStyleChanged( Qt::ToolButtonStyle toolButtonStyle )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "toolButtonStyleChanged(Qt::ToolButtonStyle)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QMAINWINDOW" );
    PHB_ITEM ptoolButtonStyle = hb_itemPutNI( NULL, (int) toolButtonStyle );

    hb_vmEvalBlockV( cb, 2, psender, ptoolButtonStyle );

    hb_itemRelease( psender );
    hb_itemRelease( ptoolButtonStyle );
  }
}

void QMainWindowSlots_connect_signal( const QString & signal, const QString & slot )
{
  QMainWindow * obj = (QMainWindow *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QMainWindowSlots * s = QCoreApplication::instance()->findChild<QMainWindowSlots *>();

    if( s == NULL )
    {
      s = new QMainWindowSlots();
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
