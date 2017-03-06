/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QGuiApplicationSlots.h"


static SlotsQGuiApplication * s = NULL;

SlotsQGuiApplication::SlotsQGuiApplication(QObject *parent) : QObject(parent)
{
}

SlotsQGuiApplication::~SlotsQGuiApplication()
{
}

void SlotsQGuiApplication::focusObjectChanged(QObject * focusObject)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusObjectChanged(QObject*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfocusObject = hb_itemPutPtr( NULL, (QObject *) focusObject );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfocusObject );
    hb_itemRelease( psender );
    hb_itemRelease( pfocusObject );
  }
}

void SlotsQGuiApplication::focusWindowChanged(QWindow * focusWindow)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "focusWindowChanged(QWindow*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfocusWindow = hb_itemPutPtr( NULL, (QWindow *) focusWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfocusWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pfocusWindow );
  }
}

void SlotsQGuiApplication::fontDatabaseChanged()
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

void SlotsQGuiApplication::lastWindowClosed()
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

void SlotsQGuiApplication::screenAdded(QScreen * screen)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "screenAdded(QScreen*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pscreen = hb_itemPutPtr( NULL, (QScreen *) screen );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pscreen );
    hb_itemRelease( psender );
    hb_itemRelease( pscreen );
  }
}

HB_FUNC( QGUIAPPLICATION_ONFOCUSOBJECTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGuiApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "focusObjectChanged(QObject*)", "focusObjectChanged(QObject*)" ) );

}

HB_FUNC( QGUIAPPLICATION_ONFOCUSWINDOWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGuiApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "focusWindowChanged(QWindow*)", "focusWindowChanged(QWindow*)" ) );

}

HB_FUNC( QGUIAPPLICATION_ONFONTDATABASECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQGuiApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "fontDatabaseChanged()", "fontDatabaseChanged()" ) );

}

HB_FUNC( QGUIAPPLICATION_ONLASTWINDOWCLOSED )
{
  if( s == NULL )
  {
    s = new SlotsQGuiApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "lastWindowClosed()", "lastWindowClosed()" ) );

}

HB_FUNC( QGUIAPPLICATION_ONSCREENADDED )
{
  if( s == NULL )
  {
    s = new SlotsQGuiApplication(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "screenAdded(QScreen*)", "screenAdded(QScreen*)" ) );

}
