/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QFileSystemModelSlots.h"

QFileSystemModelSlots::QFileSystemModelSlots(QObject *parent) : QObject(parent)
{
}

QFileSystemModelSlots::~QFileSystemModelSlots()
{
}
void QFileSystemModelSlots::directoryLoaded( const QString & path )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directoryLoaded(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFILESYSTEMMODEL" );
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );
    hb_vmEvalBlockV( cb, 2, psender, ppath );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
  }
}
void QFileSystemModelSlots::fileRenamed( const QString & path, const QString & oldName, const QString & newName )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fileRenamed(QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFILESYSTEMMODEL" );
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );
    PHB_ITEM poldName = hb_itemPutC( NULL, QSTRINGTOSTRING(oldName) );
    PHB_ITEM pnewName = hb_itemPutC( NULL, QSTRINGTOSTRING(newName) );
    hb_vmEvalBlockV( cb, 4, psender, ppath, poldName, pnewName );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
    hb_itemRelease( poldName );
    hb_itemRelease( pnewName );
  }
}
void QFileSystemModelSlots::rootPathChanged( const QString & newPath )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rootPathChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QFILESYSTEMMODEL" );
    PHB_ITEM pnewPath = hb_itemPutC( NULL, QSTRINGTOSTRING(newPath) );
    hb_vmEvalBlockV( cb, 2, psender, pnewPath );
    hb_itemRelease( psender );
    hb_itemRelease( pnewPath );
  }
}

void QFileSystemModelSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QFileSystemModel * obj = (QFileSystemModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QFileSystemModelSlots * s = QCoreApplication::instance()->findChild<QFileSystemModelSlots *>();

    if( s == NULL )
    {
      s = new QFileSystemModelSlots();
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
