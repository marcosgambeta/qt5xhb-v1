/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QRANGELIST
REQUEST QOUTPUTRANGELIST
REQUEST QSENSORFILTER
REQUEST QSENSORREADING
#endif

CLASS QSensor INHERIT QObject

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD identifier
   METHOD setIdentifier
   METHOD type
   METHOD connectToBackend
   METHOD isConnectedToBackend
   METHOD isBusy
   METHOD setActive
   METHOD isActive
   METHOD isAlwaysOn
   METHOD setAlwaysOn
   METHOD skipDuplicates
   METHOD setSkipDuplicates
   METHOD availableDataRates
   METHOD dataRate
   METHOD setDataRate
   METHOD outputRanges
   METHOD outputRange
   METHOD setOutputRange
   METHOD description
   METHOD error
   METHOD addFilter
   METHOD removeFilter
   METHOD filters
   METHOD reading
   METHOD isFeatureSupported
   METHOD axesOrientationMode
   METHOD setAxesOrientationMode
   METHOD currentOrientation
   METHOD setCurrentOrientation
   METHOD userOrientation
   METHOD setUserOrientation
   METHOD maxBufferSize
   METHOD setMaxBufferSize
   METHOD efficientBufferSize
   METHOD setEfficientBufferSize
   METHOD bufferSize
   METHOD setBufferSize
   METHOD start
   METHOD stop
   METHOD sensorTypes
   METHOD sensorsForType
   METHOD defaultSensorForType

   METHOD onBusyChanged
   METHOD onActiveChanged
   METHOD onReadingChanged
   METHOD onSensorError
   METHOD onAvailableSensorsChanged
   METHOD onAlwaysOnChanged
   METHOD onDataRateChanged
   METHOD onSkipDuplicatesChanged
   METHOD onAxesOrientationModeChanged
   METHOD onCurrentOrientationChanged
   METHOD onUserOrientationChanged
   METHOD onMaxBufferSizeChanged
   METHOD onEfficientBufferSizeChanged
   METHOD onBufferSizeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSensor
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensor>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QSensor>
#endif
#endif

/*
QSensor(const QByteArray &type, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qt5xhb_itemGetPtr(2);
  QSensor * o = new QSensor ( *par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QSENSOR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QByteArray identifier() const
*/
HB_FUNC_STATIC( QSENSOR_IDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->identifier (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}


/*
void setIdentifier(const QByteArray &identifier)
*/
HB_FUNC_STATIC( QSENSOR_SETIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    obj->setIdentifier ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QByteArray type() const
*/
HB_FUNC_STATIC( QSENSOR_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->type (  ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}


/*
bool connectToBackend()
*/
HB_FUNC_STATIC( QSENSOR_CONNECTTOBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->connectToBackend (  ) );
  }
#endif
}


/*
bool isConnectedToBackend() const
*/
HB_FUNC_STATIC( QSENSOR_ISCONNECTEDTOBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isConnectedToBackend (  ) );
  }
#endif
}


/*
bool isBusy() const
*/
HB_FUNC_STATIC( QSENSOR_ISBUSY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isBusy (  ) );
  }
#endif
}


/*
void setActive(bool active)
*/
HB_FUNC_STATIC( QSENSOR_SETACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setActive ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isActive() const
*/
HB_FUNC_STATIC( QSENSOR_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isActive (  ) );
  }
#endif
}


/*
bool isAlwaysOn() const
*/
HB_FUNC_STATIC( QSENSOR_ISALWAYSON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAlwaysOn (  ) );
  }
#endif
}


/*
void setAlwaysOn(bool alwaysOn)
*/
HB_FUNC_STATIC( QSENSOR_SETALWAYSON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlwaysOn ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool skipDuplicates() const
*/
HB_FUNC_STATIC( QSENSOR_SKIPDUPLICATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->skipDuplicates (  ) );
  }
#endif
}


/*
void setSkipDuplicates(bool skipDuplicates)
*/
HB_FUNC_STATIC( QSENSOR_SETSKIPDUPLICATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSkipDuplicates ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qrangelist availableDataRates() const
*/
HB_FUNC_STATIC( QSENSOR_AVAILABLEDATARATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qrangelist * ptr = new qrangelist( obj->availableDataRates (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRANGELIST" );
  }
#endif
}


/*
int dataRate() const
*/
HB_FUNC_STATIC( QSENSOR_DATARATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->dataRate (  ) );
  }
#endif
}


/*
void setDataRate(int rate)
*/
HB_FUNC_STATIC( QSENSOR_SETDATARATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDataRate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qoutputrangelist outputRanges() const
*/
HB_FUNC_STATIC( QSENSOR_OUTPUTRANGES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qoutputrangelist * ptr = new qoutputrangelist( obj->outputRanges (  ) );
    _qt5xhb_createReturnClass ( ptr, "QOUTPUTRANGELIST" );
  }
#endif
}


