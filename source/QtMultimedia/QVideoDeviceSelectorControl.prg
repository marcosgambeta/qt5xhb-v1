/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QVideoDeviceSelectorControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QVideoDeviceSelectorControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD defaultDevice
   METHOD deviceCount
   METHOD deviceDescription
   METHOD deviceName
   METHOD selectedDevice
   METHOD setSelectedDevice
   METHOD onDevicesChanged
   METHOD onSelectedDeviceChanged1
   METHOD onSelectedDeviceChanged2
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoDeviceSelectorControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QVideoDeviceSelectorControl>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QVideoDeviceSelectorControl>
#endif
#endif


HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int defaultDevice() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEFAULTDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultDevice (  ) );
  }
}


/*
virtual int deviceCount() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICECOUNT )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->deviceCount (  ) );
  }
}


/*
virtual QString deviceDescription(int index) const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICEDESCRIPTION )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->deviceDescription ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
virtual QString deviceName(int index) const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICENAME )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->deviceName ( (int) hb_parni(1) ).toLatin1().data() );
  }
}


/*
virtual int selectedDevice() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_SELECTEDDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectedDevice (  ) );
  }
}


/*
virtual void setSelectedDevice(int index) = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_SETSELECTEDDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSelectedDevice ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
