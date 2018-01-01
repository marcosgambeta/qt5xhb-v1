/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIACONTENT
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaPlaylist INHERIT QObject,QMediaBindableInterface

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
QMediaPlaylist(QObject * parent = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_NEW )
{
  QMediaPlaylist * o = new QMediaPlaylist ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QMEDIAPLAYLIST_DELETE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool addMedia(const QMediaContent & content)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_ADDMEDIA1 )
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
HB_FUNC_STATIC( QMEDIAPLAYLIST_ADDMEDIA2 )
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
HB_FUNC_STATIC( QMEDIAPLAYLIST_CLEAR )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->clear () );
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
    RINT( obj->currentIndex () );
  }
}


/*
QMediaContent currentMedia() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_CURRENTMEDIA )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->currentMedia () );
    _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
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
    hb_retni( obj->error () );
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
    RQSTRING( obj->errorString () );
  }
}


/*
bool insertMedia(int pos, const QMediaContent & content)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_INSERTMEDIA1 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * par2 = (QMediaContent *) _qt5xhb_itemGetPtr(2);
    RBOOL( obj->insertMedia ( PINT(1), *par2 ) );
  }
}


/*
bool insertMedia(int pos, const QList<QMediaContent> & items)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_INSERTMEDIA2 )
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
HB_FUNC_STATIC( QMEDIAPLAYLIST_ISEMPTY )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
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
    RBOOL( obj->isReadOnly () );
  }
}


/*
void load(const QNetworkRequest & request, const char * format = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD1 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->load ( *PQNETWORKREQUEST(1), OPCONSTCHAR(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void load(const QUrl & location, const char * format = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD2 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->load ( *PQURL(1), OPCONSTCHAR(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void load(QIODevice * device, const char * format = 0)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_LOAD3 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->load ( PQIODEVICE(1), OPCONSTCHAR(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIA )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaContent * ptr = new QMediaContent( obj->media ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QMEDIACONTENT" );
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
    RINT( obj->mediaCount () );
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
    RINT( obj->nextIndex ( OPINT(1,1) ) );
  }
}


/*
PlaybackMode playbackMode() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_PLAYBACKMODE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->playbackMode () );
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
    RINT( obj->previousIndex ( OPINT(1,1) ) );
  }
}


/*
bool removeMedia(int pos)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_REMOVEMEDIA1 )
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
HB_FUNC_STATIC( QMEDIAPLAYLIST_REMOVEMEDIA2 )
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
HB_FUNC_STATIC( QMEDIAPLAYLIST_SAVE1 )
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
HB_FUNC_STATIC( QMEDIAPLAYLIST_SAVE2 )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->save ( PQIODEVICE(1), PCONSTCHAR(2) ) );
  }
}


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
HB_FUNC_STATIC( QMEDIAPLAYLIST_SETPLAYBACKMODE )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPlaybackMode ( (QMediaPlaylist::PlaybackMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QMediaObject * mediaObject() const
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_MEDIAOBJECT )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
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
    obj->next ();
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
    obj->previous ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentIndex(int playlistPosition)
*/
HB_FUNC_STATIC( QMEDIAPLAYLIST_SETCURRENTINDEX )
{
  QMediaPlaylist * obj = (QMediaPlaylist *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentIndex ( PINT(1) );
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
    obj->shuffle ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
