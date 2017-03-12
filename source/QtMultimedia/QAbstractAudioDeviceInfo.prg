/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAbstractAudioDeviceInfo INHERIT QObject

   DATA class_id INIT Class_Id_QAbstractAudioDeviceInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD preferredFormat
   METHOD isFormatSupported
   METHOD deviceName
   METHOD supportedCodecs
   METHOD supportedSampleRates
   METHOD supportedChannelCounts
   METHOD supportedSampleSizes
   METHOD supportedByteOrders
   METHOD supportedSampleTypes
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractAudioDeviceInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractAudioDeviceInfo>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractAudioDeviceInfo>
#endif


HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_DELETE )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QAudioFormat preferredFormat() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_PREFERREDFORMAT )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->preferredFormat (  ) );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
virtual bool isFormatSupported(const QAudioFormat &format) const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_ISFORMATSUPPORTED )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * par1 = (QAudioFormat *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->isFormatSupported ( *par1 ) );
  }
}


/*
virtual QString deviceName() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_DEVICENAME )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->deviceName (  ).toLatin1().data() );
  }
}


/*
virtual QStringList supportedCodecs() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_SUPPORTEDCODECS )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedCodecs (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QList<int> supportedSampleRates() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_SUPPORTEDSAMPLERATES )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->supportedSampleRates (  );
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
virtual QList<int> supportedChannelCounts() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_SUPPORTEDCHANNELCOUNTS )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->supportedChannelCounts (  );
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
virtual QList<int> supportedSampleSizes() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_SUPPORTEDSAMPLESIZES )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->supportedSampleSizes (  );
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
virtual QList<QAudioFormat::Endian> supportedByteOrders() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_SUPPORTEDBYTEORDERS )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QAudioFormat::Endian> list = obj->supportedByteOrders (  );
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


/*
virtual QList<QAudioFormat::SampleType> supportedSampleTypes() = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_SUPPORTEDSAMPLETYPES )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QAudioFormat::SampleType> list = obj->supportedSampleTypes (  );
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