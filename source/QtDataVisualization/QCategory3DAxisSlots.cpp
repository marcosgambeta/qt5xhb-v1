/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QCategory3DAxisSlots.h"

QCategory3DAxisSlots::QCategory3DAxisSlots( QObject *parent ) : QObject( parent )
{
}

QCategory3DAxisSlots::~QCategory3DAxisSlots()
{
}

void QCategory3DAxisSlots::labelsChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "labelsChanged()" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QCATEGORY3DAXIS");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QCategory3DAxisSlots_connect_signal( const QString & signal, const QString & slot )
{
  QCategory3DAxis * obj = (QCategory3DAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QCategory3DAxisSlots * s = QCoreApplication::instance()->findChild<QCategory3DAxisSlots*>();

    if( s == NULL )
    {
      s = new QCategory3DAxisSlots();
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
