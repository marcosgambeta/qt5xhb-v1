/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAxObjectSlots.h"

QAxObjectSlots::QAxObjectSlots( QObject *parent ) : QObject( parent )
{
}

QAxObjectSlots::~QAxObjectSlots()
{
}

void QAxObjectSlots::exception( int code, const QString & source, const QString & desc, const QString & help )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "exception(int,QString,QString,QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAXOBJECT");
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM psource = hb_itemPutC( NULL, QSTRINGTOSTRING(source) );
    PHB_ITEM pdesc = hb_itemPutC( NULL, QSTRINGTOSTRING(desc) );
    PHB_ITEM phelp = hb_itemPutC( NULL, QSTRINGTOSTRING(help) );

    hb_vmEvalBlockV( cb, 5, psender, pcode, psource, pdesc, phelp );

    hb_itemRelease( psender );
    hb_itemRelease( pcode );
    hb_itemRelease( psource );
    hb_itemRelease( pdesc );
    hb_itemRelease( phelp );
  }
}

void QAxObjectSlots::propertyChanged( const QString & name )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "propertyChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAXOBJECT");
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );

    hb_vmEvalBlockV( cb, 2, psender, pname );

    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void QAxObjectSlots::signal( const QString & name, int argc, void * argv )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "signal(QString,int,void*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QAXOBJECT");
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    PHB_ITEM pargc = hb_itemPutNI( NULL, argc );
    PHB_ITEM pargv = hb_itemPutPtr( NULL, (void *) argv );

    hb_vmEvalBlockV( cb, 4, psender, pname, pargc, pargv );

    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( pargc );
    hb_itemRelease( pargv );
  }
}

void QAxObjectSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAxObject * obj = (QAxObject *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QAxObjectSlots * s = QCoreApplication::instance()->findChild<QAxObjectSlots*>();

    if( s == NULL )
    {
      s = new QAxObjectSlots();
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
