/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QAxObjectSlots.h"


static SlotsQAxObject * s = NULL;

SlotsQAxObject::SlotsQAxObject(QObject *parent) : QObject(parent)
{
}

SlotsQAxObject::~SlotsQAxObject()
{
}

void SlotsQAxObject::exception ( int code, const QString & source, const QString & desc, const QString & help )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "exception(int,QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM psource = hb_itemPutC( NULL, QSTRINGTOSTRING(source) );
    PHB_ITEM pdesc = hb_itemPutC( NULL, QSTRINGTOSTRING(desc) );
    PHB_ITEM phelp = hb_itemPutC( NULL, QSTRINGTOSTRING(help) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcode, psource, pdesc, phelp );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
    hb_itemRelease( psource );
    hb_itemRelease( pdesc );
    hb_itemRelease( phelp );
  }
}

void SlotsQAxObject::propertyChanged ( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "propertyChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void SlotsQAxObject::signal ( const QString & name, int argc, void * argv )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signal(QString,int,void *)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );
    PHB_ITEM pargc = hb_itemPutNI( NULL, argc );
    PHB_ITEM pargv = hb_itemPutPtr( NULL, (void *) argv );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pname, pargc, pargv );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( pargc );
    hb_itemRelease( pargv );
  }
}

HB_FUNC( QAXOBJECT_ONEXCEPTION )
{
  if( s == NULL )
  {
    s = new SlotsQAxObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "exception(int,QString,QString,QString)", "exception(int,QString,QString,QString)" ) );
}

HB_FUNC( QAXOBJECT_ONPROPERTYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAxObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "propertyChanged(QString)", "propertyChanged(QString)" ) );
}

HB_FUNC( QAXOBJECT_ONSIGNAL )
{
  if( s == NULL )
  {
    s = new SlotsQAxObject(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "signal(QString,int,void *)", "signal(QString,int,void *)" ) );
}
