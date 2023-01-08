/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QDialogButtonBoxSlots.h"

QDialogButtonBoxSlots::QDialogButtonBoxSlots( QObject *parent ) : QObject( parent )
{
}

QDialogButtonBoxSlots::~QDialogButtonBoxSlots()
{
}

void QDialogButtonBoxSlots::accepted()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "accepted()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDIALOGBUTTONBOX");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QDialogButtonBoxSlots::clicked( QAbstractButton * button )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "clicked(QAbstractButton*)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDIALOGBUTTONBOX");
    PHB_ITEM pbutton = Qt5xHb::Signals_return_qobject(button, "QABSTRACTBUTTON");

    hb_vmEvalBlockV( cb, 2, psender, pbutton );

    hb_itemRelease( psender );
    hb_itemRelease( pbutton );
  }
}

void QDialogButtonBoxSlots::helpRequested()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "helpRequested()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDIALOGBUTTONBOX");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QDialogButtonBoxSlots::rejected()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rejected()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QDIALOGBUTTONBOX");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QDialogButtonBoxSlots_connect_signal( const QString & signal, const QString & slot )
{
  QDialogButtonBox * obj = (QDialogButtonBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QDialogButtonBoxSlots * s = QCoreApplication::instance()->findChild<QDialogButtonBoxSlots*>();

    if( s == NULL )
    {
      s = new QDialogButtonBoxSlots();
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
