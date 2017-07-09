$header

#include "hbclass.ch"

CLASS QBluetoothAddress

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD clear
   METHOD toUInt64
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <Qt>

$includes=5,2,0

/*
QBluetoothAddress()
*/
$internalConstructor=5,2,0|new1|

/*
QBluetoothAddress(quint64 address)
*/
$internalConstructor=5,2,0|new2|quint64

/*
QBluetoothAddress(const QString &address)
*/
$internalConstructor=5,2,0|new3|const QString &

/*
QBluetoothAddress(const QBluetoothAddress &other)
*/
$internalConstructor=5,2,0|new4|const QBluetoothAddress &

//[1]QBluetoothAddress()
//[2]QBluetoothAddress(quint64 address)
//[3]QBluetoothAddress(const QString &address)
//[4]QBluetoothAddress(const QBluetoothAddress &other)

HB_FUNC_STATIC( QBLUETOOTHADDRESS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothAddress_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBluetoothAddress_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QBluetoothAddress_new3();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHADDRESS(1) )
  {
    QBluetoothAddress_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
bool isNull() const
*/
$method=5,2,0|bool|isNull|

/*
void clear()
*/
$method=5,2,0|void|clear|

/*
quint64 toUInt64() const
*/
$method=5,2,0|quint64|toUInt64|

/*
QString toString() const
*/
$method=5,2,0|QString|toString|

$extraMethods

#pragma ENDDUMP
