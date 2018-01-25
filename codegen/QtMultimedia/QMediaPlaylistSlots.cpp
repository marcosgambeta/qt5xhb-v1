%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

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

$signalMethod=|currentIndexChanged(int)
$signalMethod=|currentMediaChanged(QMediaContent)
$signalMethod=|loadFailed()
$signalMethod=|loaded()
$signalMethod=|mediaAboutToBeInserted(int,int)
$signalMethod=|mediaAboutToBeRemoved(int,int)
$signalMethod=|mediaChanged(int,int)
$signalMethod=|mediaInserted(int,int)
$signalMethod=|mediaRemoved(int,int)
$signalMethod=|playbackModeChanged(QMediaPlaylist::PlaybackMode)

$endSlotsClass