/*
int outputRange() const
*/
HB_FUNC_STATIC( QSENSOR_OUTPUTRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->outputRange (  ) );
  }
#endif
}


/*
void setOutputRange(int index)
*/
HB_FUNC_STATIC( QSENSOR_SETOUTPUTRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOutputRange ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString description() const
*/
HB_FUNC_STATIC( QSENSOR_DESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->description (  ).toLatin1().data() );
  }
#endif
}


/*
int error() const
*/
HB_FUNC_STATIC( QSENSOR_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error (  ) );
  }
#endif
}


/*
void addFilter(QSensorFilter *filter)
*/
HB_FUNC_STATIC( QSENSOR_ADDFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorFilter * par1 = (QSensorFilter *) _qt5xhb_itemGetPtr(1);
    obj->addFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void removeFilter(QSensorFilter *filter)
*/
HB_FUNC_STATIC( QSENSOR_REMOVEFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorFilter * par1 = (QSensorFilter *) _qt5xhb_itemGetPtr(1);
    obj->removeFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QList<QSensorFilter*> filters() const
*/
HB_FUNC_STATIC( QSENSOR_FILTERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSensorFilter *> list = obj->filters (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSENSORFILTER" );
    #else
    pDynSym = hb_dynsymFindName( "QSENSORFILTER" );
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
        hb_itemPutPtr( pItem, (QSensorFilter *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
QSensorReading *reading() const
*/
HB_FUNC_STATIC( QSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorReading * ptr = obj->reading (  );
    _qt5xhb_createReturnClass ( ptr, "QSENSORREADING" );
  }
#endif
}


/*
bool isFeatureSupported(Feature feature) const
*/
HB_FUNC_STATIC( QSENSOR_ISFEATURESUPPORTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isFeatureSupported (  (QSensor::Feature) par1 ) );
  }
#endif
}


/*
AxesOrientationMode axesOrientationMode() const
*/
HB_FUNC_STATIC( QSENSOR_AXESORIENTATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->axesOrientationMode (  ) );
  }
#endif
}


/*
void setAxesOrientationMode(AxesOrientationMode axesOrientationMode)
*/
HB_FUNC_STATIC( QSENSOR_SETAXESORIENTATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setAxesOrientationMode (  (QSensor::AxesOrientationMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int currentOrientation() const
*/
HB_FUNC_STATIC( QSENSOR_CURRENTORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentOrientation (  ) );
  }
#endif
}


/*
void setCurrentOrientation(int currentOrientation)
*/
HB_FUNC_STATIC( QSENSOR_SETCURRENTORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentOrientation ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int userOrientation() const
*/
HB_FUNC_STATIC( QSENSOR_USERORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->userOrientation (  ) );
  }
#endif
}


/*
void setUserOrientation(int userOrientation)
*/
HB_FUNC_STATIC( QSENSOR_SETUSERORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUserOrientation ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int maxBufferSize() const
*/
HB_FUNC_STATIC( QSENSOR_MAXBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->maxBufferSize (  ) );
  }
#endif
}


/*
void setMaxBufferSize(int maxBufferSize)
*/
HB_FUNC_STATIC( QSENSOR_SETMAXBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaxBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int efficientBufferSize() const
*/
HB_FUNC_STATIC( QSENSOR_EFFICIENTBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->efficientBufferSize (  ) );
  }
#endif
}


/*
void setEfficientBufferSize(int efficientBufferSize)
*/
HB_FUNC_STATIC( QSENSOR_SETEFFICIENTBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEfficientBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int bufferSize() const
*/
HB_FUNC_STATIC( QSENSOR_BUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bufferSize (  ) );
  }
#endif
}


/*
void setBufferSize(int bufferSize)
*/
HB_FUNC_STATIC( QSENSOR_SETBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool start()
*/
HB_FUNC_STATIC( QSENSOR_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->start (  ) );
  }
#endif
}


/*
void stop()
*/
HB_FUNC_STATIC( QSENSOR_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static QList<QByteArray> sensorTypes()
*/
HB_FUNC_STATIC( QSENSOR_SENSORTYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QList<QByteArray> list = QSensor::sensorTypes (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}


/*
static QList<QByteArray> sensorsForType(const QByteArray &type)
*/
HB_FUNC_STATIC( QSENSOR_SENSORSFORTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QList<QByteArray> list = QSensor::sensorsForType ( *par1 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
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
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}


/*
static QByteArray defaultSensorForType(const QByteArray &type)
*/
HB_FUNC_STATIC( QSENSOR_DEFAULTSENSORFORTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QByteArray * ptr = new QByteArray( QSensor::defaultSensorForType ( *par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}




#pragma ENDDUMP
