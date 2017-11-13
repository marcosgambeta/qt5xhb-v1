/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QApplicationSlots.h"


static SlotsQApplication * s = NULL;

SlotsQApplication::SlotsQApplication(QObject *parent) : QObject(parent)
{
}

SlotsQApplication::~SlotsQApplication()
{
}

void SlotsQApplication::aboutToReleaseGpuResources()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToReleaseGpuResources()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQApplication::aboutToUseGpuResources()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "aboutToUseGpuResources()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQApplication::commitDataRequest(QSessionManager & manager)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "commitDataRequest(QSessionManager)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmanager = hb_itemPutPtr( NULL, (QSessionManager *) &manager );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmanager );
    hb_itemRelease( psender );
    hb_itemRelease( pmanager );
  }
}

void SlotsQApplication::focusChanged(QWidget * old, QWidget * now)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusChanged(QWidget*,QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pold = hb_itemPutPtr( NULL, (QWidget *) old );
    PHB_ITEM pnow = hb_itemPutPtr( NULL, (QWidget *) now );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pold, pnow );
    hb_itemRelease( psender );
    hb_itemRelease( pold );
    hb_itemRelease( pnow );
  }
}

void SlotsQApplication::fontDatabaseChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fontDatabaseChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQApplication::lastWindowClosed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "lastWindowClosed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQApplication::saveStateRequest(QSessionManager & manager)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "saveStateRequest(QSessionManager)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmanager = hb_itemPutPtr( NULL, (QSessionManager *) &manager );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmanager );
    hb_itemRelease( psender );
    hb_itemRelease( pmanager );
  }
}

HB_FUNC( QAPPLICATION_ONABOUTTORELEASEGPURESOURCES )
{
  if( s == NULL )
  {
    s = new SlotsQApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToReleaseGpuResources()", "aboutToReleaseGpuResources()" ) );
}

HB_FUNC( QAPPLICATION_ONABOUTTOUSEGPURESOURCES )
{
  if( s == NULL )
  {
    s = new SlotsQApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "aboutToUseGpuResources()", "aboutToUseGpuResources()" ) );
}

HB_FUNC( QAPPLICATION_ONCOMMITDATAREQUEST )
{
  if( s == NULL )
  {
    s = new SlotsQApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "commitDataRequest(QSessionManager)", "commitDataRequest(QSessionManager)" ) );
}

HB_FUNC( QAPPLICATION_ONFOCUSCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "focusChanged(QWidget*,QWidget*)", "focusChanged(QWidget*,QWidget*)" ) );
}

HB_FUNC( QAPPLICATION_ONFONTDATABASECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "fontDatabaseChanged()", "fontDatabaseChanged()" ) );
}

HB_FUNC( QAPPLICATION_ONLASTWINDOWCLOSED )
{
  if( s == NULL )
  {
    s = new SlotsQApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "lastWindowClosed()", "lastWindowClosed()" ) );
}

HB_FUNC( QAPPLICATION_ONSAVESTATEREQUEST )
{
  if( s == NULL )
  {
    s = new SlotsQApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "saveStateRequest(QSessioManager)", "saveStateRequest(QSessioManager)" ) );
}
