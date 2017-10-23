/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraViewfinderSettingsControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isViewfinderParameterSupported
   METHOD setViewfinderParameter
   METHOD viewfinderParameter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraViewfinderSettingsControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraViewfinderSettingsControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraViewfinderSettingsControl>
#endif

HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_DELETE )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool isViewfinderParameterSupported(ViewfinderParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_ISVIEWFINDERPARAMETERSUPPORTED )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isViewfinderParameterSupported ( (QCameraViewfinderSettingsControl::ViewfinderParameter) hb_parni(1) ) );
  }
}


/*
virtual void setViewfinderParameter(ViewfinderParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_SETVIEWFINDERPARAMETER )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setViewfinderParameter ( (QCameraViewfinderSettingsControl::ViewfinderParameter) hb_parni(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QVariant viewfinderParameter(ViewfinderParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAVIEWFINDERSETTINGSCONTROL_VIEWFINDERPARAMETER )
{
  QCameraViewfinderSettingsControl * obj = (QCameraViewfinderSettingsControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->viewfinderParameter ( (QCameraViewfinderSettingsControl::ViewfinderParameter) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}



#pragma ENDDUMP
