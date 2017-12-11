$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QAUDIOBUFFER
REQUEST QIODEVICE
#endif

CLASS QAudioDecoderControl INHERIT QMediaControl

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QAudioFormat audioFormat() const = 0
$method=|QAudioFormat|audioFormat|

$prototype=virtual bool bufferAvailable() const = 0
$method=|bool|bufferAvailable|

$prototype=virtual qint64 duration() const = 0
$method=|qint64|duration|

$prototype=virtual qint64 position() const = 0
$method=|qint64|position|

$prototype=virtual QAudioBuffer read() = 0
$method=|QAudioBuffer|read|

$prototype=virtual void setAudioFormat(const QAudioFormat & format) = 0
$method=|void|setAudioFormat|const QAudioFormat &

$prototype=virtual void setSourceDevice(QIODevice * device) = 0
$method=|void|setSourceDevice|QIODevice *

$prototype=virtual void setSourceFilename(const QString & fileName) = 0
$method=|void|setSourceFilename|const QString &

$prototype=virtual QIODevice * sourceDevice() const = 0
$method=|QIODevice *|sourceDevice|

$prototype=virtual QString sourceFilename() const = 0
$method=|QString|sourceFilename|

$prototype=virtual void start() = 0
$method=|void|start|

$prototype=virtual QAudioDecoder::State state() const = 0
$method=|QAudioDecoder::State|state|

$prototype=virtual void stop() = 0
$method=|void|stop|

#pragma ENDDUMP
