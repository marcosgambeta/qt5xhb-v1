$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QMediaRecorderControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD applySettings
   METHOD duration
   METHOD isMuted
   METHOD outputLocation
   METHOD setOutputLocation
   METHOD state
   METHOD status
   METHOD volume
   METHOD setMuted
   METHOD setState
   METHOD setVolume

   METHOD onActualLocationChanged
   METHOD onDurationChanged
   METHOD onError
   METHOD onMutedChanged
   METHOD onStateChanged
   METHOD onStatusChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$deleteMethod

/*
virtual void applySettings() = 0
*/
$method=|void|applySettings|

/*
virtual qint64 duration() const = 0
*/
$method=|qint64|duration|

/*
virtual bool isMuted() const = 0
*/
$method=|bool|isMuted|

/*
virtual QUrl outputLocation() const = 0
*/
$method=|QUrl|outputLocation|

/*
virtual bool setOutputLocation(const QUrl & location) = 0
*/
$method=|bool|setOutputLocation|const QUrl &

/*
virtual QMediaRecorder::State state() const = 0
*/
$method=|QMediaRecorder::State|state|

/*
virtual QMediaRecorder::Status status() const = 0
*/
$method=|QMediaRecorder::Status|status|

/*
virtual qreal volume() const = 0
*/
$method=|qreal|volume|

/*
virtual void setMuted(bool muted) = 0
*/
$method=|void|setMuted|bool

/*
virtual void setState(QMediaRecorder::State state) = 0
*/
$method=|void|setState|QMediaRecorder::State

/*
virtual void setVolume(qreal gain) = 0
*/
$method=|void|setVolume|qreal

#pragma ENDDUMP
