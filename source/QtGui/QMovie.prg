/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QIMAGE
REQUEST QPIXMAP
REQUEST QIODEVICE
REQUEST QBYTEARRAY
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QMovie INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD backgroundColor
   METHOD cacheMode
   METHOD currentFrameNumber
   METHOD currentImage
   METHOD currentPixmap
   METHOD device
   METHOD fileName
   METHOD format
   METHOD frameCount
   METHOD frameRect
   METHOD isValid
   METHOD jumpToFrame
   METHOD loopCount
   METHOD nextFrameDelay
   METHOD scaledSize
   METHOD setBackgroundColor
   METHOD setCacheMode
   METHOD setDevice
   METHOD setFileName
   METHOD setFormat
   METHOD setScaledSize
   METHOD speed
   METHOD state
   METHOD jumpToNextFrame
   METHOD setPaused
   METHOD setSpeed
   METHOD start
   METHOD stop

   METHOD onError
   METHOD onFinished
   METHOD onFrameChanged
   METHOD onResized
   METHOD onStarted
   METHOD onStateChanged
   METHOD onUpdated

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMovie
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMovie>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMovie>
#endif

#include <QColor>
#include <QPixmap>

/*
QMovie ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW1 )
{
  QMovie * o = new QMovie ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW2 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
  QMovie * o = new QMovie ( PQIODEVICE(1), par2, OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QMOVIE_NEW3 )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(2);
  QMovie * o = new QMovie ( PQSTRING(1), par2, OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QMovie ( QObject * parent = 0 )
//[2]QMovie ( QIODevice * device, const QByteArray & format = QByteArray(), QObject * parent = 0 )
//[3]QMovie ( const QString & fileName, const QByteArray & format = QByteArray(), QObject * parent = 0 )

HB_FUNC_STATIC( QMOVIE_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QMOVIE_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQIODEVICE(1) && ISOPTQBYTEARRAY(2) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QMOVIE_NEW2 );
  }
  else if( ISBETWEEN(1,3) && ISCHAR(1) && ISOPTQBYTEARRAY(2) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QMOVIE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMOVIE_DELETE )
{
  QMovie * obj = (QMovie *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QColor  backgroundColor () const
*/
HB_FUNC_STATIC( QMOVIE_BACKGROUNDCOLOR )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor * ptr = new QColor( obj->backgroundColor () );
    _qt5xhb_createReturnClass ( ptr, "QCOLOR", true );
  }
}


/*
CacheMode  cacheMode () const
*/
HB_FUNC_STATIC( QMOVIE_CACHEMODE )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->cacheMode () );
  }
}


/*
int  currentFrameNumber () const
*/
HB_FUNC_STATIC( QMOVIE_CURRENTFRAMENUMBER )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentFrameNumber () );
  }
}


/*
QImage  currentImage () const
*/
HB_FUNC_STATIC( QMOVIE_CURRENTIMAGE )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * ptr = new QImage( obj->currentImage () );
    _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
QPixmap  currentPixmap () const
*/
HB_FUNC_STATIC( QMOVIE_CURRENTPIXMAP )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->currentPixmap () );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
QIODevice *  device () const
*/
HB_FUNC_STATIC( QMOVIE_DEVICE )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->device ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
QString  fileName () const
*/
HB_FUNC_STATIC( QMOVIE_FILENAME )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->fileName () ) );
  }
}


/*
QByteArray  format () const
*/
HB_FUNC_STATIC( QMOVIE_FORMAT )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
int  frameCount () const
*/
HB_FUNC_STATIC( QMOVIE_FRAMECOUNT )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frameCount () );
  }
}


/*
QRect  frameRect () const
*/
HB_FUNC_STATIC( QMOVIE_FRAMERECT )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->frameRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
bool  isValid () const
*/
HB_FUNC_STATIC( QMOVIE_ISVALID )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
bool  jumpToFrame ( int frameNumber )
*/
HB_FUNC_STATIC( QMOVIE_JUMPTOFRAME )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->jumpToFrame ( PINT(1) ) );
  }
}


/*
int  loopCount () const
*/
HB_FUNC_STATIC( QMOVIE_LOOPCOUNT )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->loopCount () );
  }
}


/*
int  nextFrameDelay () const
*/
HB_FUNC_STATIC( QMOVIE_NEXTFRAMEDELAY )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nextFrameDelay () );
  }
}


/*
QSize  scaledSize ()
*/
HB_FUNC_STATIC( QMOVIE_SCALEDSIZE )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->scaledSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
void  setBackgroundColor ( const QColor & color )
*/
HB_FUNC_STATIC( QMOVIE_SETBACKGROUNDCOLOR )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QColor par1 = ISOBJECT(1)? *(QColor *) _qt5xhb_itemGetPtr(1) : QColor(hb_parc(1));
    obj->setBackgroundColor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setCacheMode ( CacheMode mode )
*/
HB_FUNC_STATIC( QMOVIE_SETCACHEMODE )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCacheMode ( (QMovie::CacheMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setDevice ( QIODevice * device )
*/
HB_FUNC_STATIC( QMOVIE_SETDEVICE )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDevice ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QMOVIE_SETFILENAME )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFileName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setFormat ( const QByteArray & format )
*/
HB_FUNC_STATIC( QMOVIE_SETFORMAT )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFormat ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void  setScaledSize ( const QSize & size )
*/
HB_FUNC_STATIC( QMOVIE_SETSCALEDSIZE )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setScaledSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int  speed () const
*/
HB_FUNC_STATIC( QMOVIE_SPEED )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->speed () );
  }
}


/*
MovieState  state () const
*/
HB_FUNC_STATIC( QMOVIE_STATE )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


// Public Slots

/*
bool jumpToNextFrame ()
*/
HB_FUNC_STATIC( QMOVIE_JUMPTONEXTFRAME )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->jumpToNextFrame () );
  }
}


/*
void setPaused ( bool paused )
*/
HB_FUNC_STATIC( QMOVIE_SETPAUSED )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPaused ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpeed ( int percentSpeed )
*/
HB_FUNC_STATIC( QMOVIE_SETSPEED )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSpeed ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ()
*/
HB_FUNC_STATIC( QMOVIE_START )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop ()
*/
HB_FUNC_STATIC( QMOVIE_STOP )
{
  QMovie * obj = (QMovie *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
