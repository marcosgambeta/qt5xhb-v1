/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QVideoDeviceSelectorControl INHERIT QMediaControl

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

PROCEDURE destroyObject() CLASS QVideoDeviceSelectorControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QVideoDeviceSelectorControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QVideoDeviceSelectorControl>
#endif

/*
virtual ~QVideoDeviceSelectorControl()
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DELETE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
virtual int defaultDevice() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEFAULTDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->defaultDevice() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual int deviceCount() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICECOUNT )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->deviceCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QString deviceDescription( int index ) const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICEDESCRIPTION )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->deviceDescription( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual QString deviceName( int index ) const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_DEVICENAME )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RQSTRING( obj->deviceName( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual int selectedDevice() const = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_SELECTEDDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->selectedDevice() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
virtual void setSelectedDevice( int index ) = 0
*/
HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_SETSELECTEDDEVICE )
{
  QVideoDeviceSelectorControl * obj = (QVideoDeviceSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSelectedDevice( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

void QVideoDeviceSelectorControlSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_ONDEVICESCHANGED )
{
  QVideoDeviceSelectorControlSlots_connect_signal( "devicesChanged()", "devicesChanged()" );
}

HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_ONSELECTEDDEVICECHANGED1 )
{
  QVideoDeviceSelectorControlSlots_connect_signal( "selectedDeviceChanged(int)", "selectedDeviceChanged(int)" );
}

HB_FUNC_STATIC( QVIDEODEVICESELECTORCONTROL_ONSELECTEDDEVICECHANGED2 )
{
  QVideoDeviceSelectorControlSlots_connect_signal( "selectedDeviceChanged(QString)", "selectedDeviceChanged(QString)" );
}

#pragma ENDDUMP
