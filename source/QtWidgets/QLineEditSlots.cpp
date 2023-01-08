/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLineEditSlots.h"

QLineEditSlots::QLineEditSlots( QObject *parent ) : QObject( parent )
{
}

QLineEditSlots::~QLineEditSlots()
{
}

void QLineEditSlots::cursorPositionChanged( int iold, int inew )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "cursorPositionChanged(int,int)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLINEEDIT");
    PHB_ITEM piold = hb_itemPutNI( NULL, iold );
    PHB_ITEM pinew = hb_itemPutNI( NULL, inew );

    hb_vmEvalBlockV( cb, 3, psender, piold, pinew );

    hb_itemRelease( psender );
    hb_itemRelease( piold );
    hb_itemRelease( pinew );
  }
}

void QLineEditSlots::editingFinished()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "editingFinished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLINEEDIT");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QLineEditSlots::returnPressed()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "returnPressed()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLINEEDIT");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QLineEditSlots::selectionChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "selectionChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLINEEDIT");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QLineEditSlots::textChanged( const QString & text )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "textChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLINEEDIT");
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );

    hb_vmEvalBlockV( cb, 2, psender, ptext );

    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void QLineEditSlots::textEdited( const QString & text )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "textEdited(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QLINEEDIT");
    PHB_ITEM ptext = hb_itemPutC( NULL, QSTRINGTOSTRING(text) );

    hb_vmEvalBlockV( cb, 2, psender, ptext );

    hb_itemRelease( psender );
    hb_itemRelease( ptext );
  }
}

void QLineEditSlots_connect_signal( const QString & signal, const QString & slot )
{
  QLineEdit * obj = (QLineEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QLineEditSlots * s = QCoreApplication::instance()->findChild<QLineEditSlots*>();

    if( s == NULL )
    {
      s = new QLineEditSlots();
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
