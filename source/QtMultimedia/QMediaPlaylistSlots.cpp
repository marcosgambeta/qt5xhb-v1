/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMediaPlaylistSlots.h"


static SlotsQMediaPlaylist * s = NULL;

SlotsQMediaPlaylist::SlotsQMediaPlaylist(QObject *parent) : QObject(parent)
{
}

SlotsQMediaPlaylist::~SlotsQMediaPlaylist()
{
}

void SlotsQMediaPlaylist::currentIndexChanged(int position)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentIndexChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pposition = hb_itemPutNI( NULL, position );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pposition );
    hb_itemRelease( psender );
    hb_itemRelease( pposition );
  }
}

void SlotsQMediaPlaylist::currentMediaChanged(const QMediaContent & content)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentMediaChanged(QMediaContent)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcontent = hb_itemPutPtr( NULL, (QMediaContent *) &content );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcontent );
    hb_itemRelease( psender );
    hb_itemRelease( pcontent );
  }
}

void SlotsQMediaPlaylist::loadFailed()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loadFailed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMediaPlaylist::loaded()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "loaded()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQMediaPlaylist::mediaAboutToBeInserted(int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mediaAboutToBeInserted(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQMediaPlaylist::mediaAboutToBeRemoved(int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mediaAboutToBeRemoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQMediaPlaylist::mediaChanged(int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mediaChanged(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQMediaPlaylist::mediaInserted(int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mediaInserted(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQMediaPlaylist::mediaRemoved(int start, int end)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mediaRemoved(int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQMediaPlaylist::playbackModeChanged(QMediaPlaylist::PlaybackMode mode)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "playbackModeChanged(QMediaPlaylist::PlaybackMode)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmode = hb_itemPutNI( NULL, (int) mode );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmode );
    hb_itemRelease( psender );
    hb_itemRelease( pmode );
  }
}

HB_FUNC( QMEDIAPLAYLIST_ONCURRENTINDEXCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentIndexChanged(int)", "currentIndexChanged(int)" ) );
}

HB_FUNC( QMEDIAPLAYLIST_ONCURRENTMEDIACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "currentMediaChanged(QMediaContent)", "currentMediaChanged(QMediaContent)" ) );
}

HB_FUNC( QMEDIAPLAYLIST_ONLOADFAILED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loadFailed()", "loadFailed()" ) );
}

HB_FUNC( QMEDIAPLAYLIST_ONLOADED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "loaded()", "loaded()" ) );
}

HB_FUNC( QMEDIAPLAYLIST_ONMEDIAABOUTTOBEINSERTED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mediaAboutToBeInserted(int,int)", "mediaAboutToBeInserted(int,int)" ) );
}

HB_FUNC( QMEDIAPLAYLIST_ONMEDIAABOUTTOBEREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mediaAboutToBeRemoved(int,int)", "mediaAboutToBeRemoved(int,int)" ) );
}

HB_FUNC( QMEDIAPLAYLIST_ONMEDIACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mediaChanged(int,int)", "mediaChanged(int,int)" ) );
}

HB_FUNC( QMEDIAPLAYLIST_ONMEDIAINSERTED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mediaInserted(int,int)", "mediaInserted(int,int)" ) );
}

HB_FUNC( QMEDIAPLAYLIST_ONMEDIAREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "mediaRemoved(int,int)", "mediaRemoved(int,int)" ) );
}

HB_FUNC( QMEDIAPLAYLIST_ONPLAYBACKMODECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaPlaylist(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "playbackModeChanged(QMediaPlaylist::PlaybackMode)", "playbackModeChanged(QMediaPlaylist::PlaybackMode)" ) );
}
