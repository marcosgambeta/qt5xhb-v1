%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaPlaylist INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete

   METHOD addMedia
   METHOD clear
   METHOD currentIndex
   METHOD currentMedia
   METHOD error
   METHOD errorString
   METHOD insertMedia
   METHOD isEmpty
   METHOD isReadOnly
   METHOD load
   METHOD media
   METHOD mediaCount
   METHOD mediaObject
   METHOD moveMedia
   METHOD next
   METHOD nextIndex
   METHOD playbackMode
   METHOD previous
   METHOD previousIndex
   METHOD removeMedia
   METHOD save
   METHOD setCurrentIndex
   METHOD setPlaybackMode
   METHOD shuffle

   METHOD onCurrentIndexChanged
   METHOD onCurrentMediaChanged
   METHOD onLoaded
   METHOD onLoadFailed
   METHOD onMediaAboutToBeInserted
   METHOD onMediaAboutToBeRemoved
   METHOD onMediaChanged
   METHOD onMediaInserted
   METHOD onMediaRemoved
   METHOD onPlaybackModeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QMediaPlaylist(QObject * parent = Q_NULLPTR)
$constructor=|new|QObject *=0

$prototype=virtual ~QMediaPlaylist()
$deleteMethod

%%
%% Q_PROPERTY(QMediaPlaylist::PlaybackMode playbackMode READ playbackMode WRITE setPlaybackMode NOTIFY playbackModeChanged)
%%

$prototype=PlaybackMode playbackMode() const
$method=|QMediaPlaylist::PlaybackMode|playbackMode|

$prototype=void setPlaybackMode(PlaybackMode mode)
$method=|void|setPlaybackMode|QMediaPlaylist::PlaybackMode

%%
%% Q_PROPERTY(QMediaContent currentMedia READ currentMedia NOTIFY currentMediaChanged)
%%

$prototype=QMediaContent currentMedia() const
$method=|QMediaContent|currentMedia|

%%
%% Q_PROPERTY(int currentIndex READ currentIndex WRITE setCurrentIndex NOTIFY currentIndexChanged)
%%

$prototype=int currentIndex() const
$method=|int|currentIndex|

$prototype=void setCurrentIndex(int index)
$method=|void|setCurrentIndex|int

%%
%%
%%

$prototype=bool addMedia(const QMediaContent & content)
$internalMethod=|bool|addMedia,addMedia1|const QMediaContent &

$prototype=bool addMedia(const QList<QMediaContent> & items)
$internalMethod=|bool|addMedia,addMedia2|const QList<QMediaContent> &

//[1]bool addMedia(const QMediaContent & content)
//[2]bool addMedia(const QList<QMediaContent> & items)

HB_FUNC_STATIC( QMEDIAPLAYLIST_ADDMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    QMediaPlaylist_addMedia1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QMediaPlaylist_addMedia2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool clear()
$method=|bool|clear|

$prototype=Error error() const
$method=|QMediaPlaylist::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=bool insertMedia(int pos, const QMediaContent & content)
$internalMethod=|bool|insertMedia,insertMedia1|int,const QMediaContent &

$prototype=bool insertMedia(int pos, const QList<QMediaContent> & items)
$internalMethod=|bool|insertMedia,insertMedia2|int,const QList<QMediaContent> &

//bool insertMedia(int pos, const QMediaContent & content)
//bool insertMedia(int pos, const QList<QMediaContent> & items)

HB_FUNC_STATIC( QMEDIAPLAYLIST_INSERTMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    QMediaPlaylist_insertMedia1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QMediaPlaylist_insertMedia2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=bool isReadOnly() const
$method=|bool|isReadOnly|

$prototype=void load(const QNetworkRequest & request, const char * format = Q_NULLPTR)
$internalMethod=|void|load,load1|const QNetworkRequest &,const char *=0

$prototype=void load(const QUrl & location, const char * format = Q_NULLPTR)
$internalMethod=|void|load,load2|const QUrl &,const char *=0

$prototype=void load(QIODevice * device, const char * format = Q_NULLPTR)
$internalMethod=|void|load,load3|QIODevice *,const char *=0

//[1]void load(const QNetworkRequest & request, const char * format = Q_NULLPTR)
//[2]void load(const QUrl & location, const char * format = Q_NULLPTR)
//[3]void load(QIODevice * device, const char * format = Q_NULLPTR)

HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD )
{
  if( ISBETWEEN(1,2) && ISQNETWORKREQUEST(1) && ISOPTCHAR(2) )
  {
    QMediaPlaylist_load1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    QMediaPlaylist_load2();
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTCHAR(2) )
  {
    QMediaPlaylist_load3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QMediaContent media(int index) const
$method=|QMediaContent|media|int

$prototype=int mediaCount() const
$method=|int|mediaCount|

$prototype=int nextIndex(int steps = 1) const
$method=|int|nextIndex|int=1

$prototype=int previousIndex(int steps = 1) const
$method=|int|previousIndex|int=1

$prototype=bool removeMedia(int pos)
$internalMethod=|bool|removeMedia,removeMedia1|int

$prototype=bool removeMedia(int start, int end)
$internalMethod=|bool|removeMedia,removeMedia2|int,int

//[1]bool removeMedia(int pos)
//[2]bool removeMedia(int start, int end)

HB_FUNC_STATIC( QMEDIAPLAYLIST_REMOVEMEDIA )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QMediaPlaylist_removeMedia1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QMediaPlaylist_removeMedia2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool save(const QUrl & location, const char * format = Q_NULLPTR)
$internalMethod=|bool|save,save1|const QUrl &,const char *=0

$prototype=bool save(QIODevice * device, const char * format)
$internalMethod=|bool|save,save2|QIODevice *,const char *

//[1]bool save(const QUrl & location, const char * format = Q_NULLPTR)
//[2]bool save(QIODevice * device, const char * format)

HB_FUNC_STATIC( QMEDIAPLAYLIST_SAVE )
{
  if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    QMediaPlaylist_save1();
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    QMediaPlaylist_save2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=virtual QMediaObject *mediaObject() const override
%% TODO: is virtual ?
$virtualMethod=|QMediaObject *|mediaObject|

$prototype=void next()
$slotMethod=|void|next|

$prototype=void previous()
$slotMethod=|void|previous|

$prototype=void shuffle()
$slotMethod=|void|shuffle|

$prototype=bool moveMedia(int from, int to)
$method=5,7,0|bool|moveMedia|int,int

$prototype=bool setMediaObject(QMediaObject *object) override (protected)

$beginSignals
$signal=|currentIndexChanged(int)
$signal=|currentMediaChanged(QMediaContent)
$signal=|loadFailed()
$signal=|loaded()
$signal=|mediaAboutToBeInserted(int,int)
$signal=|mediaAboutToBeRemoved(int,int)
$signal=|mediaChanged(int,int)
$signal=|mediaInserted(int,int)
$signal=|mediaRemoved(int,int)
$signal=|playbackModeChanged(QMediaPlaylist::PlaybackMode)
$endSignals

#pragma ENDDUMP
