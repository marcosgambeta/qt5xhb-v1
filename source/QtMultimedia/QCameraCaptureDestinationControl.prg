/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QCameraCaptureDestinationControl INHERIT QMediaObject

   DATA class_id INIT Class_Id_QCameraCaptureDestinationControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD captureDestination
   METHOD isCaptureDestinationSupported
   METHOD setCaptureDestination
   METHOD onCaptureDestinationChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraCaptureDestinationControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCameraCaptureDestinationControl>
#endif
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCameraCaptureDestinationControl>
#endif
#endif

HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
virtual QCameraImageCapture::CaptureDestinations captureDestination() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_CAPTUREDESTINATION )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->captureDestination (  ) );
  }
}


/*
virtual bool isCaptureDestinationSupported(QCameraImageCapture::CaptureDestinations destination) const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_ISCAPTUREDESTINATIONSUPPORTED )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isCaptureDestinationSupported (  (QCameraImageCapture::CaptureDestinations) par1 ) );
  }
}


/*
virtual void setCaptureDestination(QCameraImageCapture::CaptureDestinations destination) = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREDESTINATIONCONTROL_SETCAPTUREDESTINATION )
{
  QCameraCaptureDestinationControl * obj = (QCameraCaptureDestinationControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCaptureDestination (  (QCameraImageCapture::CaptureDestinations) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
