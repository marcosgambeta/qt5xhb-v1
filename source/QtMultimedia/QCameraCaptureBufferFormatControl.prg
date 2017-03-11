/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QCameraCaptureBufferFormatControl INHERIT QMediaObject

   DATA class_id INIT Class_Id_QCameraCaptureBufferFormatControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD bufferFormat
   METHOD setBufferFormat
   METHOD supportedBufferFormats
   METHOD onBufferFormatChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraCaptureBufferFormatControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraCaptureBufferFormatControl>
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
#include <QCameraCaptureBufferFormatControl>
#endif

HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_DELETE )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QVideoFrame::PixelFormat bufferFormat() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_BUFFERFORMAT )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bufferFormat (  ) );
  }
}


/*
virtual void setBufferFormat(QVideoFrame::PixelFormat format) = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_SETBUFFERFORMAT )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setBufferFormat (  (QVideoFrame::PixelFormat) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QList<QVideoFrame::PixelFormat> supportedBufferFormats() const = 0
*/
HB_FUNC_STATIC( QCAMERACAPTUREBUFFERFORMATCONTROL_SUPPORTEDBUFFERFORMATS )
{
  QCameraCaptureBufferFormatControl * obj = (QCameraCaptureBufferFormatControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QVideoFrame::PixelFormat> list = obj->supportedBufferFormats (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}




#pragma ENDDUMP
