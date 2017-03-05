/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QCameraFeedbackControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QCameraFeedbackControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD isEventFeedbackEnabled
   METHOD isEventFeedbackLocked
   METHOD resetEventFeedback
   METHOD setEventFeedbackEnabled
   METHOD setEventFeedbackSound
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraFeedbackControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraFeedbackControl>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraFeedbackControl>
#endif

HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_DELETE )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isEventFeedbackEnabled(EventType event) const = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_ISEVENTFEEDBACKENABLED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isEventFeedbackEnabled (  (QCameraFeedbackControl::EventType) par1 ) );
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
    int par1 = hb_parni(1);
    hb_retl( obj->isEventFeedbackLocked (  (QCameraFeedbackControl::EventType) par1 ) );
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
    int par1 = hb_parni(1);
    obj->resetEventFeedback (  (QCameraFeedbackControl::EventType) par1 );
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
    int par1 = hb_parni(1);
    hb_retl( obj->setEventFeedbackEnabled (  (QCameraFeedbackControl::EventType) par1, (bool) hb_parl(2) ) );
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
    int par1 = hb_parni(1);
    QString par2 = QLatin1String( hb_parc(2) );
    hb_retl( obj->setEventFeedbackSound (  (QCameraFeedbackControl::EventType) par1, par2 ) );
  }
}



#pragma ENDDUMP
