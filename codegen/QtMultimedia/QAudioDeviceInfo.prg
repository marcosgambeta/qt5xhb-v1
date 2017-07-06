$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QAUDIOFORMAT
#endif

CLASS QAudioDeviceInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD deviceName
   METHOD isFormatSupported
   METHOD isNull
   METHOD nearestFormat
   METHOD preferredFormat
   METHOD supportedByteOrders
   METHOD supportedChannelCounts
   METHOD supportedCodecs
   METHOD supportedSampleRates
   METHOD supportedSampleSizes
   METHOD supportedSampleTypes
   METHOD availableDevices
   METHOD defaultInputDevice
   METHOD defaultOutputDevice

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QAudioDeviceInfo ()
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW1 )
{
  QAudioDeviceInfo * o = new QAudioDeviceInfo ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QAudioDeviceInfo ( const QAudioDeviceInfo & other )
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW2 )
{
  QAudioDeviceInfo * o = new QAudioDeviceInfo ( *PQAUDIODEVICEINFO(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QAudioDeviceInfo ()
//[2]QAudioDeviceInfo ( const QAudioDeviceInfo & other )

HB_FUNC_STATIC( QAUDIODEVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QAUDIODEVICEINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQAUDIODEVICEINFO(1) )
  {
    HB_FUNC_EXEC( QAUDIODEVICEINFO_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString deviceName () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DEVICENAME )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->deviceName () );
  }
}


/*
bool isFormatSupported ( const QAudioFormat & settings ) const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_ISFORMATSUPPORTED )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFormatSupported ( *PQAUDIOFORMAT(1) ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_ISNULL )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QAudioFormat nearestFormat ( const QAudioFormat & settings ) const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_NEARESTFORMAT )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->nearestFormat ( *PQAUDIOFORMAT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
QAudioFormat preferredFormat () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_PREFERREDFORMAT )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioFormat * ptr = new QAudioFormat( obj->preferredFormat () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOFORMAT" );
  }
}


/*
QList<QAudioFormat::Endian> supportedByteOrders () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDBYTEORDERS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
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
QList<int> supportedChannelCounts () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDCHANNELCOUNTS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->supportedChannelCounts ();
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
QStringList supportedCodecs () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDCODECS )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->supportedCodecs () );
  }
}


/*
QList<int> supportedSampleRates () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLERATES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->supportedSampleRates ();
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
QList<int> supportedSampleSizes () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLESIZES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<int> list = obj->supportedSampleSizes ();
    _qt5xhb_convert_qlist_int_to_array ( list );
  }
}


/*
QList<QAudioFormat::SampleType> supportedSampleTypes () const
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_SUPPORTEDSAMPLETYPES )
{
  QAudioDeviceInfo * obj = (QAudioDeviceInfo *) _qt5xhb_itemGetPtrStackSelfItem();
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


/*
static QList<QAudioDeviceInfo> availableDevices ( QAudio::Mode mode )
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_AVAILABLEDEVICES )
{
  int par1 = hb_parni(1);
  QList<QAudioDeviceInfo> list = QAudioDeviceInfo::availableDevices ( (QAudio::Mode) par1 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QAUDIODEVICEINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QAUDIODEVICEINFO" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QAudioDeviceInfo *) new QAudioDeviceInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QAudioDeviceInfo defaultInputDevice ()
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DEFAULTINPUTDEVICE )
{
  QAudioDeviceInfo * ptr = new QAudioDeviceInfo( QAudioDeviceInfo::defaultInputDevice () );
  _qt5xhb_createReturnClass ( ptr, "QAUDIODEVICEINFO" );
}


/*
static QAudioDeviceInfo defaultOutputDevice ()
*/
HB_FUNC_STATIC( QAUDIODEVICEINFO_DEFAULTOUTPUTDEVICE )
{
  QAudioDeviceInfo * ptr = new QAudioDeviceInfo( QAudioDeviceInfo::defaultOutputDevice () );
  _qt5xhb_createReturnClass ( ptr, "QAUDIODEVICEINFO" );
}



$extraMethods

#pragma ENDDUMP
