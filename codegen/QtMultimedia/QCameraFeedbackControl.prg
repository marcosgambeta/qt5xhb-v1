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
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_ISEVENTFEEDBACKENABLED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEventFeedbackEnabled ( (QCameraFeedbackControl::EventType) hb_parni(1) ) );
  }
}


/*
virtual bool isEventFeedbackLocked(EventType event) const = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_ISEVENTFEEDBACKLOCKED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEventFeedbackLocked ( (QCameraFeedbackControl::EventType) hb_parni(1) ) );
  }
}


/*
virtual void resetEventFeedback(EventType event) = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_RESETEVENTFEEDBACK )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resetEventFeedback ( (QCameraFeedbackControl::EventType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool setEventFeedbackEnabled(EventType event, bool enabled) = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_SETEVENTFEEDBACKENABLED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setEventFeedbackEnabled ( (QCameraFeedbackControl::EventType) hb_parni(1), PBOOL(2) ) );
  }
}


/*
virtual bool setEventFeedbackSound(EventType event, const QString & filePath) = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_SETEVENTFEEDBACKSOUND )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setEventFeedbackSound ( (QCameraFeedbackControl::EventType) hb_parni(1), PQSTRING(2) ) );
  }
}



#pragma ENDDUMP
