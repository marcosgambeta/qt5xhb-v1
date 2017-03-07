/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAxBaseSlots.h"


static SlotsQAxBase * s = NULL;

SlotsQAxBase::SlotsQAxBase(QObject *parent) : QObject(parent)
{
}

SlotsQAxBase::~SlotsQAxBase()
{
}

void SlotsQAxBase::exception ( int code, const QString & source, const QString & desc, const QString & help )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "exception(int,QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcode = hb_itemPutNI( NULL, code );
    PHB_ITEM psource = hb_itemPutC( NULL, (const char *) source.toLatin1().data() );
    PHB_ITEM pdesc = hb_itemPutC( NULL, (const char *) desc.toLatin1().data() );
    PHB_ITEM phelp = hb_itemPutC( NULL, (const char *) help.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 5, psender, pcode, psource, pdesc, phelp );
    hb_itemRelease( psender );
    hb_itemRelease( pcode );
    hb_itemRelease( psource );
    hb_itemRelease( pdesc );
    hb_itemRelease( phelp );
  }
}

void SlotsQAxBase::propertyChanged ( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "propertyChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, (const char *) name.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pname );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void SlotsQAxBase::signal ( const QString & name, int argc, void * argv )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signal(QString,int,void *)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pname = hb_itemPutC( NULL, (const char *) name.toLatin1().data() );
    PHB_ITEM pargc = hb_itemPutNI( NULL, argc );
    PHB_ITEM pargv = hb_itemPutPtr( NULL, (void *) argv );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pname, pargc, pargv );
    hb_itemRelease( psender );
    hb_itemRelease( pname );
    hb_itemRelease( pargc );
    hb_itemRelease( pargv );
  }
}

HB_FUNC( QAXBASE_ONEXCEPTION )
{
  if( s == NULL )
  {
    s = new SlotsQAxBase(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "exception(int,QString,QString,QString)", "exception(int,QString,QString,QString)" ) );
}

HB_FUNC( QAXBASE_ONPROPERTYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAxBase(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "propertyChanged(QString)", "propertyChanged(QString)" ) );
}

HB_FUNC( QAXBASE_ONSIGNAL )
{
  if( s == NULL )
  {
    s = new SlotsQAxBase(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "signal(QString,int,void *)", "signal(QString,int,void *)" ) );
}
