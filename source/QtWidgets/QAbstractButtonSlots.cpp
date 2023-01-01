/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAbstractButtonSlots.h"

QAbstractButtonSlots::QAbstractButtonSlots( QObject *parent ) : QObject( parent )
{
}

QAbstractButtonSlots::~QAbstractButtonSlots()
{
}

void QAbstractButtonSlots::clicked( bool checked )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "clicked(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTBUTTON" );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );

    hb_vmEvalBlockV( cb, 2, psender, pchecked );

    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

void QAbstractButtonSlots::pressed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "pressed()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTBUTTON" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractButtonSlots::released()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "released()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTBUTTON" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAbstractButtonSlots::toggled( bool checked )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "toggled(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QABSTRACTBUTTON" );
    PHB_ITEM pchecked = hb_itemPutL( NULL, checked );

    hb_vmEvalBlockV( cb, 2, psender, pchecked );

    hb_itemRelease( psender );
    hb_itemRelease( pchecked );
  }
}

void QAbstractButtonSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAbstractButton * obj = (QAbstractButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractButtonSlots * s = QCoreApplication::instance()->findChild<QAbstractButtonSlots *>();

    if( s == NULL )
    {
      s = new QAbstractButtonSlots();
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
