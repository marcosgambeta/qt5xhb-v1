$header

#include "hbclass.ch"

CLASS QCameraFeedbackControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

/*
virtual bool isEventFeedbackEnabled(EventType event) const = 0
*/
$method=|bool|isEventFeedbackEnabled|QCameraFeedbackControl::EventType

/*
virtual bool isEventFeedbackLocked(EventType event) const = 0
*/
$method=|bool|isEventFeedbackLocked|QCameraFeedbackControl::EventType

/*
virtual void resetEventFeedback(EventType event) = 0
*/
$method=|void|resetEventFeedback|QCameraFeedbackControl::EventType

/*
virtual bool setEventFeedbackEnabled(EventType event, bool enabled) = 0
*/
$method=|bool|setEventFeedbackEnabled|QCameraFeedbackControl::EventType,bool

/*
virtual bool setEventFeedbackSound(EventType event, const QString & filePath) = 0
*/
$method=|bool|setEventFeedbackSound|QCameraFeedbackControl::EventType,const QString &

#pragma ENDDUMP
