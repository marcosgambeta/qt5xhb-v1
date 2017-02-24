/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QCameraImageCaptureControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QCameraImageCaptureControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD cancelCapture
   METHOD capture
   METHOD driveMode
   METHOD isReadyForCapture
   METHOD setDriveMode
   METHOD onError
   METHOD onImageAvailable
   METHOD onImageCaptured
   METHOD onImageExposed
   METHOD onImageMetadataAvailable
   METHOD onImageSaved
   METHOD onReadyForCaptureChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraImageCaptureControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCameraImageCaptureControl>
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

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCameraImageCaptureControl>
#endif
#endif

HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void cancelCapture() = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_CANCELCAPTURE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->cancelCapture (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int capture(const QString & fileName) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_CAPTURE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retni( obj->capture ( par1 ) );
  }
}


/*
virtual QCameraImageCapture::DriveMode driveMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_DRIVEMODE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->driveMode (  ) );
  }
}


/*
virtual bool isReadyForCapture() const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_ISREADYFORCAPTURE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isReadyForCapture (  ) );
  }
}


/*
virtual void setDriveMode(QCameraImageCapture::DriveMode mode) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGECAPTURECONTROL_SETDRIVEMODE )
{
  QCameraImageCaptureControl * obj = (QCameraImageCaptureControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setDriveMode (  (QCameraImageCapture::DriveMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
