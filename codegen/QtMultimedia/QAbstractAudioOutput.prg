$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QAUDIOFORMAT
#endif

CLASS QAbstractAudioOutput INHERIT QObject

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

$prototype=virtual void start(QIODevice *device) = 0
$method=|void|start,start1|QIODevice *

$prototype=virtual QIODevice* start() = 0
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

$prototype=virtual void stop() = 0
$method=|void|stop|

$prototype=virtual void reset() = 0
$method=|void|reset|

$prototype=virtual void suspend() = 0
$method=|void|suspend|

$prototype=virtual void resume() = 0
$method=|void|resume|

$prototype=virtual int bytesFree() const = 0
$method=|int|bytesFree|

$prototype=virtual int periodSize() const = 0
$method=|int|periodSize|

$prototype=virtual void setBufferSize(int value) = 0
$method=|void|setBufferSize|int

$prototype=virtual int bufferSize() const = 0
$method=|int|bufferSize|

$prototype=virtual void setNotifyInterval(int milliSeconds) = 0
$method=|void|setNotifyInterval|int

$prototype=virtual int notifyInterval() const = 0
$method=|int|notifyInterval|

$prototype=virtual qint64 processedUSecs() const = 0
$method=|qint64|processedUSecs|

$prototype=virtual qint64 elapsedUSecs() const = 0
$method=|qint64|elapsedUSecs|

$prototype=virtual QAudio::Error error() const = 0
$method=|QAudio::Error|error|

$prototype=virtual QAudio::State state() const = 0
$method=|QAudio::State|state|

$prototype=virtual void setFormat(const QAudioFormat& fmt) = 0
$method=|void|setFormat|const QAudioFormat &

$prototype=virtual QAudioFormat format() const = 0
$method=|QAudioFormat|format|

$prototype=virtual void setVolume(qreal)
$method=|void|setVolume|qreal

$prototype=virtual qreal volume() const
$method=|qreal|volume|

$prototype=virtual QString category() const
$method=|QString|category|

$prototype=virtual void setCategory(const QString &)
$method=|void|setCategory|const QString &

#pragma ENDDUMP
