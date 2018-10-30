%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$prototype=explicit QMediaRecorderControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=virtual ~QMediaRecorderControl()
$deleteMethod

$prototype=virtual void applySettings() = 0
$virtualMethod=|void|applySettings|

$prototype=virtual qint64 duration() const = 0
$virtualMethod=|qint64|duration|

$prototype=virtual bool isMuted() const = 0
$virtualMethod=|bool|isMuted|

$prototype=virtual QUrl outputLocation() const = 0
$virtualMethod=|QUrl|outputLocation|

$prototype=virtual bool setOutputLocation(const QUrl & location) = 0
$virtualMethod=|bool|setOutputLocation|const QUrl &

$prototype=virtual QMediaRecorder::State state() const = 0
$virtualMethod=|QMediaRecorder::State|state|

$prototype=virtual QMediaRecorder::Status status() const = 0
$virtualMethod=|QMediaRecorder::Status|status|

$prototype=virtual qreal volume() const = 0
$virtualMethod=|qreal|volume|

$prototype=virtual void setMuted(bool muted) = 0
$virtualSlotMethod=|void|setMuted|bool

$prototype=virtual void setState(QMediaRecorder::State state) = 0
$virtualSlotMethod=|void|setState|QMediaRecorder::State

$prototype=virtual void setVolume(qreal gain) = 0
$virtualSlotMethod=|void|setVolume|qreal

$beginSignals
$signal=|actualLocationChanged(QUrl)
$signal=|durationChanged(qint64)
$signal=|error(int,QString)
$signal=|mutedChanged(bool)
$signal=|stateChanged(QMediaRecorder::State)
$signal=|statusChanged(QMediaRecorder::Status)
$signal=|volumeChanged(qreal)
$endSignals

#pragma ENDDUMP
