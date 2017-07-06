$header

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual int defaultDevice() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEFAULTDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->defaultDevice () );
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
    RINT( obj->deviceCount () );
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
    RQSTRING( obj->deviceDescription ( PINT(1) ) );
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
    RQSTRING( obj->deviceName ( PINT(1) ) );
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
    RINT( obj->selectedDevice () );
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