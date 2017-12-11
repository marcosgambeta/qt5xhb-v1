$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QIODEVICE
#endif

CLASS QAudioOutput INHERIT QObject

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

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAudioOutput(const QAudioFormat & format = QAudioFormat(), QObject * parent = 0)
$constructor=|new1|const QAudioFormat &=QAudioFormat(),QObject *=0

$prototype=QAudioOutput(const QAudioDeviceInfo & audioDevice, const QAudioFormat & format = QAudioFormat(), QObject * parent = 0)
$constructor=|new2|const QAudioDeviceInfo &,const QAudioFormat &=QAudioFormat(),QObject *=0

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

$deleteMethod

$prototype=int bufferSize() const
$method=|int|bufferSize|

$prototype=int bytesFree() const
$method=|int|bytesFree|

$prototype=QString category() const
$method=|QString|category|

$prototype=qint64 elapsedUSecs() const
$method=|qint64|elapsedUSecs|

$prototype=QAudio::Error error() const
$method=|QAudio::Error|error|

$prototype=QAudioFormat format() const
$method=|QAudioFormat|format|

$prototype=int notifyInterval() const
$method=|int|notifyInterval|

$prototype=int periodSize() const
$method=|int|periodSize|

$prototype=qint64 processedUSecs() const
$method=|qint64|processedUSecs|

$prototype=void reset()
$method=|void|reset|

$prototype=void resume()
$method=|void|resume|

$prototype=void setBufferSize(int value)
$method=|void|setBufferSize|int

$prototype=void setCategory(const QString & category)
$method=|void|setCategory|const QString &

$prototype=void setNotifyInterval(int ms)
$method=|void|setNotifyInterval|int

$prototype=void setVolume(qreal volume)
$method=|void|setVolume|qreal

$prototype=void start(QIODevice * device)
$method=|void|start,start1|QIODevice *

$prototype=QIODevice * start()
$method=|QIODevice *|start,start2|

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

$prototype=QAudio::State state() const
$method=|QAudio::State|state|

$prototype=void stop()
$method=|void|stop|

$prototype=void suspend()
$method=|void|suspend|

$prototype=qreal volume() const
$method=|qreal|volume|

#pragma ENDDUMP
