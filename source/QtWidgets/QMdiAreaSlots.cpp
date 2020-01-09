/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QMdiAreaSlots.h"

QMdiAreaSlots::QMdiAreaSlots(QObject *parent) : QObject(parent)
{
}

QMdiAreaSlots::~QMdiAreaSlots()
{
}
void QMdiAreaSlots::subWindowActivated( QMdiSubWindow * window )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "subWindowActivated(QMdiSubWindow*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QMDIAREA" );
    PHB_ITEM pwindow = Signals_return_qobject( (QObject *) window, "QMDISUBWINDOW" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwindow );
    hb_itemRelease( psender );
    hb_itemRelease( pwindow );
  }
}

void QMdiAreaSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QMdiArea * obj = (QMdiArea *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QMdiAreaSlots * s = QCoreApplication::instance()->findChild<QMdiAreaSlots *>();

    if( s == NULL )
    {
      s = new QMdiAreaSlots();
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
