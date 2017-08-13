$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QAUDIOFORMAT
#endif

CLASS QAbstractAudioOutput INHERIT QObject

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void start(QIODevice *device) = 0
*/
$method=|void|start,start1|QIODevice *

/*
virtual QIODevice* start() = 0
*/
$method=|QIODevice *|start,start2|

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
$method=|void|stop|

/*
virtual void reset() = 0
*/
$method=|void|reset|

/*
virtual void suspend() = 0
*/
$method=|void|suspend|

/*
virtual void resume() = 0
*/
$method=|void|resume|

/*
virtual int bytesFree() const = 0
*/
$method=|int|bytesFree|

/*
virtual int periodSize() const = 0
*/
$method=|int|periodSize|

/*
virtual void setBufferSize(int value) = 0
*/
$method=|void|setBufferSize|int

/*
virtual int bufferSize() const = 0
*/
$method=|int|bufferSize|

/*
virtual void setNotifyInterval(int milliSeconds) = 0
*/
$method=|void|setNotifyInterval|int

/*
virtual int notifyInterval() const = 0
*/
$method=|int|notifyInterval|

/*
virtual qint64 processedUSecs() const = 0
*/
$method=|qint64|processedUSecs|

/*
virtual qint64 elapsedUSecs() const = 0
*/
$method=|qint64|elapsedUSecs|

/*
virtual QAudio::Error error() const = 0
*/
$method=|QAudio::Error|error|

/*
virtual QAudio::State state() const = 0
*/
$method=|QAudio::State|state|

/*
virtual void setFormat(const QAudioFormat& fmt) = 0
*/
$method=|void|setFormat|const QAudioFormat &

/*
virtual QAudioFormat format() const = 0
*/
$method=|QAudioFormat|format|

/*
virtual void setVolume(qreal)
*/
$method=|void|setVolume|qreal

/*
virtual qreal volume() const
*/
$method=|qreal|volume|

/*
virtual QString category() const
*/
$method=|QString|category|

/*
virtual void setCategory(const QString &)
*/
$method=|void|setCategory|const QString &

#pragma ENDDUMP
