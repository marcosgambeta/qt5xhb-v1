/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QSoundEffect INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD source
   METHOD setSource
   METHOD loopCount
   METHOD loopsRemaining
   METHOD setLoopCount
   METHOD volume
   METHOD setVolume
   METHOD isMuted
   METHOD setMuted
   METHOD isLoaded
   METHOD isPlaying
   METHOD status
   METHOD category
   METHOD setCategory
   METHOD play
   METHOD stop
   METHOD supportedMimeTypes

   METHOD onSourceChanged
   METHOD onLoopCountChanged
   METHOD onLoopsRemainingChanged
   METHOD onVolumeChanged
   METHOD onMutedChanged
   METHOD onLoadedChanged
   METHOD onPlayingChanged
   METHOD onStatusChanged
   METHOD onCategoryChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSoundEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSoundEffect>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSoundEffect>
#endif

/*
QSoundEffect(QObject *parent = 0)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_NEW )
{
  QSoundEffect * o = new QSoundEffect ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSOUNDEFFECT_DELETE )
{
  QSoundEffect * obj = (QSoundEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QUrl source() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SOURCE )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void setSource(const QUrl &url)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETSOURCE )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSource ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int loopCount() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_LOOPCOUNT )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loopCount () );
  }
}


/*
int loopsRemaining() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_LOOPSREMAINING )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loopsRemaining () );
  }
}


/*
void setLoopCount(int loopCount)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETLOOPCOUNT )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLoopCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal volume() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_VOLUME )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->volume () );
  }
}


/*
void setVolume(qreal volume)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETVOLUME )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isMuted() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_ISMUTED )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMuted () );
  }
}


/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETMUTED )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isLoaded() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_ISLOADED )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isLoaded () );
  }
}


/*
bool isPlaying() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_ISPLAYING )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isPlaying () );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_STATUS )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}


/*
QString category() const
*/
HB_FUNC_STATIC( QSOUNDEFFECT_CATEGORY )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->category () ) );
  }
}


/*
void setCategory(const QString &category)
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SETCATEGORY )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCategory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void play()
*/
HB_FUNC_STATIC( QSOUNDEFFECT_PLAY )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->play ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QSOUNDEFFECT_STOP )
{
  QSoundEffect * obj = (QSoundEffect *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QStringList supportedMimeTypes()
*/
HB_FUNC_STATIC( QSOUNDEFFECT_SUPPORTEDMIMETYPES )
{
  QStringList strl = QSoundEffect::supportedMimeTypes ();
  _qt5xhb_convert_qstringlist_to_array ( strl );
}




#pragma ENDDUMP
