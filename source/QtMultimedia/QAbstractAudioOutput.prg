/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QAUDIOFORMAT
#endif

CLASS QAbstractAudioOutput INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractAudioOutput
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD start1
   METHOD start2
   METHOD start
   METHOD stop
   METHOD reset
   METHOD suspend
   METHOD resume
   METHOD bytesFree
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
   METHOD category
   METHOD setCategory
   METHOD onErrorChanged
   METHOD onStateChanged
   METHOD onNotify
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractAudioOutput
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractAudioOutput>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractAudioOutput>
#endif
#endif


HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
virtual void start(QIODevice *device) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_START1 )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    obj->start ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QIODevice* start() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_START2 )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->start (  );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


//[1]virtual void start(QIODevice *device) = 0
//[2]virtual QIODevice* start() = 0

HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_START )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QABSTRACTAUDIOOUTPUT_START1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QABSTRACTAUDIOOUTPUT_START2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_STOP )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reset() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_RESET )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void suspend() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SUSPEND )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->suspend (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void resume() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_RESUME )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resume (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int bytesFree() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_BYTESFREE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bytesFree (  ) );
  }
}


/*
virtual int periodSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_PERIODSIZE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->periodSize (  ) );
  }
}


/*
virtual void setBufferSize(int value) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETBUFFERSIZE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBufferSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int bufferSize() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_BUFFERSIZE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bufferSize (  ) );
  }
}


/*
virtual void setNotifyInterval(int milliSeconds) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETNOTIFYINTERVAL )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setNotifyInterval ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int notifyInterval() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_NOTIFYINTERVAL )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->notifyInterval (  ) );
  }
}


/*
virtual qint64 processedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_PROCESSEDUSECS )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->processedUSecs (  ) );
  }
}


/*
virtual qint64 elapsedUSecs() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_ELAPSEDUSECS )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->elapsedUSecs (  ) );
  }
}


/*
virtual QAudio::Error error() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_ERROR )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
}


/*
virtual QAudio::State state() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_STATE )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
virtual void setFormat(const QAudioFormat& fmt) = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETFORMAT )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * par1 = (QAudioFormat *) _qtxhb_itemGetPtr(1);
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QAudioFormat format() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_FORMAT )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->format (  ) );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
virtual void setVolume(qreal)
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETVOLUME )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setVolume ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual qreal volume() const
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_VOLUME )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->volume (  ) );
  }
}


/*
virtual QString category() const
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_CATEGORY )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->category (  ).toLatin1().data() );
  }
}


/*
virtual void setCategory(const QString &)
*/
HB_FUNC_STATIC( QABSTRACTAUDIOOUTPUT_SETCATEGORY )
{
  QAbstractAudioOutput * obj = (QAbstractAudioOutput *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCategory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
