$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAbstractAudioDeviceInfo INHERIT QObject

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

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QAudioFormat preferredFormat() const = 0
*/
HB_FUNC_STATIC( QABSTRACTAUDIODEVICEINFO_PREFERREDFORMAT )
{
  QAbstractAudioDeviceInfo * obj = (QAbstractAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->preferredFormat () );
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
    RBOOL( obj->isFormatSupported ( *PQAUDIOFORMAT(1) ) );
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
    RQSTRING( obj->deviceName () );
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
    RQSTRINGLIST( obj->supportedCodecs () );
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
    QList<int> list = obj->supportedSampleRates ();
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
    QList<int> list = obj->supportedChannelCounts ();
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
    QList<int> list = obj->supportedSampleSizes ();
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
    QList<QAudioFormat::Endian> list = obj->supportedByteOrders ();
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
    QList<QAudioFormat::SampleType> list = obj->supportedSampleTypes ();
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