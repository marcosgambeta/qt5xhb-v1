/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QLCDNumberSlots.h"

QLCDNumberSlots::QLCDNumberSlots(QObject *parent) : QObject(parent)
{
}

QLCDNumberSlots::~QLCDNumberSlots()
{
}
void QLCDNumberSlots::overflow()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "overflow()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QLCDNUMBER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void QLCDNumberSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QLCDNumber * obj = (QLCDNumber *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QLCDNumberSlots * s = QCoreApplication::instance()->findChild<QLCDNumberSlots *>();

    if( s == NULL )
    {
      s = new QLCDNumberSlots();
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
