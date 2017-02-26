/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QAUDIOBUFFER
REQUEST QIODEVICE
#endif

CLASS QAudioDecoderControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QAudioDecoderControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD audioFormat
   METHOD bufferAvailable
   METHOD duration
   METHOD position
   METHOD read
   METHOD setAudioFormat
   METHOD setSourceDevice
   METHOD setSourceFilename
   METHOD sourceDevice
   METHOD sourceFilename
   METHOD start
   METHOD state
   METHOD stop
   METHOD onBufferAvailableChanged
   METHOD onBufferReady
   METHOD onDurationChanged
   METHOD onError
   METHOD onFinished
   METHOD onFormatChanged
   METHOD onPositionChanged
   METHOD onSourceChanged
   METHOD onStateChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAudioDecoderControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAudioDecoderControl>
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
#include <QAudioDecoderControl>
#endif
#endif


HB_FUNC_STATIC( QAUDIODECODERCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAudioDecoderControl * obj = (QAudioDecoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QAudioFormat audioFormat() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_AUDIOFORMAT )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->audioFormat (  ) );
    _qt4xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
virtual bool bufferAvailable() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_BUFFERAVAILABLE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bufferAvailable (  ) );
  }
}


/*
virtual qint64 duration() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_DURATION )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->duration (  ) );
  }
}


/*
virtual qint64 position() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_POSITION )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position (  ) );
  }
}


/*
virtual QAudioBuffer read() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_READ )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioBuffer * ptr = new QAudioBuffer( obj->read (  ) );
    _qt4xhb_createReturnClass ( ptr, "QAUDIOBUFFER" );
  }
}


/*
virtual void setAudioFormat(const QAudioFormat & format) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETAUDIOFORMAT )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * par1 = (QAudioFormat *) _qtxhb_itemGetPtr(1);
    obj->setAudioFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSourceDevice(QIODevice * device) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETSOURCEDEVICE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
    obj->setSourceDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSourceFilename(const QString & fileName) = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SETSOURCEFILENAME )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setSourceFilename ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QIODevice * sourceDevice() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SOURCEDEVICE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->sourceDevice (  );
    _qt4xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
virtual QString sourceFilename() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_SOURCEFILENAME )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->sourceFilename (  ).toLatin1().data() );
  }
}


/*
virtual void start() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_START )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QAudioDecoder::State state() const = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_STATE )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state (  ) );
  }
}


/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QAUDIODECODERCONTROL_STOP )
{
  QAudioDecoderControl * obj = (QAudioDecoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
