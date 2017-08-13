$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
REQUEST QAUDIOBUFFER
REQUEST QIODEVICE
#endif

CLASS QAudioDecoder INHERIT QMediaObject

   DATA self_destruction INIT .F.

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

/*
QAudioDecoder(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QAudioFormat audioFormat() const
*/
$method=|QAudioFormat|audioFormat|

/*
bool bufferAvailable() const
*/
$method=|bool|bufferAvailable|

/*
qint64 duration() const
*/
$method=|qint64|duration|

/*
Error error() const
*/
$method=|QAudioDecoder::Error|error|

/*
QString errorString() const
*/
$method=|QString|errorString|

/*
qint64 position() const
*/
$method=|qint64|position|

/*
QAudioBuffer read() const
*/
$method=|QAudioBuffer|read|

/*
void setAudioFormat(const QAudioFormat & format)
*/
$method=|void|setAudioFormat|const QAudioFormat &

/*
void setSourceDevice(QIODevice * device)
*/
$method=|void|setSourceDevice|QIODevice *

/*
void setSourceFilename(const QString & fileName)
*/
$method=|void|setSourceFilename|const QString &

/*
QIODevice * sourceDevice() const
*/
$method=|QIODevice *|sourceDevice|

/*
QString sourceFilename() const
*/
$method=|QString|sourceFilename|

/*
State state() const
*/
$method=|QAudioDecoder::State|state|

/*
void start()
*/
$method=|void|start|

/*
void stop()
*/
$method=|void|stop|

/*
static QMultimedia::SupportEstimate hasSupport(const QString & mimeType, const QStringList & codecs = QStringList())
*/
$staticMethod=|QMultimedia::SupportEstimate|hasSupport|const QString &,const QStringList &=QStringList()

#pragma ENDDUMP
