/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QKeySequenceEditSlots.h"

QKeySequenceEditSlots::QKeySequenceEditSlots( QObject *parent ) : QObject( parent )
{
}

QKeySequenceEditSlots::~QKeySequenceEditSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QKeySequenceEditSlots::editingFinished()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "editingFinished()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QKEYSEQUENCEEDIT");

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QKeySequenceEditSlots::keySequenceChanged( const QKeySequence & keySequence )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "keySequenceChanged(QKeySequence)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QKEYSEQUENCEEDIT");
    PHB_ITEM pkeySequence = Qt5xHb::Signals_return_object( (void *) &keySequence, "QKEYSEQUENCE" );

    hb_vmEvalBlockV( cb, 2, psender, pkeySequence );

    hb_itemRelease( psender );
    hb_itemRelease( pkeySequence );
  }
}
#endif

void QKeySequenceEditSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QKeySequenceEdit * obj = (QKeySequenceEdit *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QKeySequenceEditSlots * s = QCoreApplication::instance()->findChild<QKeySequenceEditSlots*>();

    if( s == NULL )
    {
      s = new QKeySequenceEditSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}
