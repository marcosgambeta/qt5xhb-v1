%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQFileSystemModel::directoryLoaded( const QString & path )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "directoryLoaded(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppath );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
  }
}

void SlotsQFileSystemModel::fileRenamed( const QString & path, const QString & oldName, const QString & newName )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "fileRenamed(QString,QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppath = hb_itemPutC( NULL, QSTRINGTOSTRING(path) );
    PHB_ITEM poldName = hb_itemPutC( NULL, QSTRINGTOSTRING(oldName) );
    PHB_ITEM pnewName = hb_itemPutC( NULL, QSTRINGTOSTRING(newName) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, ppath, poldName, pnewName );
    hb_itemRelease( psender );
    hb_itemRelease( ppath );
    hb_itemRelease( poldName );
    hb_itemRelease( pnewName );
  }
}

void SlotsQFileSystemModel::rootPathChanged( const QString & newPath )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rootPathChanged(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pnewPath = hb_itemPutC( NULL, QSTRINGTOSTRING(newPath) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pnewPath );
    hb_itemRelease( psender );
    hb_itemRelease( pnewPath );
  }
}

$signalMethod=|directoryLoaded(QString)
$signalMethod=|fileRenamed(QString,QString,QString)
$signalMethod=|rootPathChanged(QString)

$endSlotsClass
