$header

#include "hbclass.ch"

CLASS QCameraFeedbackControl INHERIT QMediaControl

   METHOD delete
   METHOD isEventFeedbackEnabled
   METHOD isEventFeedbackLocked
   METHOD resetEventFeedback
   METHOD setEventFeedbackEnabled
   METHOD setEventFeedbackSound

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

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
