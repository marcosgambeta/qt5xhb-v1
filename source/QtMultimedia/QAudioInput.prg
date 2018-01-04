/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAudioInput INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bufferSize
   METHOD bytesReady
   METHOD elapsedUSecs
   METHOD error
   METHOD format
   METHOD notifyInterval
   METHOD periodSize
   METHOD processedUSecs
   METHOD reset
   METHOD resume
   METHOD setBufferSize
   METHOD setNotifyInterval
   METHOD start1
   METHOD start2
   METHOD start
   METHOD state
   METHOD stop
   METHOD suspend

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioInput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioInput>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioInput>
#endif

/*
QAudioInput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAUDIOINPUT_NEW1 )
{
  QAudioFormat par1 = ISNIL(1)? QAudioFormat() : *(QAudioFormat *) _qt5xhb_itemGetPtr(1);
  QAudioInput * o = new QAudioInput ( par1, OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QAudioInput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAUDIOINPUT_NEW2 )
{
  QAudioFormat par2 = ISNIL(2)? QAudioFormat() : *(QAudioFormat *) _qt5xhb_itemGetPtr(2);
  QAudioInput * o = new QAudioInput ( *PQAUDIODEVICEINFO(1), par2, OPQOBJECT(3,0) );
  _qt5xhb_returnNewObject( o, false );
}


//[1]QAudioInput ( const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )
//[2]QAudioInput ( const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0 )

HB_FUNC_STATIC( QAUDIOINPUT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQAUDIOFORMAT(1)||ISNIL(1)) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QAUDIOINPUT_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2)||ISNIL(2)) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QAUDIOINPUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUDIOINPUT_DELETE )
{
  QAudioInput * obj = (QAudioInput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bufferSize () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_BUFFERSIZE )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bufferSize () );
  }
}


/*
int bytesReady () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_BYTESREADY )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bytesReady () );
  }
}


/*
qint64 elapsedUSecs () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_ELAPSEDUSECS )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->elapsedUSecs () );
  }
}


/*
QAudio::Error error () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_ERROR )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QAudioFormat format () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_FORMAT )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
int notifyInterval () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_NOTIFYINTERVAL )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->notifyInterval () );
  }
}


/*
int periodSize () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_PERIODSIZE )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->periodSize () );
  }
}


/*
qint64 processedUSecs () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_PROCESSEDUSECS )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->processedUSecs () );
  }
}


/*
void reset ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_RESET )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resume ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_RESUME )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resume ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBufferSize ( int value )
*/
HB_FUNC_STATIC( QAUDIOINPUT_SETBUFFERSIZE )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNotifyInterval ( int ms )
*/
HB_FUNC_STATIC( QAUDIOINPUT_SETNOTIFYINTERVAL )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotifyInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start ( QIODevice * device )
*/
HB_FUNC_STATIC( QAUDIOINPUT_START1 )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start ( PQIODEVICE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIODevice * start ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_START2 )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->start ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


//[1]void start ( QIODevice * device )
//[2]QIODevice * start ()

HB_FUNC_STATIC( QAUDIOINPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QAUDIOINPUT_START1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOINPUT_START2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAudio::State state () const
*/
HB_FUNC_STATIC( QAUDIOINPUT_STATE )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
void stop ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_STOP )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void suspend ()
*/
HB_FUNC_STATIC( QAUDIOINPUT_SUSPEND )
{
  QAudioInput * obj = (QAudioInput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->suspend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
