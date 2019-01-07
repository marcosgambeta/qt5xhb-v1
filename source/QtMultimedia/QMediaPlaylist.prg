/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaPlaylist INHERIT QObject,QMediaBindableInterface

   METHOD new
   METHOD delete
   METHOD playbackMode
   METHOD setPlaybackMode
   METHOD currentMedia
   METHOD currentIndex
   METHOD setCurrentIndex
   METHOD addMedia
   METHOD clear
   METHOD error
   METHOD errorString
   METHOD insertMedia
   METHOD isEmpty
   METHOD isReadOnly
   METHOD load
   METHOD media
   METHOD mediaCount
   METHOD nextIndex
   METHOD previousIndex
   METHOD removeMedia
   METHOD save
   METHOD mediaObject
   METHOD next
   METHOD previous
   METHOD shuffle
   METHOD moveMedia

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

PROCEDURE destroyObject () CLASS QMediaPlaylist
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaPlaylist>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaPlaylist>
#endif

/*
explicit QMediaPlaylist(QObject * parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QMediaPlaylist * o = new QMediaPlaylist ( OPQOBJECT(1,0) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QMediaPlaylist()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_DELETE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
PlaybackMode playbackMode() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PLAYBACKMODE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->playbackMode () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPlaybackMode(PlaybackMode mode)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SETPLAYBACKMODE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPlaybackMode ( (QMediaPlaylist::PlaybackMode) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMediaContent currentMedia() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CURRENTMEDIA )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaContent * ptr = new QMediaContent( obj->currentMedia () );
      _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int currentIndex() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CURRENTINDEX )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentIndex () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setCurrentIndex(int index)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SETCURRENTINDEX )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCurrentIndex ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool addMedia(const QMediaContent & content)
*/
void QMediaPlaylist_addMedia1 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->addMedia ( *PQMEDIACONTENT(1) ) );
  }
}

/*
bool addMedia(const QList<QMediaContent> & items)
*/
void QMediaPlaylist_addMedia2 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       QList<QMediaContent> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QMediaContent *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      RBOOL( obj->addMedia ( par1 ) );
  }
}

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

/*
bool clear()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CLEAR )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->clear () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Error error() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ERROR )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ERRORSTRING )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool insertMedia(int pos, const QMediaContent & content)
*/
void QMediaPlaylist_insertMedia1 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->insertMedia ( PINT(1), *PQMEDIACONTENT(2) ) );
  }
}

/*
bool insertMedia(int pos, const QList<QMediaContent> & items)
*/
void QMediaPlaylist_insertMedia2 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
       QList<QMediaContent> par2;
PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aList2);
for (i2=0;i2<nLen2;i2++)
{
  par2 << *(QMediaContent *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
}
      RBOOL( obj->insertMedia ( PINT(1), par2 ) );
  }
}

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

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ISEMPTY )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isReadOnly() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ISREADONLY )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isReadOnly () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void load(const QNetworkRequest & request, const char * format = Q_NULLPTR)
*/
void QMediaPlaylist_load1 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->load ( *PQNETWORKREQUEST(1), OPCONSTCHAR(2,0) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load(const QUrl & location, const char * format = Q_NULLPTR)
*/
void QMediaPlaylist_load2 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->load ( *PQURL(1), OPCONSTCHAR(2,0) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void load(QIODevice * device, const char * format = Q_NULLPTR)
*/
void QMediaPlaylist_load3 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      obj->load ( PQIODEVICE(1), OPCONSTCHAR(2,0) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
QMediaContent media(int index) const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIA )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QMediaContent * ptr = new QMediaContent( obj->media ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int mediaCount() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIACOUNT )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->mediaCount () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int nextIndex(int steps = 1) const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEXTINDEX )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RINT( obj->nextIndex ( OPINT(1,1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int previousIndex(int steps = 1) const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PREVIOUSINDEX )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RINT( obj->previousIndex ( OPINT(1,1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool removeMedia(int pos)
*/
void QMediaPlaylist_removeMedia1 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->removeMedia ( PINT(1) ) );
  }
}

/*
bool removeMedia(int start, int end)
*/
void QMediaPlaylist_removeMedia2 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->removeMedia ( PINT(1), PINT(2) ) );
  }
}

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

/*
bool save(const QUrl & location, const char * format = Q_NULLPTR)
*/
void QMediaPlaylist_save1 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->save ( *PQURL(1), OPCONSTCHAR(2,0) ) );
  }
}

/*
bool save(QIODevice * device, const char * format)
*/
void QMediaPlaylist_save2 ()
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
      RBOOL( obj->save ( PQIODEVICE(1), PCONSTCHAR(2) ) );
  }
}

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

/*
virtual QMediaObject *mediaObject() const override
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIAOBJECT )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMediaObject * ptr = obj->mediaObject ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QMEDIAOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void next()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEXT )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->next ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void previous()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PREVIOUS )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->previous ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void shuffle()
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SHUFFLE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->shuffle ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool moveMedia(int from, int to)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MOVEMEDIA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      RBOOL( obj->moveMedia ( PINT(1), PINT(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool setMediaObject(QMediaObject *object) override [protected]
*/

void QMediaPlaylistSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONCURRENTINDEXCHANGED )
{
  QMediaPlaylistSlots_connect_signal( "currentIndexChanged(int)", "currentIndexChanged(int)" );
}

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONCURRENTMEDIACHANGED )
{
  QMediaPlaylistSlots_connect_signal( "currentMediaChanged(QMediaContent)", "currentMediaChanged(QMediaContent)" );
}

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONLOADFAILED )
{
  QMediaPlaylistSlots_connect_signal( "loadFailed()", "loadFailed()" );
}

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONLOADED )
{
  QMediaPlaylistSlots_connect_signal( "loaded()", "loaded()" );
}

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIAABOUTTOBEINSERTED )
{
  QMediaPlaylistSlots_connect_signal( "mediaAboutToBeInserted(int,int)", "mediaAboutToBeInserted(int,int)" );
}

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIAABOUTTOBEREMOVED )
{
  QMediaPlaylistSlots_connect_signal( "mediaAboutToBeRemoved(int,int)", "mediaAboutToBeRemoved(int,int)" );
}

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIACHANGED )
{
  QMediaPlaylistSlots_connect_signal( "mediaChanged(int,int)", "mediaChanged(int,int)" );
}

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIAINSERTED )
{
  QMediaPlaylistSlots_connect_signal( "mediaInserted(int,int)", "mediaInserted(int,int)" );
}

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONMEDIAREMOVED )
{
  QMediaPlaylistSlots_connect_signal( "mediaRemoved(int,int)", "mediaRemoved(int,int)" );
}

HB_FUNC_STATIC( QMEDIAPLAYLIST_ONPLAYBACKMODECHANGED )
{
  QMediaPlaylistSlots_connect_signal( "playbackModeChanged(QMediaPlaylist::PlaybackMode)", "playbackModeChanged(QMediaPlaylist::PlaybackMode)" );
}

#pragma ENDDUMP
