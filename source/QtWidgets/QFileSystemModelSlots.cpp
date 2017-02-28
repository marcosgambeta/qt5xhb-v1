/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QFileSystemModelSlots.h"


static SlotsQFileSystemModel * s = NULL;

SlotsQFileSystemModel::SlotsQFileSystemModel(QObject *parent) : QObject(parent)
{
}

SlotsQFileSystemModel::~SlotsQFileSystemModel()
{
}

void SlotsQFileSystemModel::directoryLoaded ( const QString & path )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directoryLoaded(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppath = hb_itemPutC( NULL, (const char *) path.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppath );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
  }
}

void SlotsQFileSystemModel::fileRenamed ( const QString & path, const QString & oldName, const QString & newName )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fileRenamed(QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppath = hb_itemPutC( NULL, (const char *) path.toLatin1().data() );
    PHB_ITEM poldName = hb_itemPutC( NULL, (const char *) oldName.toLatin1().data() );
    PHB_ITEM pnewName = hb_itemPutC( NULL, (const char *) newName.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, ppath, poldName, pnewName );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
    hb_itemRelease( poldName );
    hb_itemRelease( pnewName );
  }
}

void SlotsQFileSystemModel::rootPathChanged ( const QString & newPath )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rootPathChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewPath = hb_itemPutC( NULL, (const char *) newPath.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewPath );
    hb_itemRelease( psender );
    hb_itemRelease( pnewPath );
  }
}

HB_FUNC( QFILESYSTEMMODEL_ONDIRECTORYLOADED )
{
  if( s == NULL )
  {
    s = new SlotsQFileSystemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "directoryLoaded(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(directoryLoaded(QString)), s, SLOT(directoryLoaded(QString)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "directoryLoaded(QString)";
    ret = object->disconnect(object, SIGNAL(directoryLoaded(QString)), s, SLOT(directoryLoaded(QString)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QFILESYSTEMMODEL_ONFILERENAMED )
{
  if( s == NULL )
  {
    s = new SlotsQFileSystemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "fileRenamed(QString,QString,QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(fileRenamed(QString,QString,QString)), s, SLOT(fileRenamed(QString,QString,QString)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "fileRenamed(QString,QString,QString)";
    ret = object->disconnect(object, SIGNAL(fileRenamed(QString,QString,QString)), s, SLOT(fileRenamed(QString,QString,QString)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}

HB_FUNC( QFILESYSTEMMODEL_ONROOTPATHCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQFileSystemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "rootPathChanged(QString)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(rootPathChanged(QString)), s, SLOT(rootPathChanged(QString)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "rootPathChanged(QString)";
    ret = object->disconnect(object, SIGNAL(rootPathChanged(QString)), s, SLOT(rootPathChanged(QString)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}
