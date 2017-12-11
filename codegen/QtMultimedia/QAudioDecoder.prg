$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QAUDIOBUFFER
REQUEST QIODEVICE
#endif

CLASS QAudioDecoder INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD audioFormat
   METHOD bufferAvailable
   METHOD duration
   METHOD error
   METHOD errorString
   METHOD position
   METHOD read
   METHOD setAudioFormat
   METHOD setSourceDevice
   METHOD setSourceFilename
   METHOD sourceDevice
   METHOD sourceFilename
   METHOD state
   METHOD start
   METHOD stop
   METHOD hasSupport

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

$prototype=QAudioDecoder(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QAudioFormat audioFormat() const
$method=|QAudioFormat|audioFormat|

$prototype=bool bufferAvailable() const
$method=|bool|bufferAvailable|

$prototype=qint64 duration() const
$method=|qint64|duration|

$prototype=Error error() const
$method=|QAudioDecoder::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=qint64 position() const
$method=|qint64|position|

$prototype=QAudioBuffer read() const
$method=|QAudioBuffer|read|

$prototype=void setAudioFormat(const QAudioFormat & format)
$method=|void|setAudioFormat|const QAudioFormat &

$prototype=void setSourceDevice(QIODevice * device)
$method=|void|setSourceDevice|QIODevice *

$prototype=void setSourceFilename(const QString & fileName)
$method=|void|setSourceFilename|const QString &

$prototype=QIODevice * sourceDevice() const
$method=|QIODevice *|sourceDevice|

$prototype=QString sourceFilename() const
$method=|QString|sourceFilename|

$prototype=State state() const
$method=|QAudioDecoder::State|state|

$prototype=void start()
$method=|void|start|

$prototype=void stop()
$method=|void|stop|

$prototype=static QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs = QStringList())
$staticMethod=|QMultimedia::SupportEstimate|hasSupport|const QString &,const QStringList &=QStringList()

#pragma ENDDUMP
