/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QCameraFlashControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QCameraFlashControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD flashMode
   METHOD isFlashModeSupported
   METHOD isFlashReady
   METHOD setFlashMode
   METHOD onFlashReady
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraFlashControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraFlashControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraFlashControl>
#endif

HB_FUNC_STATIC( QCAMERAFLASHCONTROL_DELETE )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QCameraExposure::FlashModes flashMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_FLASHMODE )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flashMode (  ) );
  }
}


/*
virtual bool isFlashModeSupported(QCameraExposure::FlashModes mode) const = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_ISFLASHMODESUPPORTED )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isFlashModeSupported (  (QCameraExposure::FlashModes) par1 ) );
  }
}


/*
virtual bool isFlashReady() const = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_ISFLASHREADY )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isFlashReady (  ) );
  }
}


/*
virtual void setFlashMode(QCameraExposure::FlashModes mode) = 0
*/
HB_FUNC_STATIC( QCAMERAFLASHCONTROL_SETFLASHMODE )
{
  QCameraFlashControl * obj = (QCameraFlashControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlashMode (  (QCameraExposure::FlashModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
