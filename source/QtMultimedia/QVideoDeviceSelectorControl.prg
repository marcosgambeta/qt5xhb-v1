/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QVideoDeviceSelectorControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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
#include <QVideoDeviceSelectorControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QVideoDeviceSelectorControl>
#endif


HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DELETE )
{
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
}

/*
virtual int defaultDevice() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEFAULTDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->defaultDevice () );
  }
}


/*
virtual int deviceCount() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICECOUNT )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->deviceCount () );
  }
}


/*
virtual QString deviceDescription(int index) const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICEDESCRIPTION )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->deviceDescription ( PINT(1) ) ) );
  }
}


/*
virtual QString deviceName(int index) const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICENAME )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->deviceName ( PINT(1) ) ) );
  }
}


/*
virtual int selectedDevice() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_SELECTEDDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->selectedDevice () );
  }
}


/*
virtual void setSelectedDevice(int index) = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_SETSELECTEDDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSelectedDevice ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
