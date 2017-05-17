/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QFileSystemWatcherSlots.h"


static SlotsQFileSystemWatcher * s = NULL;

SlotsQFileSystemWatcher::SlotsQFileSystemWatcher(QObject *parent) : QObject(parent)
{
}

SlotsQFileSystemWatcher::~SlotsQFileSystemWatcher()
{
}

void SlotsQFileSystemWatcher::directoryChanged(const QString & path)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directoryChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppath = hb_itemPutC( NULL, RQSTRING(path) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppath );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
  }
}

void SlotsQFileSystemWatcher::fileChanged(const QString & path)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fileChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppath = hb_itemPutC( NULL, RQSTRING(path) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppath );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
  }
}

HB_FUNC( QFILESYSTEMWATCHER_ONDIRECTORYCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQFileSystemWatcher(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "directoryChanged(QString)", "directoryChanged(QString)" ) );
}

HB_FUNC( QFILESYSTEMWATCHER_ONFILECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQFileSystemWatcher(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "fileChanged(QString)", "fileChanged(QString)" ) );
}
