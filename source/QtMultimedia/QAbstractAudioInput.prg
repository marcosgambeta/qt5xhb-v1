/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QAUDIOFORMAT
#endif

CLASS QAbstractAudioInput INHERIT QObject

   METHOD delete
   METHOD start1
   METHOD start2
   METHOD start
   METHOD stop
   METHOD reset
   METHOD suspend
   METHOD resume
   METHOD bytesReady
   METHOD periodSize
   METHOD setBufferSize
   METHOD bufferSize
   METHOD setNotifyInterval
   METHOD notifyInterval
   METHOD processedUSecs
   METHOD elapsedUSecs
   METHOD error
   METHOD state
   METHOD setFormat
   METHOD format
   METHOD setVolume
   METHOD volume

   METHOD onErrorChanged
   METHOD onStateChanged
   METHOD onNotify

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractAudioInput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractAudioInput>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractAudioInput>
#endif


HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_DELETE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void start(QIODevice *device) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_START1 )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QIODevice* start() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_START2 )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->start ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


//[1]virtual void start(QIODevice *device) = 0
//[2]virtual QIODevice* start() = 0

HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QABSTRACTAUDIOINPUT_START1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QABSTRACTAUDIOINPUT_START2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_STOP )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reset() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_RESET )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void suspend()  = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SUSPEND )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->suspend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void resume() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_RESUME )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resume ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int bytesReady() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_BYTESREADY )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bytesReady () );
  }
}


/*
virtual int periodSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_PERIODSIZE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->periodSize () );
  }
}


/*
virtual void setBufferSize(int value) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETBUFFERSIZE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int bufferSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_BUFFERSIZE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bufferSize () );
  }
}


/*
virtual void setNotifyInterval(int milliSeconds) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETNOTIFYINTERVAL )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotifyInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int notifyInterval() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_NOTIFYINTERVAL )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->notifyInterval () );
  }
}


/*
virtual qint64 processedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_PROCESSEDUSECS )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->processedUSecs () );
  }
}


/*
virtual qint64 elapsedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ELAPSEDUSECS )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->elapsedUSecs () );
  }
}


/*
virtual QAudio::Error error() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_ERROR )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
virtual QAudio::State state() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_STATE )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
virtual void setFormat(const QAudioFormat& fmt) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETFORMAT )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFormat ( *PQAUDIOFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QAudioFormat format() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_FORMAT )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
virtual void setVolume(qreal) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_SETVOLUME )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qreal volume() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOINPUT_VOLUME )
{
  QAbstractAudioInput * obj = (QAbstractAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->volume () );
  }
}




#pragma ENDDUMP
