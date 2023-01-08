/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QRegularExpressionValidatorSlots.h"

QRegularExpressionValidatorSlots::QRegularExpressionValidatorSlots( QObject *parent ) : QObject( parent )
{
}

QRegularExpressionValidatorSlots::~QRegularExpressionValidatorSlots()
{
}

void QRegularExpressionValidatorSlots::regularExpressionChanged( const QRegularExpression & re )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "regularExpressionChanged(QRegularExpression)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QREGULAREXPRESSIONVALIDATOR");
    PHB_ITEM pre = Qt5xHb::Signals_return_object( (void *) &re, "QREGULAREXPRESSION" );

    hb_vmEvalBlockV( cb, 2, psender, pre );

    hb_itemRelease( psender );
    hb_itemRelease( pre );
  }
}

void QRegularExpressionValidatorSlots_connect_signal( const QString & signal, const QString & slot )
{
  QRegularExpressionValidator * obj = (QRegularExpressionValidator *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QRegularExpressionValidatorSlots * s = QCoreApplication::instance()->findChild<QRegularExpressionValidatorSlots*>();

    if( s == NULL )
    {
      s = new QRegularExpressionValidatorSlots();
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
