$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaPlaylist INHERIT QObject,QMediaBindableInterface

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addMedia1
   METHOD addMedia2
   METHOD addMedia
   METHOD clear
   METHOD currentIndex
   METHOD currentMedia
   METHOD error
   METHOD errorString
   METHOD insertMedia1
   METHOD insertMedia2
   METHOD insertMedia
   METHOD isEmpty
   METHOD isReadOnly
   METHOD load1
   METHOD load2
   METHOD load3
   METHOD load
   METHOD media
   METHOD mediaCount
   METHOD nextIndex
   METHOD playbackMode
   METHOD previousIndex
   METHOD removeMedia1
   METHOD removeMedia2
   METHOD removeMedia
   METHOD save1
   METHOD save2
   METHOD save
   METHOD setPlaybackMode
   METHOD mediaObject
   METHOD next
   METHOD previous
   METHOD setCurrentIndex
   METHOD shuffle

   METHOD onCurrentIndexChanged
   METHOD onCurrentMediaChanged
   METHOD onLoadFailed
   METHOD onLoaded
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

/*
QMediaPlaylist(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
bool addMedia(const QMediaContent & content)
*/
$method=|bool|addMedia,addMedia1|const QMediaContent &

/*
bool addMedia(const QList<QMediaContent> & items)
*/
$method=|bool|addMedia,addMedia2|const QList<QMediaContent> &

//[1]bool addMedia(const QMediaContent & content)
//[2]bool addMedia(const QList<QMediaContent> & items)

HB_FUNC_STATIC( QMEDIAPLAYLIST_ADDMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_ADDMEDIA1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_ADDMEDIA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool clear()
*/
$method=|bool|clear|

/*
int currentIndex() const
*/
$method=|int|currentIndex|

/*
QMediaContent currentMedia() const
*/
$method=|QMediaContent|currentMedia|

/*
Error error() const
*/
$method=|QMediaPlaylist::Error|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
bool insertMedia(int pos, const QMediaContent & content)
*/
$method=|bool|insertMedia,insertMedia1|int,const QMediaContent &

/*
bool insertMedia(int pos, const QList<QMediaContent> & items)
*/
$method=|bool|insertMedia,insertMedia2|int,const QList<QMediaContent> &

//bool insertMedia(int pos, const QMediaContent & content)
//bool insertMedia(int pos, const QList<QMediaContent> & items)

HB_FUNC_STATIC( QMEDIAPLAYLIST_INSERTMEDIA )
{
  if( ISNUMPAR(1) && ISQMEDIACONTENT(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_INSERTMEDIA1 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_INSERTMEDIA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
bool isReadOnly() const
*/
$method=|bool|isReadOnly|

/*
void load(const QNetworkRequest & request, const char * format = 0)
*/
$method=|void|load,load1|const QNetworkRequest &,const char *=0

/*
void load(const QUrl & location, const char * format = 0)
*/
$method=|void|load,load2|const QUrl &,const char *=0

/*
void load(QIODevice * device, const char * format = 0)
*/
$method=|void|load,load3|QIODevice *,const char *=0

//[1]void load(const QNetworkRequest & request, const char * format = 0)
//[2]void load(const QUrl & location, const char * format = 0)
//[3]void load(QIODevice * device, const char * format = 0)

HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD )
{
  if( ISBETWEEN(1,2) && ISQNETWORKREQUEST(1) && ISOPTCHAR(2) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_LOAD1 );
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_LOAD2 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTCHAR(2) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_LOAD3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMediaContent media(int index) const
*/
$method=|QMediaContent|media|int

/*
int mediaCount() const
*/
$method=|int|mediaCount|

/*
int nextIndex(int steps = 1) const
*/
$method=|int|nextIndex|int=1

/*
PlaybackMode playbackMode() const
*/
$method=|QMediaPlaylist::PlaybackMode|playbackMode|

/*
int previousIndex(int steps = 1) const
*/
$method=|int|previousIndex|int=1

/*
bool removeMedia(int pos)
*/
$method=|bool|removeMedia,removeMedia1|int

/*
bool removeMedia(int start, int end)
*/
$method=|bool|removeMedia,removeMedia2|int,int

//[1]bool removeMedia(int pos)
//[2]bool removeMedia(int start, int end)

HB_FUNC_STATIC( QMEDIAPLAYLIST_REMOVEMEDIA )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_REMOVEMEDIA1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_REMOVEMEDIA2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool save(const QUrl & location, const char * format = 0)
*/
$method=|bool|save,save1|const QUrl &,const char *=0

/*
bool save(QIODevice * device, const char * format)
*/
$method=|bool|save,save2|QIODevice *,const char *

//[1]bool save(const QUrl & location, const char * format = 0)
//[2]bool save(QIODevice * device, const char * format)

HB_FUNC_STATIC( QMEDIAPLAYLIST_SAVE )
{
  if( ISBETWEEN(1,2) && ISQURL(1) && ISOPTCHAR(2) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_SAVE1 );
  }
  else if( ISNUMPAR(2) && ISQIODEVICE(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QMEDIAPLAYLIST_SAVE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setPlaybackMode(PlaybackMode mode)
*/
$method=|void|setPlaybackMode|QMediaPlaylist::PlaybackMode

/*
virtual QMediaObject * mediaObject() const
*/
$method=|QMediaObject *|mediaObject|

/*
void next()
*/
$method=|void|next|

/*
void previous()
*/
$method=|void|previous|

/*
void setCurrentIndex(int playlistPosition)
*/
$method=|void|setCurrentIndex|int

/*
void shuffle()
*/
$method=|void|shuffle|

#pragma ENDDUMP
