%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCameraFeedbackControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QCameraFeedbackControl()
$deleteMethod

$prototype=virtual bool isEventFeedbackEnabled(EventType event) const = 0
$virtualMethod=|bool|isEventFeedbackEnabled|QCameraFeedbackControl::EventType

$prototype=virtual bool isEventFeedbackLocked(EventType event) const = 0
$virtualMethod=|bool|isEventFeedbackLocked|QCameraFeedbackControl::EventType

$prototype=virtual void resetEventFeedback(EventType event) = 0
$virtualMethod=|void|resetEventFeedback|QCameraFeedbackControl::EventType

$prototype=virtual bool setEventFeedbackEnabled(EventType event, bool enabled) = 0
$virtualMethod=|bool|setEventFeedbackEnabled|QCameraFeedbackControl::EventType,bool

$prototype=virtual bool setEventFeedbackSound(EventType event, const QString & filePath) = 0
$virtualMethod=|bool|setEventFeedbackSound|QCameraFeedbackControl::EventType,const QString &

#pragma ENDDUMP
