/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QSignalMapperSlots.h"


static SlotsQSignalMapper * s = NULL;

SlotsQSignalMapper::SlotsQSignalMapper(QObject *parent) : QObject(parent)
{
}

SlotsQSignalMapper::~SlotsQSignalMapper()
{
}

void SlotsQSignalMapper::mapped(int arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutNI( NULL, arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQSignalMapper::mapped(const QString &arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutC( NULL, QSTRINGTOSTRING(arg) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQSignalMapper::mapped(QWidget *arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutPtr( NULL, (QWidget *) arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

void SlotsQSignalMapper::mapped(QObject *arg)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mapped(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM parg = hb_itemPutPtr( NULL, (QObject *) arg );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, parg );
    hb_itemRelease( psender );
    hb_itemRelease( parg );
  }
}

HB_FUNC( QSIGNALMAPPER_ONMAPPED1 )
{
  if( s == NULL )
  {
    s = new SlotsQSignalMapper(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mapped(int)", "mapped(int)" ) );
}

HB_FUNC( QSIGNALMAPPER_ONMAPPED2 )
{
  if( s == NULL )
  {
    s = new SlotsQSignalMapper(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mapped(QString)", "mapped(QString)" ) );
}

HB_FUNC( QSIGNALMAPPER_ONMAPPED3 )
{
  if( s == NULL )
  {
    s = new SlotsQSignalMapper(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mapped(QWidget*)", "mapped(QWidget*)" ) );
}

HB_FUNC( QSIGNALMAPPER_ONMAPPED4 )
{
  if( s == NULL )
  {
    s = new SlotsQSignalMapper(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mapped(QObject*)", "mapped(QObject*)" ) );
}
