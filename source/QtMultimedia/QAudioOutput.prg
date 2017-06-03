/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAudioOutput INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD bufferSize
   METHOD bytesFree
   METHOD category
   METHOD elapsedUSecs
   METHOD error
   METHOD format
   METHOD notifyInterval
   METHOD periodSize
   METHOD processedUSecs
   METHOD reset
   METHOD resume
   METHOD setBufferSize
   METHOD setCategory
   METHOD setNotifyInterval
   METHOD setVolume
   METHOD start1
   METHOD start2
   METHOD start
   METHOD state
   METHOD stop
   METHOD suspend
   METHOD volume

   METHOD onNotify
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioOutput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAudioOutput>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAudioOutput>
#endif

/*
QAudioOutput(const QAudioFormat & format = QAudioFormat(), QObject * parent = 0)
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_NEW1 )
{
  QAudioFormat par1 = ISNIL(1)? QAudioFormat() : *(QAudioFormat *) _qt5xhb_itemGetPtr(1);
  QAudioOutput * o = new QAudioOutput ( par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAudioOutput(const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0)
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_NEW2 )
{
  QAudioDeviceInfo * par1 = (QAudioDeviceInfo *) _qt5xhb_itemGetPtr(1);
  QAudioFormat par2 = ISNIL(2)? QAudioFormat() : *(QAudioFormat *) _qt5xhb_itemGetPtr(2);
  QAudioOutput * o = new QAudioOutput ( *par1, par2, OPQOBJECT(3,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QAudioOutput(const QAudioFormat & format = QAudioFormat(), QObject * parent = 0)
//[2]QAudioOutput(const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0)

HB_FUNC_STATIC( QAUDIOOUTPUT_NEW )
{
  if( ISBETWEEN(0,2) && (ISQAUDIOFORMAT(1)||ISNIL(1)) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_NEW1 );
  }
  else if( ISBETWEEN(1,3) && ISQAUDIODEVICEINFO(1) && (ISQAUDIOFORMAT(2)||ISNIL(2)) && ISOPTQOBJECT(3) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAUDIOOUTPUT_DELETE )
{
  QAudioOutput * obj = (QAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bufferSize() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_BUFFERSIZE )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bufferSize () );
  }
}


/*
int bytesFree() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_BYTESFREE )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesFree () );
  }
}


/*
QString category() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_CATEGORY )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->category () ) );
  }
}


/*
qint64 elapsedUSecs() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_ELAPSEDUSECS )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->elapsedUSecs () );
  }
}


/*
QAudio::Error error() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_ERROR )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QAudioFormat format() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_FORMAT )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
int notifyInterval() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_NOTIFYINTERVAL )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->notifyInterval () );
  }
}


/*
int periodSize() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_PERIODSIZE )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->periodSize () );
  }
}


/*
qint64 processedUSecs() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_PROCESSEDUSECS )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->processedUSecs () );
  }
}


/*
void reset()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_RESET )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resume()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_RESUME )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resume ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setBufferSize(int value)
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SETBUFFERSIZE )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCategory(const QString & category)
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SETCATEGORY )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCategory ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNotifyInterval(int ms)
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SETNOTIFYINTERVAL )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotifyInterval ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVolume(qreal volume)
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SETVOLUME )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start(QIODevice * device)
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_START1 )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    obj->start ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIODevice * start()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_START2 )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->start ();
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


//[1]void start(QIODevice * device)
//[2]QIODevice * start()

HB_FUNC_STATIC( QAUDIOOUTPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_START1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIOOUTPUT_START2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAudio::State state() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_STATE )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
void stop()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_STOP )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void suspend()
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_SUSPEND )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->suspend ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal volume() const
*/
HB_FUNC_STATIC( QAUDIOOUTPUT_VOLUME )
{
  QAudioOutput * obj = (QAudioOutput *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->volume () );
  }
}




#pragma ENDDUMP
