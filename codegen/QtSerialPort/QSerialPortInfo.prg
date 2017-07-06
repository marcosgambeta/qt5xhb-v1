$header

#include "hbclass.ch"

CLASS QSerialPortInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD swap
   METHOD portName
   METHOD systemLocation
   METHOD description
   METHOD manufacturer
   METHOD vendorIdentifier
   METHOD productIdentifier
   METHOD hasVendorIdentifier
   METHOD hasProductIdentifier
   METHOD isNull
   METHOD isBusy
   METHOD isValid
   METHOD standardBaudRates
   METHOD availablePorts

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

#include <QString>

/*
QSerialPortInfo()
*/
HB_FUNC_STATIC( QSERIALPORTINFO_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * o = new QSerialPortInfo ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QSerialPortInfo(const QSerialPort &port)
*/
HB_FUNC_STATIC( QSERIALPORTINFO_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * o = new QSerialPortInfo ( *PQSERIALPORT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QSerialPortInfo(const QString &name)
*/
HB_FUNC_STATIC( QSERIALPORTINFO_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * o = new QSerialPortInfo ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QSerialPortInfo(const QSerialPortInfo &other)
*/
HB_FUNC_STATIC( QSERIALPORTINFO_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortInfo * o = new QSerialPortInfo ( *PQSERIALPORTINFO(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

//[1]QSerialPortInfo()
//[2]QSerialPortInfo(const QSerialPort &port)
//[3]QSerialPortInfo(const QString &name)
//[4]QSerialPortInfo(const QSerialPortInfo &other)

HB_FUNC_STATIC( QSERIALPORTINFO_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSERIALPORTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSERIALPORT(1) )
  {
    HB_FUNC_EXEC( QSERIALPORTINFO_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSERIALPORTINFO_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSERIALPORTINFO(1) )
  {
    HB_FUNC_EXEC( QSERIALPORTINFO_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,1,0

/*
void swap(QSerialPortInfo &other)
*/
$method=5,1,0|void|swap|QSerialPortInfo &

/*
QString portName() const
*/
$method=5,1,0|QString|portName|

/*
QString systemLocation() const
*/
$method=5,1,0|QString|systemLocation|

/*
QString description() const
*/
$method=5,1,0|QString|description|

/*
QString manufacturer() const
*/
$method=5,1,0|QString|manufacturer|

/*
quint16 vendorIdentifier() const
*/
$method=5,1,0|quint16|vendorIdentifier|

/*
quint16 productIdentifier() const
*/
$method=5,1,0|quint16|productIdentifier|

/*
bool hasVendorIdentifier() const
*/
$method=5,1,0|bool|hasVendorIdentifier|

/*
bool hasProductIdentifier() const
*/
$method=5,1,0|bool|hasProductIdentifier|

/*
bool isNull() const
*/
$method=5,1,0|bool|isNull|

/*
bool isBusy() const
*/
$method=5,1,0|bool|isBusy|

/*
bool isValid() const
*/
$method=5,1,0|bool|isValid|

/*
static QList<qint32> standardBaudRates()
*/
HB_FUNC_STATIC( QSERIALPORTINFO_STANDARDBAUDRATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QList<qint32> list = QSerialPortInfo::standardBaudRates ();
  _qt5xhb_convert_qlist_qint32_to_array ( list );
#endif
}

/*
static QList<QSerialPortInfo> availablePorts()
*/
HB_FUNC_STATIC( QSERIALPORTINFO_AVAILABLEPORTS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QList<QSerialPortInfo> list = QSerialPortInfo::availablePorts ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QSERIALPORTINFO" );
  #else
  pDynSym = hb_dynsymFindName( "QSERIALPORTINFO" );
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
      hb_itemPutPtr( pItem, (QSerialPortInfo *) new QSerialPortInfo ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}

$extraMethods

#pragma ENDDUMP
